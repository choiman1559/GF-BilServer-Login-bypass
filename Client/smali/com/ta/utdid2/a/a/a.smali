.class public Lcom/ta/utdid2/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/ta/utdid2/a/a/a;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ta/utdid2/a/a/a;->a([B[B)[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_14

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_13

    invoke-static {v1}, Lcom/ta/utdid2/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0

    :catch_14
    move-exception v1

    move-object v1, v0

    goto :goto_d
.end method

.method private static a([B)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_19

    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/ta/utdid2/a/a/a;->a(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .registers 5

    const-string v0, "0123456789ABCDEF"

    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static a()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a([B)[B

    move-result-object v0

    return-object v0

    :array_c
    .array-data 1
        0x21t
        0x53t
        -0x32t
        -0x59t
        -0x54t
        -0x72t
        0x50t
        0x63t
        0xat
        0x3ft
        0x16t
        -0x41t
        -0xbt
        0x1et
        0x65t
        -0x76t
    .end array-data
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_24

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    return-object v2
.end method

.method private static a([B[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/ta/utdid2/a/a/a;->b()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/ta/utdid2/a/a/a;->a()[B

    move-result-object v0

    invoke-static {p0}, Lcom/ta/utdid2/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/a;->b([B[B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b()[B
    .registers 2

    :try_start_0
    const-string v0, "IUQSvE6r1TfFPdPEjfklLw=="

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/b;->decode([BI)[B

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a([B)[B
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    :cond_15
    const/16 v0, 0x10

    new-array v0, v0, [B

    goto :goto_13
.end method

.method private static b([B[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/ta/utdid2/a/a/a;->b()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
