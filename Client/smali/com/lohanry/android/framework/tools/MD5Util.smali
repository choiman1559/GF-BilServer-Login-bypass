.class public Lcom/lohanry/android/framework/tools/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "plaintext"    # Ljava/lang/String;

    .prologue
    .line 11
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 12
    :cond_8
    const-string v10, ""

    .line 34
    :goto_a
    return-object v10

    .line 14
    :cond_b
    const/16 v10, 0x10

    new-array v3, v10, [C

    fill-array-data v3, :array_52

    .line 16
    .local v3, "hexDigits":[C
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 18
    .local v0, "btInput":[B
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 20
    .local v8, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 24
    .local v7, "md":[B
    array-length v4, v7

    .line 25
    .local v4, "j":I
    mul-int/lit8 v10, v4, 0x2

    new-array v9, v10, [C

    .line 26
    .local v9, "str":[C
    const/4 v5, 0x0

    .line 27
    .local v5, "k":I
    array-length v11, v7

    const/4 v10, 0x0

    move v6, v5

    .end local v5    # "k":I
    .local v6, "k":I
    :goto_2c
    if-ge v10, v11, :cond_45

    aget-byte v1, v7, v10

    .line 28
    .local v1, "byte0":B
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    ushr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v12, v3, v12

    aput-char v12, v9, v6

    .line 29
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "k":I
    .restart local v6    # "k":I
    and-int/lit8 v12, v1, 0xf

    aget-char v12, v3, v12

    aput-char v12, v9, v5

    .line 27
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    .line 31
    .end local v1    # "byte0":B
    :cond_45
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([C)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4a} :catch_4b

    goto :goto_a

    .line 32
    .end local v0    # "btInput":[B
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v7    # "md":[B
    .end local v8    # "mdInst":Ljava/security/MessageDigest;
    .end local v9    # "str":[C
    :catch_4b
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    const-string v10, ""

    goto :goto_a

    .line 14
    :array_52
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
