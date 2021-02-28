.class public Lorg/apache/commons/lang3/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FFFF:[Z

.field private static final FFFT:[Z

.field private static final FFTF:[Z

.field private static final FFTT:[Z

.field private static final FTFF:[Z

.field private static final FTFT:[Z

.field private static final FTTF:[Z

.field private static final FTTT:[Z

.field private static final TFFF:[Z

.field private static final TFFT:[Z

.field private static final TFTF:[Z

.field private static final TFTT:[Z

.field private static final TTFF:[Z

.field private static final TTFT:[Z

.field private static final TTTF:[Z

.field private static final TTTT:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 66
    const-class v0, Lorg/apache/commons/lang3/Conversion;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_7d

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lorg/apache/commons/lang3/Conversion;->$assertionsDisabled:Z

    .line 68
    new-array v0, v1, [Z

    fill-array-data v0, :array_80

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    .line 69
    new-array v0, v1, [Z

    fill-array-data v0, :array_86

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    .line 70
    new-array v0, v1, [Z

    fill-array-data v0, :array_8c

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    .line 71
    new-array v0, v1, [Z

    fill-array-data v0, :array_92

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    .line 72
    new-array v0, v1, [Z

    fill-array-data v0, :array_98

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    .line 73
    new-array v0, v1, [Z

    fill-array-data v0, :array_9e

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    .line 74
    new-array v0, v1, [Z

    fill-array-data v0, :array_a4

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    .line 75
    new-array v0, v1, [Z

    fill-array-data v0, :array_aa

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    .line 76
    new-array v0, v1, [Z

    fill-array-data v0, :array_b0

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    .line 77
    new-array v0, v1, [Z

    fill-array-data v0, :array_b6

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    .line 78
    new-array v0, v1, [Z

    fill-array-data v0, :array_bc

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    .line 79
    new-array v0, v1, [Z

    fill-array-data v0, :array_c2

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    .line 80
    new-array v0, v1, [Z

    fill-array-data v0, :array_c8

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    .line 81
    new-array v0, v1, [Z

    fill-array-data v0, :array_ce

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    .line 82
    new-array v0, v1, [Z

    fill-array-data v0, :array_d4

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    .line 83
    new-array v0, v1, [Z

    fill-array-data v0, :array_da

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    return-void

    .line 66
    :cond_7d
    const/4 v0, 0x0

    goto :goto_a

    .line 68
    nop

    :array_80
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 69
    :array_86
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 70
    :array_8c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 71
    :array_92
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 72
    :array_98
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 73
    :array_9e
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 74
    :array_a4
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 75
    :array_aa
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 76
    :array_b0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 77
    :array_b6
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 78
    :array_bc
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 79
    :array_c2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 80
    :array_c8
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 81
    :array_ce
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 82
    :array_d4
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 83
    :array_da
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryBeMsb0ToHexDigit([Z)C
    .registers 2
    .param p0, "src"    # [Z

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryBeMsb0ToHexDigit([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryBeMsb0ToHexDigit([ZI)C
    .registers 10
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 442
    array-length v3, p0

    if-nez v3, :cond_f

    .line 443
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot convert an empty array."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 445
    :cond_f
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int v0, v3, p1

    .line 446
    .local v0, "beSrcPos":I
    add-int/lit8 v3, v0, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 447
    .local v2, "srcLen":I
    new-array v1, v4, [Z

    .line 448
    .local v1, "paddedSrc":[Z
    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v3, v2

    rsub-int/lit8 v4, v2, 0x4

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    move-object p0, v1

    .line 450
    const/4 p1, 0x0

    .line 451
    aget-boolean v3, p0, p1

    if-eqz v3, :cond_73

    .line 452
    array-length v3, p0

    if-le v3, v7, :cond_52

    aget-boolean v3, p0, v7

    if-eqz v3, :cond_52

    .line 453
    array-length v3, p0

    if-le v3, v6, :cond_45

    aget-boolean v3, p0, v6

    if-eqz v3, :cond_45

    .line 454
    array-length v3, p0

    if-le v3, v5, :cond_42

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_42

    const/16 v3, 0x66

    .line 472
    :goto_41
    return v3

    .line 454
    :cond_42
    const/16 v3, 0x65

    goto :goto_41

    .line 456
    :cond_45
    array-length v3, p0

    if-le v3, v5, :cond_4f

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_4f

    const/16 v3, 0x64

    goto :goto_41

    :cond_4f
    const/16 v3, 0x63

    goto :goto_41

    .line 458
    :cond_52
    array-length v3, p0

    if-le v3, v6, :cond_66

    aget-boolean v3, p0, v6

    if-eqz v3, :cond_66

    .line 459
    array-length v3, p0

    if-le v3, v5, :cond_63

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_63

    const/16 v3, 0x62

    goto :goto_41

    :cond_63
    const/16 v3, 0x61

    goto :goto_41

    .line 461
    :cond_66
    array-length v3, p0

    if-le v3, v5, :cond_70

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_70

    const/16 v3, 0x39

    goto :goto_41

    :cond_70
    const/16 v3, 0x38

    goto :goto_41

    .line 463
    :cond_73
    array-length v3, p0

    if-le v3, v7, :cond_9b

    aget-boolean v3, p0, v7

    if-eqz v3, :cond_9b

    .line 464
    array-length v3, p0

    if-le v3, v6, :cond_8e

    aget-boolean v3, p0, v6

    if-eqz v3, :cond_8e

    .line 465
    array-length v3, p0

    if-le v3, v5, :cond_8b

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_8b

    const/16 v3, 0x37

    goto :goto_41

    :cond_8b
    const/16 v3, 0x36

    goto :goto_41

    .line 467
    :cond_8e
    array-length v3, p0

    if-le v3, v5, :cond_98

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_98

    const/16 v3, 0x35

    goto :goto_41

    :cond_98
    const/16 v3, 0x34

    goto :goto_41

    .line 469
    :cond_9b
    array-length v3, p0

    if-le v3, v6, :cond_af

    aget-boolean v3, p0, v6

    if-eqz v3, :cond_af

    .line 470
    array-length v3, p0

    if-le v3, v5, :cond_ac

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_ac

    const/16 v3, 0x33

    goto :goto_41

    :cond_ac
    const/16 v3, 0x32

    goto :goto_41

    .line 472
    :cond_af
    array-length v3, p0

    if-le v3, v5, :cond_b9

    aget-boolean v3, p0, v5

    if-eqz v3, :cond_b9

    const/16 v3, 0x31

    goto :goto_41

    :cond_b9
    const/16 v3, 0x30

    goto :goto_41
.end method

.method public static binaryToByte([ZIBII)B
    .registers 13
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # B
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    const/4 v6, 0x1

    .line 1023
    array-length v5, p0

    if-nez v5, :cond_6

    if-eqz p1, :cond_8

    :cond_6
    if-nez p4, :cond_9

    .line 1036
    .end local p2    # "dstInit":B
    :cond_8
    :goto_8
    return p2

    .line 1026
    .restart local p2    # "dstInit":B
    :cond_9
    add-int/lit8 v5, p4, -0x1

    add-int/2addr v5, p3

    const/16 v7, 0x8

    if-lt v5, v7, :cond_18

    .line 1027
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "nBools-1+dstPos is greater or equal to than 8"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1029
    :cond_18
    move v3, p2

    .line 1030
    .local v3, "out":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, p4, :cond_33

    .line 1031
    add-int v4, v1, p3

    .line 1032
    .local v4, "shift":I
    add-int v5, v1, p1

    aget-boolean v5, p0, v5

    if-eqz v5, :cond_31

    move v5, v6

    :goto_25
    shl-int v0, v5, v4

    .line 1033
    .local v0, "bits":I
    shl-int v2, v6, v4

    .line 1034
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-byte v3, v5

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1032
    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_31
    const/4 v5, 0x0

    goto :goto_25

    .end local v4    # "shift":I
    :cond_33
    move p2, v3

    .line 1036
    goto :goto_8
.end method

.method public static binaryToHexDigit([Z)C
    .registers 2
    .param p0, "src"    # [Z

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigit([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryToHexDigit([ZI)C
    .registers 4
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .prologue
    .line 312
    array-length v0, p0

    if-nez v0, :cond_b

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert an empty array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_b
    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_5f

    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_5f

    .line 316
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_40

    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_40

    .line 317
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_36

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_36

    .line 318
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_33

    const/16 v0, 0x66

    .line 336
    :goto_32
    return v0

    .line 318
    :cond_33
    const/16 v0, 0x65

    goto :goto_32

    .line 320
    :cond_36
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_3d

    const/16 v0, 0x64

    goto :goto_32

    :cond_3d
    const/16 v0, 0x63

    goto :goto_32

    .line 322
    :cond_40
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_55

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_55

    .line 323
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_52

    const/16 v0, 0x62

    goto :goto_32

    :cond_52
    const/16 v0, 0x61

    goto :goto_32

    .line 325
    :cond_55
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_5c

    const/16 v0, 0x39

    goto :goto_32

    :cond_5c
    const/16 v0, 0x38

    goto :goto_32

    .line 327
    :cond_5f
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_89

    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_89

    .line 328
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_7f

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7f

    .line 329
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_7c

    const/16 v0, 0x37

    goto :goto_32

    :cond_7c
    const/16 v0, 0x36

    goto :goto_32

    .line 331
    :cond_7f
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_86

    const/16 v0, 0x35

    goto :goto_32

    :cond_86
    const/16 v0, 0x34

    goto :goto_32

    .line 333
    :cond_89
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_9e

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_9e

    .line 334
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_9b

    const/16 v0, 0x33

    goto :goto_32

    :cond_9b
    const/16 v0, 0x32

    goto :goto_32

    .line 336
    :cond_9e
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_a5

    const/16 v0, 0x31

    goto :goto_32

    :cond_a5
    const/16 v0, 0x30

    goto :goto_32
.end method

.method public static binaryToHexDigitMsb0_4bits([Z)C
    .registers 2
    .param p0, "src"    # [Z

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigitMsb0_4bits([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryToHexDigitMsb0_4bits([ZI)C
    .registers 5
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .prologue
    .line 376
    array-length v0, p0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1f

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length>8: src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1f
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_48

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length-srcPos<4: src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_48
    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_88

    .line 383
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_6e

    .line 384
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_64

    .line 385
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_61

    const/16 v0, 0x66

    .line 403
    :goto_60
    return v0

    .line 385
    :cond_61
    const/16 v0, 0x37

    goto :goto_60

    .line 387
    :cond_64
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_6b

    const/16 v0, 0x62

    goto :goto_60

    :cond_6b
    const/16 v0, 0x33

    goto :goto_60

    .line 389
    :cond_6e
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7e

    .line 390
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_7b

    const/16 v0, 0x64

    goto :goto_60

    :cond_7b
    const/16 v0, 0x35

    goto :goto_60

    .line 392
    :cond_7e
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_85

    const/16 v0, 0x39

    goto :goto_60

    :cond_85
    const/16 v0, 0x31

    goto :goto_60

    .line 394
    :cond_88
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_a8

    .line 395
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_9e

    .line 396
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_9b

    const/16 v0, 0x65

    goto :goto_60

    :cond_9b
    const/16 v0, 0x36

    goto :goto_60

    .line 398
    :cond_9e
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_a5

    const/16 v0, 0x61

    goto :goto_60

    :cond_a5
    const/16 v0, 0x32

    goto :goto_60

    .line 400
    :cond_a8
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_b8

    .line 401
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_b5

    const/16 v0, 0x63

    goto :goto_60

    :cond_b5
    const/16 v0, 0x34

    goto :goto_60

    .line 403
    :cond_b8
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_bf

    const/16 v0, 0x38

    goto :goto_60

    :cond_bf
    const/16 v0, 0x30

    goto :goto_60
.end method

.method public static binaryToInt([ZIIII)I
    .registers 13
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    const/4 v6, 0x1

    .line 953
    array-length v5, p0

    if-nez v5, :cond_6

    if-eqz p1, :cond_8

    :cond_6
    if-nez p4, :cond_9

    .line 966
    .end local p2    # "dstInit":I
    :cond_8
    :goto_8
    return p2

    .line 956
    .restart local p2    # "dstInit":I
    :cond_9
    add-int/lit8 v5, p4, -0x1

    add-int/2addr v5, p3

    const/16 v7, 0x20

    if-lt v5, v7, :cond_18

    .line 957
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "nBools-1+dstPos is greater or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 959
    :cond_18
    move v3, p2

    .line 960
    .local v3, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, p4, :cond_33

    .line 961
    add-int v4, v1, p3

    .line 962
    .local v4, "shift":I
    add-int v5, v1, p1

    aget-boolean v5, p0, v5

    if-eqz v5, :cond_31

    move v5, v6

    :goto_25
    shl-int v0, v5, v4

    .line 963
    .local v0, "bits":I
    shl-int v2, v6, v4

    .line 964
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int v3, v5, v0

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 962
    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_31
    const/4 v5, 0x0

    goto :goto_25

    .end local v4    # "shift":I
    :cond_33
    move p2, v3

    .line 966
    goto :goto_8
.end method

.method public static binaryToLong([ZIJII)J
    .registers 16
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nBools"    # I

    .prologue
    .line 918
    array-length v8, p0

    if-nez v8, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p5, :cond_8

    .line 931
    .end local p2    # "dstInit":J
    :cond_7
    :goto_7
    return-wide p2

    .line 921
    .restart local p2    # "dstInit":J
    :cond_8
    add-int/lit8 v8, p5, -0x1

    add-int/2addr v8, p4

    const/16 v9, 0x40

    if-lt v8, v9, :cond_17

    .line 922
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "nBools-1+dstPos is greater or equal to than 64"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 924
    :cond_17
    move-wide v6, p2

    .line 925
    .local v6, "out":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, p5, :cond_37

    .line 926
    add-int v3, v2, p4

    .line 927
    .local v3, "shift":I
    add-int v8, v2, p1

    aget-boolean v8, p0, v8

    if-eqz v8, :cond_34

    const-wide/16 v8, 0x1

    :goto_25
    shl-long v0, v8, v3

    .line 928
    .local v0, "bits":J
    const-wide/16 v8, 0x1

    shl-long v4, v8, v3

    .line 929
    .local v4, "mask":J
    const-wide/16 v8, -0x1

    xor-long/2addr v8, v4

    and-long/2addr v8, v6

    or-long v6, v8, v0

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 927
    .end local v0    # "bits":J
    .end local v4    # "mask":J
    :cond_34
    const-wide/16 v8, 0x0

    goto :goto_25

    .end local v3    # "shift":I
    :cond_37
    move-wide p2, v6

    .line 931
    goto :goto_7
.end method

.method public static binaryToShort([ZISII)S
    .registers 13
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    const/4 v6, 0x1

    .line 988
    array-length v5, p0

    if-nez v5, :cond_6

    if-eqz p1, :cond_8

    :cond_6
    if-nez p4, :cond_9

    .line 1001
    .end local p2    # "dstInit":S
    :cond_8
    :goto_8
    return p2

    .line 991
    .restart local p2    # "dstInit":S
    :cond_9
    add-int/lit8 v5, p4, -0x1

    add-int/2addr v5, p3

    const/16 v7, 0x10

    if-lt v5, v7, :cond_18

    .line 992
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "nBools-1+dstPos is greater or equal to than 16"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 994
    :cond_18
    move v3, p2

    .line 995
    .local v3, "out":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, p4, :cond_33

    .line 996
    add-int v4, v1, p3

    .line 997
    .local v4, "shift":I
    add-int v5, v1, p1

    aget-boolean v5, p0, v5

    if-eqz v5, :cond_31

    move v5, v6

    :goto_25
    shl-int v0, v5, v4

    .line 998
    .local v0, "bits":I
    shl-int v2, v6, v4

    .line 999
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-short v3, v5

    .line 995
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 997
    .end local v0    # "bits":I
    .end local v2    # "mask":I
    :cond_31
    const/4 v5, 0x0

    goto :goto_25

    .end local v4    # "shift":I
    :cond_33
    move p2, v3

    .line 1001
    goto :goto_8
.end method

.method public static byteArrayToInt([BIIII)I
    .registers 12
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .prologue
    .line 717
    array-length v5, p0

    if-nez v5, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    .line 730
    .end local p2    # "dstInit":I
    :cond_7
    :goto_7
    return p2

    .line 720
    .restart local p2    # "dstInit":I
    :cond_8
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, p3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_19

    .line 721
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nBytes-1)*8+dstPos is greater or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 723
    :cond_19
    move v3, p2

    .line 724
    .local v3, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, p4, :cond_35

    .line 725
    mul-int/lit8 v5, v1, 0x8

    add-int v4, v5, p3

    .line 726
    .local v4, "shift":I
    add-int v5, v1, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int v0, v5, v4

    .line 727
    .local v0, "bits":I
    const/16 v5, 0xff

    shl-int v2, v5, v4

    .line 728
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int v3, v5, v0

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    .end local v4    # "shift":I
    :cond_35
    move p2, v3

    .line 730
    goto :goto_7
.end method

.method public static byteArrayToLong([BIJII)J
    .registers 20
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nBytes"    # I

    .prologue
    .line 682
    array-length v10, p0

    if-nez v10, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p5, :cond_8

    .line 695
    .end local p2    # "dstInit":J
    :cond_7
    :goto_7
    return-wide p2

    .line 685
    .restart local p2    # "dstInit":J
    :cond_8
    add-int/lit8 v10, p5, -0x1

    mul-int/lit8 v10, v10, 0x8

    add-int v10, v10, p4

    const/16 v11, 0x40

    if-lt v10, v11, :cond_1a

    .line 686
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "(nBytes-1)*8+dstPos is greater or equal to than 64"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 688
    :cond_1a
    move-wide/from16 v8, p2

    .line 689
    .local v8, "out":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    move/from16 v0, p5

    if-ge v4, v0, :cond_3c

    .line 690
    mul-int/lit8 v10, v4, 0x8

    add-int v5, v10, p4

    .line 691
    .local v5, "shift":I
    const-wide/16 v10, 0xff

    add-int v12, v4, p1

    aget-byte v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    shl-long v2, v10, v5

    .line 692
    .local v2, "bits":J
    const-wide/16 v10, 0xff

    shl-long v6, v10, v5

    .line 693
    .local v6, "mask":J
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v10, v8

    or-long v8, v10, v2

    .line 689
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .end local v2    # "bits":J
    .end local v5    # "shift":I
    .end local v6    # "mask":J
    :cond_3c
    move-wide/from16 p2, v8

    .line 695
    goto :goto_7
.end method

.method public static byteArrayToShort([BISII)S
    .registers 12
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .prologue
    .line 752
    array-length v5, p0

    if-nez v5, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p4, :cond_8

    .line 765
    .end local p2    # "dstInit":S
    :cond_7
    :goto_7
    return p2

    .line 755
    .restart local p2    # "dstInit":S
    :cond_8
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, p3

    const/16 v6, 0x10

    if-lt v5, v6, :cond_19

    .line 756
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nBytes-1)*8+dstPos is greater or equal to than 16"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 758
    :cond_19
    move v3, p2

    .line 759
    .local v3, "out":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, p4, :cond_35

    .line 760
    mul-int/lit8 v5, v1, 0x8

    add-int v4, v5, p3

    .line 761
    .local v4, "shift":I
    add-int v5, v1, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int v0, v5, v4

    .line 762
    .local v0, "bits":I
    const/16 v5, 0xff

    shl-int v2, v5, v4

    .line 763
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-short v3, v5

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    .end local v4    # "shift":I
    :cond_35
    move p2, v3

    .line 765
    goto :goto_7
.end method

.method public static byteArrayToUuid([BI)Ljava/util/UUID;
    .registers 12
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1560
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_13

    .line 1561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need at least 16 bytes for UUID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1563
    :cond_13
    new-instance v6, Ljava/util/UUID;

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v8

    add-int/lit8 v1, p1, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v0

    invoke-direct {v6, v8, v9, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v6
.end method

.method public static byteToBinary(BI[ZII)[Z
    .registers 9
    .param p0, "src"    # B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    .line 1503
    if-nez p4, :cond_3

    .line 1513
    :cond_2
    return-object p2

    .line 1506
    :cond_3
    add-int/lit8 v2, p4, -0x1

    add-int/2addr v2, p1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_12

    .line 1507
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+srcPos is greater or equal to than 8"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1509
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, p4, :cond_2

    .line 1510
    add-int v1, v0, p1

    .line 1511
    .local v1, "shift":I
    add-int v3, p3, v0

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    :goto_20
    aput-boolean v2, p2, v3

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1511
    :cond_25
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static byteToHex(BILjava/lang/String;II)Ljava/lang/String;
    .registers 12
    .param p0, "src"    # B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .prologue
    .line 1366
    if-nez p4, :cond_3

    .line 1384
    .end local p2    # "dstInit":Ljava/lang/String;
    :goto_2
    return-object p2

    .line 1369
    .restart local p2    # "dstInit":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p1

    const/16 v6, 0x8

    if-lt v5, v6, :cond_14

    .line 1370
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+srcPos is greater or equal to than 8"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1372
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1374
    .local v0, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, p4, :cond_42

    .line 1375
    mul-int/lit8 v5, v2, 0x4

    add-int v4, v5, p1

    .line 1376
    .local v4, "shift":I
    shr-int v5, p0, v4

    and-int/lit8 v1, v5, 0xf

    .line 1377
    .local v1, "bits":I
    add-int v5, p3, v2

    if-ne v5, v0, :cond_38

    .line 1378
    add-int/lit8 v0, v0, 0x1

    .line 1379
    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1374
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1381
    :cond_38
    add-int v5, p3, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_35

    .line 1384
    .end local v1    # "bits":I
    .end local v4    # "shift":I
    :cond_42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2
.end method

.method public static hexDigitMsb0ToBinary(C)[Z
    .registers 4
    .param p0, "hexDigit"    # C

    .prologue
    .line 234
    sparse-switch p0, :sswitch_data_b4

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :sswitch_22
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 272
    :goto_2a
    return-object v0

    .line 238
    :sswitch_2b
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 240
    :sswitch_34
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 242
    :sswitch_3d
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 244
    :sswitch_46
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 246
    :sswitch_4f
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 248
    :sswitch_58
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 250
    :sswitch_61
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 252
    :sswitch_6a
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 254
    :sswitch_73
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 257
    :sswitch_7c
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 260
    :sswitch_85
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 263
    :sswitch_8e
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 266
    :sswitch_97
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 269
    :sswitch_a0
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 272
    :sswitch_a9
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto/16 :goto_2a

    .line 234
    nop

    :sswitch_data_b4
    .sparse-switch
        0x30 -> :sswitch_22
        0x31 -> :sswitch_2b
        0x32 -> :sswitch_34
        0x33 -> :sswitch_3d
        0x34 -> :sswitch_46
        0x35 -> :sswitch_4f
        0x36 -> :sswitch_58
        0x37 -> :sswitch_61
        0x38 -> :sswitch_6a
        0x39 -> :sswitch_73
        0x41 -> :sswitch_7c
        0x42 -> :sswitch_85
        0x43 -> :sswitch_8e
        0x44 -> :sswitch_97
        0x45 -> :sswitch_a0
        0x46 -> :sswitch_a9
        0x61 -> :sswitch_7c
        0x62 -> :sswitch_85
        0x63 -> :sswitch_8e
        0x64 -> :sswitch_97
        0x65 -> :sswitch_a0
        0x66 -> :sswitch_a9
    .end sparse-switch
.end method

.method public static hexDigitMsb0ToInt(C)I
    .registers 4
    .param p0, "hexDigit"    # C

    .prologue
    .line 118
    sparse-switch p0, :sswitch_data_4a

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :sswitch_22
    const/4 v0, 0x0

    .line 156
    :goto_23
    return v0

    .line 122
    :sswitch_24
    const/16 v0, 0x8

    goto :goto_23

    .line 124
    :sswitch_27
    const/4 v0, 0x4

    goto :goto_23

    .line 126
    :sswitch_29
    const/16 v0, 0xc

    goto :goto_23

    .line 128
    :sswitch_2c
    const/4 v0, 0x2

    goto :goto_23

    .line 130
    :sswitch_2e
    const/16 v0, 0xa

    goto :goto_23

    .line 132
    :sswitch_31
    const/4 v0, 0x6

    goto :goto_23

    .line 134
    :sswitch_33
    const/16 v0, 0xe

    goto :goto_23

    .line 136
    :sswitch_36
    const/4 v0, 0x1

    goto :goto_23

    .line 138
    :sswitch_38
    const/16 v0, 0x9

    goto :goto_23

    .line 141
    :sswitch_3b
    const/4 v0, 0x5

    goto :goto_23

    .line 144
    :sswitch_3d
    const/16 v0, 0xd

    goto :goto_23

    .line 147
    :sswitch_40
    const/4 v0, 0x3

    goto :goto_23

    .line 150
    :sswitch_42
    const/16 v0, 0xb

    goto :goto_23

    .line 153
    :sswitch_45
    const/4 v0, 0x7

    goto :goto_23

    .line 156
    :sswitch_47
    const/16 v0, 0xf

    goto :goto_23

    .line 118
    :sswitch_data_4a
    .sparse-switch
        0x30 -> :sswitch_22
        0x31 -> :sswitch_24
        0x32 -> :sswitch_27
        0x33 -> :sswitch_29
        0x34 -> :sswitch_2c
        0x35 -> :sswitch_2e
        0x36 -> :sswitch_31
        0x37 -> :sswitch_33
        0x38 -> :sswitch_36
        0x39 -> :sswitch_38
        0x41 -> :sswitch_3b
        0x42 -> :sswitch_3d
        0x43 -> :sswitch_40
        0x44 -> :sswitch_42
        0x45 -> :sswitch_45
        0x46 -> :sswitch_47
        0x61 -> :sswitch_3b
        0x62 -> :sswitch_3d
        0x63 -> :sswitch_40
        0x64 -> :sswitch_42
        0x65 -> :sswitch_45
        0x66 -> :sswitch_47
    .end sparse-switch
.end method

.method public static hexDigitToBinary(C)[Z
    .registers 4
    .param p0, "hexDigit"    # C

    .prologue
    .line 176
    sparse-switch p0, :sswitch_data_b4

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :sswitch_22
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 214
    :goto_2a
    return-object v0

    .line 180
    :sswitch_2b
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 182
    :sswitch_34
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 184
    :sswitch_3d
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 186
    :sswitch_46
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 188
    :sswitch_4f
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 190
    :sswitch_58
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 192
    :sswitch_61
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 194
    :sswitch_6a
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 196
    :sswitch_73
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 199
    :sswitch_7c
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 202
    :sswitch_85
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 205
    :sswitch_8e
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 208
    :sswitch_97
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 211
    :sswitch_a0
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_2a

    .line 214
    :sswitch_a9
    sget-object v0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto/16 :goto_2a

    .line 176
    nop

    :sswitch_data_b4
    .sparse-switch
        0x30 -> :sswitch_22
        0x31 -> :sswitch_2b
        0x32 -> :sswitch_34
        0x33 -> :sswitch_3d
        0x34 -> :sswitch_46
        0x35 -> :sswitch_4f
        0x36 -> :sswitch_58
        0x37 -> :sswitch_61
        0x38 -> :sswitch_6a
        0x39 -> :sswitch_73
        0x41 -> :sswitch_7c
        0x42 -> :sswitch_85
        0x43 -> :sswitch_8e
        0x44 -> :sswitch_97
        0x45 -> :sswitch_a0
        0x46 -> :sswitch_a9
        0x61 -> :sswitch_7c
        0x62 -> :sswitch_85
        0x63 -> :sswitch_8e
        0x64 -> :sswitch_97
        0x65 -> :sswitch_a0
        0x66 -> :sswitch_a9
    .end sparse-switch
.end method

.method public static hexDigitToInt(C)I
    .registers 5
    .param p0, "hexDigit"    # C

    .prologue
    .line 98
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 99
    .local v0, "digit":I
    if-gez v0, :cond_27

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot interpret \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' as a hexadecimal digit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_27
    return v0
.end method

.method public static hexToByte(Ljava/lang/String;IBII)B
    .registers 12
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # B
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .prologue
    .line 883
    if-nez p4, :cond_3

    .line 896
    .end local p2    # "dstInit":B
    :goto_2
    return p2

    .line 886
    .restart local p2    # "dstInit":B
    :cond_3
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p3

    const/16 v6, 0x8

    if-lt v5, v6, :cond_14

    .line 887
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+dstPos is greater or equal to than 8"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 889
    :cond_14
    move v3, p2

    .line 890
    .local v3, "out":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, p4, :cond_36

    .line 891
    mul-int/lit8 v5, v1, 0x4

    add-int v4, v5, p3

    .line 892
    .local v4, "shift":I
    add-int v5, v1, p1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int v0, v5, v4

    .line 893
    .local v0, "bits":I
    const/16 v5, 0xf

    shl-int v2, v5, v4

    .line 894
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-byte v3, v5

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    .end local v4    # "shift":I
    :cond_36
    move p2, v3

    .line 896
    goto :goto_2
.end method

.method public static hexToInt(Ljava/lang/String;IIII)I
    .registers 12
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .prologue
    .line 817
    if-nez p4, :cond_3

    .line 830
    .end local p2    # "dstInit":I
    :goto_2
    return p2

    .line 820
    .restart local p2    # "dstInit":I
    :cond_3
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_14

    .line 821
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+dstPos is greater or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 823
    :cond_14
    move v3, p2

    .line 824
    .local v3, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, p4, :cond_36

    .line 825
    mul-int/lit8 v5, v1, 0x4

    add-int v4, v5, p3

    .line 826
    .local v4, "shift":I
    add-int v5, v1, p1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int v0, v5, v4

    .line 827
    .local v0, "bits":I
    const/16 v5, 0xf

    shl-int v2, v5, v4

    .line 828
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int v3, v5, v0

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    .end local v4    # "shift":I
    :cond_36
    move p2, v3

    .line 830
    goto :goto_2
.end method

.method public static hexToLong(Ljava/lang/String;IJII)J
    .registers 20
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nHex"    # I

    .prologue
    .line 785
    if-nez p5, :cond_3

    .line 798
    .end local p2    # "dstInit":J
    :goto_2
    return-wide p2

    .line 788
    .restart local p2    # "dstInit":J
    :cond_3
    add-int/lit8 v10, p5, -0x1

    mul-int/lit8 v10, v10, 0x4

    add-int v10, v10, p4

    const/16 v11, 0x40

    if-lt v10, v11, :cond_15

    .line 789
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "(nHexs-1)*4+dstPos is greater or equal to than 64"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 791
    :cond_15
    move-wide/from16 v8, p2

    .line 792
    .local v8, "out":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    move/from16 v0, p5

    if-ge v4, v0, :cond_3d

    .line 793
    mul-int/lit8 v10, v4, 0x4

    add-int v5, v10, p4

    .line 794
    .local v5, "shift":I
    const-wide/16 v10, 0xf

    add-int v12, v4, p1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    shl-long v2, v10, v5

    .line 795
    .local v2, "bits":J
    const-wide/16 v10, 0xf

    shl-long v6, v10, v5

    .line 796
    .local v6, "mask":J
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v10, v8

    or-long v8, v10, v2

    .line 792
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .end local v2    # "bits":J
    .end local v5    # "shift":I
    .end local v6    # "mask":J
    :cond_3d
    move-wide/from16 p2, v8

    .line 798
    goto :goto_2
.end method

.method public static hexToShort(Ljava/lang/String;ISII)S
    .registers 12
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .prologue
    .line 850
    if-nez p4, :cond_3

    .line 863
    .end local p2    # "dstInit":S
    :goto_2
    return p2

    .line 853
    .restart local p2    # "dstInit":S
    :cond_3
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p3

    const/16 v6, 0x10

    if-lt v5, v6, :cond_14

    .line 854
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+dstPos is greater or equal to than 16"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 856
    :cond_14
    move v3, p2

    .line 857
    .local v3, "out":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, p4, :cond_36

    .line 858
    mul-int/lit8 v5, v1, 0x4

    add-int v4, v5, p3

    .line 859
    .local v4, "shift":I
    add-int v5, v1, p1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int v0, v5, v4

    .line 860
    .local v0, "bits":I
    const/16 v5, 0xf

    shl-int v2, v5, v4

    .line 861
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int/2addr v5, v0

    int-to-short v3, v5

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    .end local v4    # "shift":I
    :cond_36
    move p2, v3

    .line 863
    goto :goto_2
.end method

.method public static intArrayToLong([IIJII)J
    .registers 20
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nInts"    # I

    .prologue
    .line 577
    array-length v10, p0

    if-nez v10, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p5, :cond_8

    .line 590
    .end local p2    # "dstInit":J
    :cond_7
    :goto_7
    return-wide p2

    .line 580
    .restart local p2    # "dstInit":J
    :cond_8
    add-int/lit8 v10, p5, -0x1

    mul-int/lit8 v10, v10, 0x20

    add-int v10, v10, p4

    const/16 v11, 0x40

    if-lt v10, v11, :cond_1a

    .line 581
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "(nInts-1)*32+dstPos is greater or equal to than 64"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 583
    :cond_1a
    move-wide/from16 v8, p2

    .line 584
    .local v8, "out":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    move/from16 v0, p5

    if-ge v4, v0, :cond_42

    .line 585
    mul-int/lit8 v10, v4, 0x20

    add-int v5, v10, p4

    .line 586
    .local v5, "shift":I
    const-wide v10, 0xffffffffL

    add-int v12, v4, p1

    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    shl-long v2, v10, v5

    .line 587
    .local v2, "bits":J
    const-wide v10, 0xffffffffL

    shl-long v6, v10, v5

    .line 588
    .local v6, "mask":J
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v10, v8

    or-long v8, v10, v2

    .line 584
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .end local v2    # "bits":J
    .end local v5    # "shift":I
    .end local v6    # "mask":J
    :cond_42
    move-wide/from16 p2, v8

    .line 590
    goto :goto_7
.end method

.method public static intToBinary(II[ZII)[Z
    .registers 9
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    .line 1438
    if-nez p4, :cond_3

    .line 1448
    :cond_2
    return-object p2

    .line 1441
    :cond_3
    add-int/lit8 v2, p4, -0x1

    add-int/2addr v2, p1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_12

    .line 1442
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+srcPos is greater or equal to than 32"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1444
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, p4, :cond_2

    .line 1445
    add-int v1, v0, p1

    .line 1446
    .local v1, "shift":I
    add-int v3, p3, v0

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    :goto_20
    aput-boolean v2, p2, v3

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1446
    :cond_25
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static intToByteArray(II[BII)[B
    .registers 9
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .prologue
    .line 1186
    if-nez p4, :cond_3

    .line 1196
    :cond_2
    return-object p2

    .line 1189
    :cond_3
    add-int/lit8 v2, p4, -0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_14

    .line 1190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nBytes-1)*8+srcPos is greater or equal to than 32"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1192
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, p4, :cond_2

    .line 1193
    mul-int/lit8 v2, v0, 0x8

    add-int v1, v2, p1

    .line 1194
    .local v1, "shift":I
    add-int v2, p3, v0

    shr-int v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1192
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public static intToHex(IILjava/lang/String;II)Ljava/lang/String;
    .registers 12
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .prologue
    .line 1288
    if-nez p4, :cond_3

    .line 1306
    .end local p2    # "dstInit":Ljava/lang/String;
    :goto_2
    return-object p2

    .line 1291
    .restart local p2    # "dstInit":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p1

    const/16 v6, 0x20

    if-lt v5, v6, :cond_14

    .line 1292
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+srcPos is greater or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1294
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1296
    .local v0, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, p4, :cond_42

    .line 1297
    mul-int/lit8 v5, v2, 0x4

    add-int v4, v5, p1

    .line 1298
    .local v4, "shift":I
    shr-int v5, p0, v4

    and-int/lit8 v1, v5, 0xf

    .line 1299
    .local v1, "bits":I
    add-int v5, p3, v2

    if-ne v5, v0, :cond_38

    .line 1300
    add-int/lit8 v0, v0, 0x1

    .line 1301
    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1296
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1303
    :cond_38
    add-int v5, p3, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_35

    .line 1306
    .end local v1    # "bits":I
    .end local v4    # "shift":I
    :cond_42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2
.end method

.method public static intToHexDigit(I)C
    .registers 5
    .param p0, "nibble"    # I

    .prologue
    .line 494
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 495
    .local v0, "c":C
    if-nez v0, :cond_21

    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nibble value not between 0 and 15: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_21
    return v0
.end method

.method public static intToHexDigitMsb0(I)C
    .registers 4
    .param p0, "nibble"    # I

    .prologue
    .line 520
    packed-switch p0, :pswitch_data_4c

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nibble value not between 0 and 15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :pswitch_1c
    const/16 v0, 0x30

    .line 552
    :goto_1e
    return v0

    .line 524
    :pswitch_1f
    const/16 v0, 0x38

    goto :goto_1e

    .line 526
    :pswitch_22
    const/16 v0, 0x34

    goto :goto_1e

    .line 528
    :pswitch_25
    const/16 v0, 0x63

    goto :goto_1e

    .line 530
    :pswitch_28
    const/16 v0, 0x32

    goto :goto_1e

    .line 532
    :pswitch_2b
    const/16 v0, 0x61

    goto :goto_1e

    .line 534
    :pswitch_2e
    const/16 v0, 0x36

    goto :goto_1e

    .line 536
    :pswitch_31
    const/16 v0, 0x65

    goto :goto_1e

    .line 538
    :pswitch_34
    const/16 v0, 0x31

    goto :goto_1e

    .line 540
    :pswitch_37
    const/16 v0, 0x39

    goto :goto_1e

    .line 542
    :pswitch_3a
    const/16 v0, 0x35

    goto :goto_1e

    .line 544
    :pswitch_3d
    const/16 v0, 0x64

    goto :goto_1e

    .line 546
    :pswitch_40
    const/16 v0, 0x33

    goto :goto_1e

    .line 548
    :pswitch_43
    const/16 v0, 0x62

    goto :goto_1e

    .line 550
    :pswitch_46
    const/16 v0, 0x37

    goto :goto_1e

    .line 552
    :pswitch_49
    const/16 v0, 0x66

    goto :goto_1e

    .line 520
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
    .end packed-switch
.end method

.method public static intToShortArray(II[SII)[S
    .registers 10
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "nShorts"    # I

    .prologue
    .line 1122
    if-nez p4, :cond_3

    .line 1132
    :cond_2
    return-object p2

    .line 1125
    :cond_3
    add-int/lit8 v2, p4, -0x1

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, p1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_14

    .line 1126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nShorts-1)*16+srcPos is greater or equal to than 32"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1128
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, p4, :cond_2

    .line 1129
    mul-int/lit8 v2, v0, 0x10

    add-int v1, v2, p1

    .line 1130
    .local v1, "shift":I
    add-int v2, p3, v0

    const v3, 0xffff

    shr-int v4, p0, v1

    and-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p2, v2

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public static longToBinary(JI[ZII)[Z
    .registers 14
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [Z
    .param p4, "dstPos"    # I
    .param p5, "nBools"    # I

    .prologue
    .line 1406
    if-nez p5, :cond_3

    .line 1416
    :cond_2
    return-object p3

    .line 1409
    :cond_3
    add-int/lit8 v2, p5, -0x1

    add-int/2addr v2, p2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_12

    .line 1410
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+srcPos is greater or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1412
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, p5, :cond_2

    .line 1413
    add-int v1, v0, p2

    .line 1414
    .local v1, "shift":I
    add-int v3, p4, v0

    const-wide/16 v4, 0x1

    shr-long v6, p0, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    :goto_25
    aput-boolean v2, p3, v3

    .line 1412
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1414
    :cond_2a
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public static longToByteArray(JI[BII)[B
    .registers 14
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [B
    .param p4, "dstPos"    # I
    .param p5, "nBytes"    # I

    .prologue
    .line 1154
    if-nez p5, :cond_3

    .line 1164
    :cond_2
    return-object p3

    .line 1157
    :cond_3
    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_14

    .line 1158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nBytes-1)*8+srcPos is greater or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1160
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, p5, :cond_2

    .line 1161
    mul-int/lit8 v2, v0, 0x8

    add-int v1, v2, p2

    .line 1162
    .local v1, "shift":I
    add-int v2, p4, v0

    const-wide/16 v4, 0xff

    shr-long v6, p0, v1

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 1160
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public static longToHex(JILjava/lang/String;II)Ljava/lang/String;
    .registers 16
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dstInit"    # Ljava/lang/String;
    .param p4, "dstPos"    # I
    .param p5, "nHexs"    # I

    .prologue
    .line 1249
    if-nez p5, :cond_3

    .line 1267
    .end local p3    # "dstInit":Ljava/lang/String;
    :goto_2
    return-object p3

    .line 1252
    .restart local p3    # "dstInit":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, p5, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p2

    const/16 v6, 0x40

    if-lt v5, v6, :cond_14

    .line 1253
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+srcPos is greater or equal to than 64"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1255
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1257
    .local v0, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, p5, :cond_44

    .line 1258
    mul-int/lit8 v5, v2, 0x4

    add-int v4, v5, p2

    .line 1259
    .local v4, "shift":I
    const-wide/16 v6, 0xf

    shr-long v8, p0, v4

    and-long/2addr v6, v8

    long-to-int v1, v6

    .line 1260
    .local v1, "bits":I
    add-int v5, p4, v2

    if-ne v5, v0, :cond_3a

    .line 1261
    add-int/lit8 v0, v0, 0x1

    .line 1262
    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1257
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1264
    :cond_3a
    add-int v5, p4, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_37

    .line 1267
    .end local v1    # "bits":I
    .end local v4    # "shift":I
    :cond_44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2
.end method

.method public static longToIntArray(JI[III)[I
    .registers 14
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [I
    .param p4, "dstPos"    # I
    .param p5, "nInts"    # I

    .prologue
    .line 1058
    if-nez p5, :cond_3

    .line 1068
    :cond_2
    return-object p3

    .line 1061
    :cond_3
    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v2, p2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_14

    .line 1062
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nInts-1)*32+srcPos is greater or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1064
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, p5, :cond_2

    .line 1065
    mul-int/lit8 v2, v0, 0x20

    add-int v1, v2, p2

    .line 1066
    .local v1, "shift":I
    add-int v2, p4, v0

    const-wide/16 v4, -0x1

    shr-long v6, p0, v1

    and-long/2addr v4, v6

    long-to-int v3, v4

    aput v3, p3, v2

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public static longToShortArray(JI[SII)[S
    .registers 14
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [S
    .param p4, "dstPos"    # I
    .param p5, "nShorts"    # I

    .prologue
    .line 1090
    if-nez p5, :cond_3

    .line 1100
    :cond_2
    return-object p3

    .line 1093
    :cond_3
    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, p2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_14

    .line 1094
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nShorts-1)*16+srcPos is greater or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1096
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, p5, :cond_2

    .line 1097
    mul-int/lit8 v2, v0, 0x10

    add-int v1, v2, p2

    .line 1098
    .local v1, "shift":I
    add-int v2, p4, v0

    const-wide/32 v4, 0xffff

    shr-long v6, p0, v1

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-short v3, v3

    aput-short v3, p3, v2

    .line 1096
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public static shortArrayToInt([SIIII)I
    .registers 13
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nShorts"    # I

    .prologue
    const v7, 0xffff

    .line 647
    array-length v5, p0

    if-nez v5, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    if-nez p4, :cond_b

    .line 660
    .end local p2    # "dstInit":I
    :cond_a
    :goto_a
    return p2

    .line 650
    .restart local p2    # "dstInit":I
    :cond_b
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, p3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_1c

    .line 651
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nShorts-1)*16+dstPos is greater or equal to than 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 653
    :cond_1c
    move v3, p2

    .line 654
    .local v3, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, p4, :cond_35

    .line 655
    mul-int/lit8 v5, v1, 0x10

    add-int v4, v5, p3

    .line 656
    .local v4, "shift":I
    add-int v5, v1, p1

    aget-short v5, p0, v5

    and-int/2addr v5, v7

    shl-int v0, v5, v4

    .line 657
    .local v0, "bits":I
    shl-int v2, v7, v4

    .line 658
    .local v2, "mask":I
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v3

    or-int v3, v5, v0

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v0    # "bits":I
    .end local v2    # "mask":I
    .end local v4    # "shift":I
    :cond_35
    move p2, v3

    .line 660
    goto :goto_a
.end method

.method public static shortArrayToLong([SIJII)J
    .registers 20
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nShorts"    # I

    .prologue
    .line 612
    array-length v10, p0

    if-nez v10, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    if-nez p5, :cond_8

    .line 625
    .end local p2    # "dstInit":J
    :cond_7
    :goto_7
    return-wide p2

    .line 615
    .restart local p2    # "dstInit":J
    :cond_8
    add-int/lit8 v10, p5, -0x1

    mul-int/lit8 v10, v10, 0x10

    add-int v10, v10, p4

    const/16 v11, 0x40

    if-lt v10, v11, :cond_1a

    .line 616
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "(nShorts-1)*16+dstPos is greater or equal to than 64"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 618
    :cond_1a
    move-wide/from16 v8, p2

    .line 619
    .local v8, "out":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    move/from16 v0, p5

    if-ge v4, v0, :cond_3e

    .line 620
    mul-int/lit8 v10, v4, 0x10

    add-int v5, v10, p4

    .line 621
    .local v5, "shift":I
    const-wide/32 v10, 0xffff

    add-int v12, v4, p1

    aget-short v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    shl-long v2, v10, v5

    .line 622
    .local v2, "bits":J
    const-wide/32 v10, 0xffff

    shl-long v6, v10, v5

    .line 623
    .local v6, "mask":J
    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v10, v8

    or-long v8, v10, v2

    .line 619
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .end local v2    # "bits":J
    .end local v5    # "shift":I
    .end local v6    # "mask":J
    :cond_3e
    move-wide/from16 p2, v8

    .line 625
    goto :goto_7
.end method

.method public static shortToBinary(SI[ZII)[Z
    .registers 9
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .prologue
    .line 1470
    if-nez p4, :cond_3

    .line 1481
    :cond_2
    return-object p2

    .line 1473
    :cond_3
    add-int/lit8 v2, p4, -0x1

    add-int/2addr v2, p1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_12

    .line 1474
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+srcPos is greater or equal to than 16"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1476
    :cond_12
    sget-boolean v2, Lorg/apache/commons/lang3/Conversion;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    add-int/lit8 v2, p4, -0x1

    rsub-int/lit8 v3, p1, 0x10

    if-lt v2, v3, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1477
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, p4, :cond_2

    .line 1478
    add-int v1, v0, p1

    .line 1479
    .local v1, "shift":I
    add-int v3, p3, v0

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    :goto_30
    aput-boolean v2, p2, v3

    .line 1477
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1479
    :cond_35
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public static shortToByteArray(SI[BII)[B
    .registers 9
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .prologue
    .line 1218
    if-nez p4, :cond_3

    .line 1228
    :cond_2
    return-object p2

    .line 1221
    :cond_3
    add-int/lit8 v2, p4, -0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_14

    .line 1222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "(nBytes-1)*8+srcPos is greater or equal to than 16"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1224
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, p4, :cond_2

    .line 1225
    mul-int/lit8 v2, v0, 0x8

    add-int v1, v2, p1

    .line 1226
    .local v1, "shift":I
    add-int v2, p3, v0

    shr-int v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1224
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public static shortToHex(SILjava/lang/String;II)Ljava/lang/String;
    .registers 12
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .prologue
    .line 1327
    if-nez p4, :cond_3

    .line 1345
    .end local p2    # "dstInit":Ljava/lang/String;
    :goto_2
    return-object p2

    .line 1330
    .restart local p2    # "dstInit":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p1

    const/16 v6, 0x10

    if-lt v5, v6, :cond_14

    .line 1331
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "(nHexs-1)*4+srcPos is greater or equal to than 16"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1333
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1334
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1335
    .local v0, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, p4, :cond_42

    .line 1336
    mul-int/lit8 v5, v2, 0x4

    add-int v4, v5, p1

    .line 1337
    .local v4, "shift":I
    shr-int v5, p0, v4

    and-int/lit8 v1, v5, 0xf

    .line 1338
    .local v1, "bits":I
    add-int v5, p3, v2

    if-ne v5, v0, :cond_38

    .line 1339
    add-int/lit8 v0, v0, 0x1

    .line 1340
    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1335
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1342
    :cond_38
    add-int v5, p3, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_35

    .line 1345
    .end local v1    # "bits":I
    .end local v4    # "shift":I
    :cond_42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2
.end method

.method public static uuidToByteArray(Ljava/util/UUID;[BII)[B
    .registers 11
    .param p0, "src"    # Ljava/util/UUID;
    .param p1, "dst"    # [B
    .param p2, "dstPos"    # I
    .param p3, "nBytes"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 1533
    if-nez p3, :cond_6

    .line 1543
    :cond_5
    :goto_5
    return-object p1

    .line 1536
    :cond_6
    const/16 v0, 0x10

    if-le p3, v0, :cond_12

    .line 1537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBytes is greater than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1539
    :cond_12
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    if-le p3, v6, :cond_2d

    move v5, v6

    :goto_19
    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    .line 1540
    if-lt p3, v6, :cond_5

    .line 1541
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v5, p3, -0x8

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    goto :goto_5

    :cond_2d
    move v5, p3

    .line 1539
    goto :goto_19
.end method
