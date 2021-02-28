.class Lcom/alipay/sdk/encrypt/d;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljavax/crypto/Cipher;Ljava/lang/String;)[B
    .registers 10

    const/4 v7, 0x0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    :cond_18
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    new-array v3, v1, [B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v4, v2

    const/4 v0, 0x1

    :goto_23
    if-ge v0, v4, :cond_41

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v5, v0, v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    if-lt v0, v1, :cond_3e

    aget-byte v5, v2, v0

    aget-byte v6, v2, v7

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_41
    invoke-static {v2, v1, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method
