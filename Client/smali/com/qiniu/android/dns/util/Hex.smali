.class public final Lcom/qiniu/android/dns/util/Hex;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/util/Hex$HexDecodeException;
    }
.end annotation


# static fields
.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/qiniu/android/dns/util/Hex;->DIGITS_LOWER:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/qiniu/android/dns/util/Hex;->DIGITS_UPPER:[C

    return-void

    nop

    :array_12
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

    :array_26
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex([C)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qiniu/android/dns/util/Hex$HexDecodeException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/qiniu/android/dns/util/Hex$HexDecodeException;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Lcom/qiniu/android/dns/util/Hex$HexDecodeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    shr-int/lit8 v1, v2, 0x1

    new-array v3, v1, [B

    move v1, v0

    :goto_13
    if-ge v0, v2, :cond_30

    aget-char v4, p0, v0

    invoke-static {v4, v0}, Lcom/qiniu/android/dns/util/Hex;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v0, v0, 0x1

    aget-char v5, p0, v0

    invoke-static {v5, v0}, Lcom/qiniu/android/dns/util/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_30
    return-object v3
.end method

.method public static encodeHex([B)[C
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/qiniu/android/dns/util/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .registers 3

    if-eqz p1, :cond_9

    sget-object v0, Lcom/qiniu/android/dns/util/Hex;->DIGITS_LOWER:[C

    :goto_4
    invoke-static {p0, v0}, Lcom/qiniu/android/dns/util/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Lcom/qiniu/android/dns/util/Hex;->DIGITS_UPPER:[C

    goto :goto_4
.end method

.method private static encodeHex([B[C)[C
    .registers 8

    const/4 v0, 0x0

    array-length v2, p0

    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_22

    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v3, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-object v3
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/qiniu/android/dns/util/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method protected static toDigit(CI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qiniu/android/dns/util/Hex$HexDecodeException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    new-instance v0, Lcom/qiniu/android/dns/util/Hex$HexDecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qiniu/android/dns/util/Hex$HexDecodeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    return v0
.end method
