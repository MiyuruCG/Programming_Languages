BEGIN
    INT num := 20;
    INT i = 0;
    IF num < 10 THEN 
        print((num, new line))
    ELSE 
        print(("greater than 10", new line))
    FI

    FOR i
    WHILE i < 10
    DO 
        print((i, new line))
    OD
END