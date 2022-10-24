int I2c(float timeout)
{
    int a[10], i;

    float start = micros();
    while (TWSR != 0x60)
    {
        TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWEA);
        while (!(TWCR & (1 << TWINT)))
        {
            if (start + timeout < micros())
                return 0;
        };
    }

    TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWEA);
    while (!(TWCR & (1 << TWINT)))
    {
        if (start + timeout < micros())
            return 0;
    };

    TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWEA);
    while (!(TWCR & (1 << TWINT)))
    {
        if (start + timeout < micros())
            return 0;
    };

    TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWEA);
    while (!(TWCR & (1 << TWINT)))
    {
        if (start + timeout < micros())
            return 0;
    };

    TWDR = *(uint8_t *)(&distance);
    TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWEA);
    while (!(TWCR & (1 << TWINT)))
    {
        if (start + timeout < micros())
            return 0;
    };

    TWDR = *((uint8_t *)(&distance) + 1);
    TWCR = (1 << TWINT) | (1 << TWEN);
    while (!(TWCR & (1 << TWINT)))
    {
        if (start + timeout < micros())
            return 0;
    };
    return (1);
}