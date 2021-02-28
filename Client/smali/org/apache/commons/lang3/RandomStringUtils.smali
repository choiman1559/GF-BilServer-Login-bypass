.class public Lorg/apache/commons/lang3/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static random(I)Ljava/lang/String;
    .registers 2
    .param p0, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .registers 12
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z

    .prologue
    .line 288
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(IIIZZ[C)Ljava/lang/String;
    .registers 13
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C

    .prologue
    .line 312
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .registers 18
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C
    .param p6, "random"    # Ljava/util/Random;

    .prologue
    .line 350
    if-nez p0, :cond_5

    .line 351
    const-string v8, ""

    .line 424
    :goto_4
    return-object v8

    .line 352
    :cond_5
    if-gez p0, :cond_26

    .line 353
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested random string length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is less than 0."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 355
    :cond_26
    if-eqz p5, :cond_35

    move-object/from16 v0, p5

    array-length v8, v0

    if-nez v8, :cond_35

    .line 356
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The chars array must not be empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 359
    :cond_35
    if-nez p1, :cond_94

    if-nez p2, :cond_94

    .line 360
    if-eqz p5, :cond_87

    .line 361
    move-object/from16 v0, p5

    array-length p2, v0

    .line 376
    :cond_3e
    :goto_3e
    const/16 v7, 0x30

    .line 377
    .local v7, "zero_digit_ascii":I
    const/16 v4, 0x41

    .line 379
    .local v4, "first_letter_ascii":I
    if-nez p5, :cond_bf

    if-eqz p4, :cond_4a

    const/16 v8, 0x30

    if-le p2, v8, :cond_50

    :cond_4a
    if-eqz p3, :cond_bf

    const/16 v8, 0x41

    if-gt p2, v8, :cond_bf

    .line 381
    :cond_50
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parameter end ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") must be greater then ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") for generating digits or greater then ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x41

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") for generating letters."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 363
    .end local v4    # "first_letter_ascii":I
    .end local v7    # "zero_digit_ascii":I
    :cond_87
    if-nez p3, :cond_8f

    if-nez p4, :cond_8f

    .line 364
    const p2, 0x10ffff

    goto :goto_3e

    .line 366
    :cond_8f
    const/16 p2, 0x7b

    .line 367
    const/16 p1, 0x20

    goto :goto_3e

    .line 371
    :cond_94
    if-gt p2, p1, :cond_3e

    .line 372
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parameter end ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") must be greater than start ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 385
    .restart local v4    # "first_letter_ascii":I
    .restart local v7    # "zero_digit_ascii":I
    :cond_bf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 386
    .local v1, "builder":Ljava/lang/StringBuilder;
    sub-int v5, p2, p1

    .local v5, "gap":I
    move v3, p0

    .line 388
    .end local p0    # "count":I
    .local v3, "count":I
    :goto_c7
    add-int/lit8 p0, v3, -0x1

    .end local v3    # "count":I
    .restart local p0    # "count":I
    if-eqz v3, :cond_118

    .line 390
    if-nez p5, :cond_ed

    .line 391
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int v2, v8, p1

    .line 393
    .local v2, "codePoint":I
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_11e

    .line 405
    :goto_dc
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 406
    .local v6, "numberOfChars":I
    if-nez p0, :cond_f7

    const/4 v8, 0x1

    if-le v6, v8, :cond_f7

    .line 407
    add-int/lit8 p0, p0, 0x1

    move v3, p0

    .line 408
    .end local p0    # "count":I
    .restart local v3    # "count":I
    goto :goto_c7

    .line 397
    .end local v3    # "count":I
    .end local v6    # "numberOfChars":I
    .restart local p0    # "count":I
    :sswitch_e9
    add-int/lit8 p0, p0, 0x1

    move v3, p0

    .line 398
    .end local p0    # "count":I
    .restart local v3    # "count":I
    goto :goto_c7

    .line 402
    .end local v2    # "codePoint":I
    .end local v3    # "count":I
    .restart local p0    # "count":I
    :cond_ed
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, p1

    aget-char v2, p5, v8

    .restart local v2    # "codePoint":I
    goto :goto_dc

    .line 411
    .restart local v6    # "numberOfChars":I
    :cond_f7
    if-eqz p3, :cond_ff

    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-nez v8, :cond_10b

    :cond_ff
    if-eqz p4, :cond_107

    .line 412
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v8

    if-nez v8, :cond_10b

    :cond_107
    if-nez p3, :cond_115

    if-nez p4, :cond_115

    .line 414
    :cond_10b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 416
    const/4 v8, 0x2

    if-ne v6, v8, :cond_113

    .line 417
    add-int/lit8 p0, p0, -0x1

    :cond_113
    :goto_113
    move v3, p0

    .line 423
    .end local p0    # "count":I
    .restart local v3    # "count":I
    goto :goto_c7

    .line 421
    .end local v3    # "count":I
    .restart local p0    # "count":I
    :cond_115
    add-int/lit8 p0, p0, 0x1

    goto :goto_113

    .line 424
    .end local v2    # "codePoint":I
    .end local v6    # "numberOfChars":I
    :cond_118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 393
    :sswitch_data_11e
    .sparse-switch
        0x0 -> :sswitch_e9
        0x12 -> :sswitch_e9
        0x13 -> :sswitch_e9
    .end sparse-switch
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "count"    # I
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 443
    if-nez p1, :cond_f

    .line 444
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(I[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static random(IZZ)Ljava/lang/String;
    .registers 4
    .param p0, "count"    # I
    .param p1, "letters"    # Z
    .param p2, "numbers"    # Z

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-static {p0, v0, v0, p1, p2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(I[C)Ljava/lang/String;
    .registers 9
    .param p0, "count"    # I
    .param p1, "chars"    # [C

    .prologue
    const/4 v1, 0x0

    .line 462
    if-nez p1, :cond_f

    .line 463
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_e
    return-object v0

    :cond_f
    array-length v2, p1

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v3, v1

    move v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .registers 3
    .param p0, "count"    # I

    .prologue
    .line 116
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphabetic(II)Ljava/lang/String;
    .registers 3
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .prologue
    .line 131
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .registers 2
    .param p0, "count"    # I

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(II)Ljava/lang/String;
    .registers 3
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .prologue
    .line 161
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAlphanumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .registers 4
    .param p0, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 86
    const/16 v0, 0x20

    const/16 v1, 0x7f

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(II)Ljava/lang/String;
    .registers 3
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .prologue
    .line 102
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAscii(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomGraph(I)Ljava/lang/String;
    .registers 4
    .param p0, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 176
    const/16 v0, 0x21

    const/16 v1, 0x7e

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomGraph(II)Ljava/lang/String;
    .registers 3
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .prologue
    .line 191
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomGraph(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .registers 3
    .param p0, "count"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(II)Ljava/lang/String;
    .registers 3
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .prologue
    .line 220
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomPrint(I)Ljava/lang/String;
    .registers 4
    .param p0, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 235
    const/16 v0, 0x20

    const/16 v1, 0x7e

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomPrint(II)Ljava/lang/String;
    .registers 3
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .prologue
    .line 250
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomPrint(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
