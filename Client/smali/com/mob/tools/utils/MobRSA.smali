.class public Lcom/mob/tools/utils/MobRSA;
.super Ljava/lang/Object;
.source "MobRSA.java"


# instance fields
.field private keySize:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "keySize"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    .line 15
    return-void
.end method

.method private decodeBlock([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 8
    .param p1, "source"    # [B
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "modulus"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 130
    .local v0, "cipherMessage":Ljava/math/BigInteger;
    invoke-virtual {v0, p2, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 131
    .local v2, "sourceMessage":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 132
    .local v1, "decodeBytes":[B
    invoke-direct {p0, v1}, Lcom/mob/tools/utils/MobRSA;->recoveryPaddingBlock([B)[B

    move-result-object v3

    return-object v3
.end method

.method private encodeBlock([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B
    .registers 13
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "key"    # Ljava/math/BigInteger;
    .param p5, "modulus"    # Ljava/math/BigInteger;
    .param p6, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    move-object v3, p1

    .line 80
    .local v3, "source":[B
    array-length v4, p1

    if-ne v4, p3, :cond_6

    if-eqz p2, :cond_c

    .line 81
    :cond_6
    new-array v3, p3, [B

    .line 82
    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :cond_c
    invoke-direct {p0, v3, p6}, Lcom/mob/tools/utils/MobRSA;->paddingBlock([BI)[B

    move-result-object v2

    .line 86
    .local v2, "padding":[B
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 87
    .local v1, "message":Ljava/math/BigInteger;
    invoke-virtual {v1, p5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_23

    .line 88
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "the message must be smaller than the modulue"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_23
    invoke-virtual {v1, p4, p5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 93
    .local v0, "encrypt":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private paddingBlock([BI)[B
    .registers 9
    .param p1, "source"    # [B
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    array-length v2, p1

    add-int/lit8 v3, p2, -0x1

    if-le v2, v3, :cond_f

    .line 98
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Message too large"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_f
    new-array v1, p2, [B

    .line 101
    .local v1, "padding":[B
    aput-byte v5, v1, v4

    .line 102
    array-length v0, p1

    .line 103
    .local v0, "len":I
    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 104
    const/4 v2, 0x2

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 105
    const/4 v2, 0x3

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 106
    const/4 v2, 0x4

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 107
    sub-int v2, p2, v0

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    return-object v1
.end method

.method private recoveryPaddingBlock([B)[B
    .registers 7
    .param p1, "padding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    aget-byte v2, p1, v4

    if-eq v2, v3, :cond_e

    .line 137
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Not RSA Block"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_e
    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v1, v2, v3

    .line 140
    .local v1, "len":I
    new-array v0, v1, [B

    .line 141
    .local v0, "data":[B
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v0
.end method


# virtual methods
.method public decode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 11
    .param p1, "source"    # [B
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "modulus"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    .local v4, "dis":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_f
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-lez v6, :cond_26

    .line 116
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 117
    .local v2, "blockSize":I
    new-array v5, v2, [B

    .line 118
    .local v5, "en":[B
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 119
    invoke-direct {p0, v5, p2, p3}, Lcom/mob/tools/utils/MobRSA;->decodeBlock([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 120
    .local v3, "cache":[B
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_f

    .line 122
    .end local v2    # "blockSize":I
    .end local v3    # "cache":[B
    .end local v5    # "en":[B
    :cond_26
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 123
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 124
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method public encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 15
    .param p1, "source"    # [B
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "modulus"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    div-int/lit8 v6, v0, 0x8

    .line 62
    .local v6, "blockSize":I
    add-int/lit8 v10, v6, -0xb

    .line 63
    .local v10, "inBlockSize":I
    const/4 v2, 0x0

    .line 64
    .local v2, "offSet":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .local v9, "dos":Ljava/io/DataOutputStream;
    :goto_11
    array-length v0, p1

    if-le v0, v2, :cond_2b

    .line 67
    array-length v0, p1

    sub-int/2addr v0, v2

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "inputLen":I
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/mob/tools/utils/MobRSA;->encodeBlock([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v8

    .line 69
    .local v8, "cache":[B
    array-length v0, v8

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 71
    add-int/2addr v2, v3

    .line 72
    goto :goto_11

    .line 73
    .end local v3    # "inputLen":I
    .end local v8    # "cache":[B
    :cond_2b
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 74
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public genKeys()[Ljava/math/BigInteger;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 19
    .local v3, "random":Ljava/security/SecureRandom;
    iget v4, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v3}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v1

    .line 20
    .local v1, "p":Ljava/math/BigInteger;
    iget v4, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v3}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v2

    .line 21
    .local v2, "q":Ljava/math/BigInteger;
    iget v4, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4, v3}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    .line 22
    .local v0, "e":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, v2, v0}, Lcom/mob/tools/utils/MobRSA;->genKeys(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    return-object v4
.end method

.method public genKeys(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 10
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "e"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_10

    .line 27
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "e must be larger than 1"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v4

    .line 30
    :cond_10
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/math/BigInteger;

    .line 33
    .local v2, "keys":[Ljava/math/BigInteger;
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 36
    .local v3, "n":Ljava/math/BigInteger;
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 37
    .local v1, "f":Ljava/math/BigInteger;
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_33

    .line 38
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "e must be smaller than (p-1)*(q-1)"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_33
    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-eqz v4, :cond_47

    .line 42
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "e must be coprime with (p-1)*(q-1)"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_47
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 49
    .local v0, "d":Ljava/math/BigInteger;
    const/4 v4, 0x0

    aput-object p3, v2, v4

    .line 52
    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 55
    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 57
    return-object v2
.end method
