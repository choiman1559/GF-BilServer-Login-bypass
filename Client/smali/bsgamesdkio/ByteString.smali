.class public Lbsgamesdkio/ByteString;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lbsgamesdkio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lbsgamesdkio/ByteString;

.field static final a:[C


# instance fields
.field final b:[B

.field transient c:I

.field transient d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lbsgamesdkio/ByteString;->a:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lbsgamesdkio/ByteString;->of([B)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkio/ByteString;->EMPTY:Lbsgamesdkio/ByteString;

    return-void

    nop

    :array_14
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

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkio/ByteString;->b:[B

    return-void
.end method

.method private static a(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/String;I)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v0, v2, :cond_2c

    if-ne v1, p1, :cond_b

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1d

    const/16 v4, 0xd

    if-ne v3, v4, :cond_22

    :cond_1d
    const v4, 0xfffd

    if-ne v3, v4, :cond_24

    :cond_22
    const/4 v0, -0x1

    goto :goto_a

    :cond_24
    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_6

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_a
.end method

.method private a(Ljava/lang/String;)Lbsgamesdkio/ByteString;
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/ByteString;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkio/ByteString;->of([B)Lbsgamesdkio/ByteString;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static decodeHex(Ljava/lang/String;)Lbsgamesdkio/ByteString;
    .registers 5

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hex == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_34
    array-length v2, v1

    if-ge v0, v2, :cond_56

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lbsgamesdkio/ByteString;->a(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lbsgamesdkio/ByteString;->a(C)I

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_56
    invoke-static {v1}, Lbsgamesdkio/ByteString;->of([B)Lbsgamesdkio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lbsgamesdkio/ByteString;

    sget-object v1, Lbsgamesdkio/r;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lbsgamesdkio/ByteString;-><init>([B)V

    iput-object p0, v0, Lbsgamesdkio/ByteString;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs of([B)Lbsgamesdkio/ByteString;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v1, Lbsgamesdkio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lbsgamesdkio/ByteString;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method a(Lbsgamesdkio/c;)V
    .registers 5

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lbsgamesdkio/c;->b([BII)Lbsgamesdkio/c;

    return-void
.end method

.method public base64()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    invoke-static {v0}, Lbsgamesdkio/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lbsgamesdkio/ByteString;)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lbsgamesdkio/ByteString;->size()I

    move-result v4

    invoke-virtual {p1}, Lbsgamesdkio/ByteString;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_10
    if-ge v3, v6, :cond_28

    invoke-virtual {p0, v3}, Lbsgamesdkio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v3}, Lbsgamesdkio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_23

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_23
    if-ge v7, v8, :cond_26

    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25

    :cond_28
    if-ne v4, v5, :cond_2c

    move v0, v2

    goto :goto_25

    :cond_2c
    if-lt v4, v5, :cond_25

    move v0, v1

    goto :goto_25
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lbsgamesdkio/ByteString;

    invoke-virtual {p0, p1}, Lbsgamesdkio/ByteString;->compareTo(Lbsgamesdkio/ByteString;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    :goto_4
    return v1

    :cond_5
    instance-of v0, p1, Lbsgamesdkio/ByteString;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Lbsgamesdkio/ByteString;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    iget-object v3, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v3, v3

    if-ne v0, v3, :cond_25

    check-cast p1, Lbsgamesdkio/ByteString;

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    iget-object v3, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v3, v3

    invoke-virtual {p1, v2, v0, v2, v3}, Lbsgamesdkio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_4

    :cond_25
    move v0, v2

    goto :goto_23
.end method

.method public getByte(I)B
    .registers 3

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lbsgamesdkio/ByteString;->c:I

    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lbsgamesdkio/ByteString;->c:I

    goto :goto_4
.end method

.method public hex()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    iget-object v3, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v4, v3

    move v1, v0

    :goto_c
    if-ge v0, v4, :cond_29

    aget-byte v5, v3, v0

    add-int/lit8 v6, v1, 0x1

    sget-object v7, Lbsgamesdkio/ByteString;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v1

    add-int/lit8 v1, v6, 0x1

    sget-object v7, Lbsgamesdkio/ByteString;->a:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public rangeEquals(ILbsgamesdkio/ByteString;II)Z
    .registers 6

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lbsgamesdkio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .registers 6

    if-ltz p1, :cond_18

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_18

    if-ltz p3, :cond_18

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_18

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    invoke-static {v0, p1, p2, p3, p4}, Lbsgamesdkio/r;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public sha1()Lbsgamesdkio/ByteString;
    .registers 2

    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lbsgamesdkio/ByteString;->a(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lbsgamesdkio/ByteString;
    .registers 2

    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lbsgamesdkio/ByteString;->a(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lbsgamesdkio/ByteString;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lbsgamesdkio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v1, p1, v1, v0}, Lbsgamesdkio/ByteString;->rangeEquals(ILbsgamesdkio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public substring(II)Lbsgamesdkio/ByteString;
    .registers 7

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v0, v0

    if-le p2, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    sub-int v0, p2, p1

    if-gez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    if-nez p1, :cond_45

    iget-object v1, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v1, v1

    if-ne p2, v1, :cond_45

    :goto_44
    return-object p0

    :cond_45
    new-array v1, v0, [B

    iget-object v2, p0, Lbsgamesdkio/ByteString;->b:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lbsgamesdkio/ByteString;

    invoke-direct {p0, v1}, Lbsgamesdkio/ByteString;-><init>([B)V

    goto :goto_44
.end method

.method public toAsciiLowercase()Lbsgamesdkio/ByteString;
    .registers 7

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v0, v0

    if-ge v1, v0, :cond_3e

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    aget-byte v3, v0, v1

    if-lt v3, v4, :cond_13

    if-le v3, v5, :cond_17

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_39

    aget-byte v2, v0, v1

    if-lt v2, v4, :cond_30

    if-le v2, v5, :cond_33

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_33
    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_30

    :cond_39
    new-instance p0, Lbsgamesdkio/ByteString;

    invoke-direct {p0, v0}, Lbsgamesdkio/ByteString;-><init>([B)V

    :cond_3e
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/16 v3, 0x40

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v0, v0

    if-nez v0, :cond_b

    const-string v0, "[size=0]"

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lbsgamesdkio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lbsgamesdkio/ByteString;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_68

    iget-object v0, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v0, v0

    if-gt v0, v3, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbsgamesdkio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4, v3}, Lbsgamesdkio/ByteString;->substring(II)Lbsgamesdkio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_68
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, "\\r"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/ByteString;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a
.end method

.method public utf8()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lbsgamesdkio/ByteString;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsgamesdkio/ByteString;->b:[B

    sget-object v2, Lbsgamesdkio/r;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lbsgamesdkio/ByteString;->d:Ljava/lang/String;

    goto :goto_4
.end method
