.class public Lcom/ta/utdid2/a/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/a/a/f$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Lcom/ta/utdid2/a/a/f$a;
    .registers 10

    const/16 v8, 0x100

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_44

    new-instance v1, Lcom/ta/utdid2/a/a/f$a;

    invoke-direct {v1, v0}, Lcom/ta/utdid2/a/a/f$a;-><init>(Lcom/ta/utdid2/a/a/f$1;)V

    move v3, v2

    :goto_c
    if-ge v3, v8, :cond_15

    iget-object v4, v1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_15
    iput v2, v1, Lcom/ta/utdid2/a/a/f$a;->x:I

    iput v2, v1, Lcom/ta/utdid2/a/a/f$a;->y:I

    move v3, v2

    move v4, v2

    :goto_1b
    if-ge v2, v8, :cond_43

    :try_start_1d
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, v1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0x100

    iget-object v5, v1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v5, v5, v2

    iget-object v6, v1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    iget-object v7, v1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v7, v7, v3

    aput v7, v6, v2

    iget-object v6, v1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aput v5, v6, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/2addr v4, v5
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_45

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_43
    move-object v0, v1

    :cond_44
    :goto_44
    return-object v0

    :catch_45
    move-exception v1

    goto :goto_44
.end method

.method public static a([B)[B
    .registers 2

    if-eqz p0, :cond_f

    const-string v0, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Lcom/ta/utdid2/a/a/f$a;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p0, v0}, Lcom/ta/utdid2/a/a/f;->a([BLcom/ta/utdid2/a/a/f$a;)[B

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static a([BLcom/ta/utdid2/a/a/f$a;)[B
    .registers 8

    if-eqz p0, :cond_44

    if-eqz p1, :cond_44

    iget v2, p1, Lcom/ta/utdid2/a/a/f$a;->x:I

    iget v1, p1, Lcom/ta/utdid2/a/a/f$a;->y:I

    const/4 v0, 0x0

    :goto_9
    array-length v3, p0

    if-ge v0, v3, :cond_3f

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x100

    iget-object v3, p1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    rem-int/lit16 v1, v1, 0x100

    iget-object v3, p1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    iget-object v5, p1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v5, v5, v1

    aput v5, v4, v2

    iget-object v4, p1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aput v3, v4, v1

    iget-object v3, p1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x100

    aget-byte v4, p0, v0

    iget-object v5, p1, Lcom/ta/utdid2/a/a/f$a;->d:[I

    aget v3, v5, v3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_3f
    iput v2, p1, Lcom/ta/utdid2/a/a/f$a;->x:I

    iput v1, p1, Lcom/ta/utdid2/a/a/f$a;->y:I

    :goto_43
    return-object p0

    :cond_44
    const/4 p0, 0x0

    goto :goto_43
.end method
