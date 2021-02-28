.class public Lcom/sunborn/gameplatform/channel/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sunborn/gameplatform/channel/MD5;->HEX_DIGITS:[C

    return-void

    :array_a
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

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 24
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 25
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 28
    .local v2, "messageDigest":[B
    invoke-static {v2}, Lcom/sunborn/gameplatform/channel/MD5;->toHexString([B)Ljava/lang/String;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v3

    .line 32
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "messageDigest":[B
    :goto_15
    return-object v3

    .line 29
    :catch_16
    move-exception v1

    .line 30
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 32
    const-string v3, ""

    goto :goto_15
.end method

.method public static final sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "text":Ljava/lang/String;
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 40
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 41
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 43
    .local v2, "messageDigest":[B
    invoke-static {v2}, Lcom/sunborn/gameplatform/channel/MD5;->toHexString([B)Ljava/lang/String;
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v4

    .line 47
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "messageDigest":[B
    .end local v3    # "text":Ljava/lang/String;
    :goto_26
    return-object v4

    .line 44
    :catch_27
    move-exception v1

    .line 45
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 47
    const-string v4, ""

    goto :goto_26
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 5
    .param p0, "b"    # [B

    .prologue
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_27

    .line 15
    sget-object v2, Lcom/sunborn/gameplatform/channel/MD5;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    sget-object v2, Lcom/sunborn/gameplatform/channel/MD5;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 18
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
