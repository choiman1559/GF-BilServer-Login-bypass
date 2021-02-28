.class public Lorg/apache/commons/lang3/text/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 409
    if-nez p1, :cond_c

    const/4 v3, -0x1

    .line 410
    .local v3, "delimLen":I
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v3, :cond_e

    .line 424
    .end local p0    # "str":Ljava/lang/String;
    :cond_b
    :goto_b
    return-object p0

    .line 409
    .end local v3    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_c
    array-length v3, p1

    goto :goto_3

    .line 413
    .restart local v3    # "delimLen":I
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 414
    .local v0, "buffer":[C
    const/4 v1, 0x1

    .line 415
    .local v1, "capitalizeNext":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    array-length v5, v0

    if-ge v4, v5, :cond_2d

    .line 416
    aget-char v2, v0, v4

    .line 417
    .local v2, "ch":C
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 418
    const/4 v1, 0x1

    .line 415
    :cond_20
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 419
    :cond_23
    if-eqz v1, :cond_20

    .line 420
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    aput-char v5, v0, v4

    .line 421
    const/4 v1, 0x0

    goto :goto_20

    .line 424
    .end local v2    # "ch":C
    :cond_2d
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_b
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 478
    if-nez p1, :cond_c

    const/4 v0, -0x1

    .line 479
    .local v0, "delimLen":I
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v0, :cond_e

    .line 483
    .end local p0    # "str":Ljava/lang/String;
    :cond_b
    :goto_b
    return-object p0

    .line 478
    .end local v0    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_c
    array-length v0, p1

    goto :goto_3

    .line 482
    .restart local v0    # "delimLen":I
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 483
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method public static varargs containsAllWords(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 9
    .param p0, "word"    # Ljava/lang/CharSequence;
    .param p1, "words"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 708
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 720
    :cond_d
    :goto_d
    return v2

    .line 711
    :cond_e
    array-length v4, p1

    move v3, v2

    :goto_10
    if-ge v3, v4, :cond_44

    aget-object v1, p1, v3

    .line 712
    .local v1, "w":Ljava/lang/CharSequence;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*\\b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\b.*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 716
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 711
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 720
    .end local v0    # "p":Ljava/util/regex/Pattern;
    .end local v1    # "w":Ljava/lang/CharSequence;
    :cond_44
    const/4 v2, 0x1

    goto :goto_d
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 658
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 680
    .end local p0    # "str":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 661
    .restart local p0    # "str":Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_f

    array-length v7, p1

    if-nez v7, :cond_f

    .line 662
    const-string p0, ""

    goto :goto_6

    .line 664
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 665
    .local v6, "strLen":I
    div-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [C

    .line 666
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 667
    .local v2, "count":I
    const/4 v5, 0x1

    .line 668
    .local v5, "lastWasGap":Z
    const/4 v4, 0x0

    .local v4, "i":I
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    :goto_1d
    if-ge v4, v6, :cond_37

    .line 669
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 671
    .local v1, "ch":C
    invoke-static {v1, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 672
    const/4 v5, 0x1

    move v2, v3

    .line 668
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_1d

    .line 673
    :cond_2f
    if-eqz v5, :cond_3e

    .line 674
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput-char v1, v0, v3

    .line 675
    const/4 v5, 0x0

    goto :goto_2b

    .line 680
    .end local v1    # "ch":C
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_37
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    .restart local v1    # "ch":C
    .restart local p0    # "str":Ljava/lang/String;
    :cond_3e
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2b
.end method

.method private static isDelimiter(C[C)Z
    .registers 6
    .param p0, "ch"    # C
    .param p1, "delimiters"    # [C

    .prologue
    const/4 v1, 0x0

    .line 732
    if-nez p1, :cond_8

    .line 733
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    .line 740
    :cond_7
    :goto_7
    return v1

    .line 735
    :cond_8
    array-length v3, p1

    move v2, v1

    :goto_a
    if-ge v2, v3, :cond_7

    aget-char v0, p1, v2

    .line 736
    .local v0, "delimiter":C
    if-ne p0, v0, :cond_12

    .line 737
    const/4 v1, 0x1

    goto :goto_7

    .line 735
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 576
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 602
    .end local p0    # "str":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 579
    .restart local p0    # "str":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 581
    .local v0, "buffer":[C
    const/4 v3, 0x1

    .line 583
    .local v3, "whitespace":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v4, v0

    if-ge v2, v4, :cond_4c

    .line 584
    aget-char v1, v0, v2

    .line 585
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 586
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, v0, v2

    .line 587
    const/4 v3, 0x0

    .line 583
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 588
    :cond_22
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 589
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, v0, v2

    .line 590
    const/4 v3, 0x0

    goto :goto_1f

    .line 591
    :cond_30
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 592
    if-eqz v3, :cond_40

    .line 593
    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v4

    aput-char v4, v0, v2

    .line 594
    const/4 v3, 0x0

    goto :goto_1f

    .line 596
    :cond_40
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v0, v2

    goto :goto_1f

    .line 599
    :cond_47
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    goto :goto_1f

    .line 602
    .end local v1    # "ch":C
    :cond_4c
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_6
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .prologue
    .line 534
    if-nez p1, :cond_c

    const/4 v2, -0x1

    .line 535
    .local v2, "delimLen":I
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v2, :cond_e

    .line 549
    .end local p0    # "str":Ljava/lang/String;
    :cond_b
    :goto_b
    return-object p0

    .line 534
    .end local v2    # "delimLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_c
    array-length v2, p1

    goto :goto_3

    .line 538
    .restart local v2    # "delimLen":I
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 539
    .local v0, "buffer":[C
    const/4 v4, 0x1

    .line 540
    .local v4, "uncapitalizeNext":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    array-length v5, v0

    if-ge v3, v5, :cond_2d

    .line 541
    aget-char v1, v0, v3

    .line 542
    .local v1, "ch":C
    invoke-static {v1, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 543
    const/4 v4, 0x1

    .line 540
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 544
    :cond_23
    if-eqz v4, :cond_20

    .line 545
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    aput-char v5, v0, v3

    .line 546
    const/4 v4, 0x0

    goto :goto_20

    .line 549
    .end local v1    # "ch":C
    :cond_2d
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_b
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z

    .prologue
    .line 181
    const-string v0, " "

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z
    .param p4, "wrapOn"    # Ljava/lang/String;

    .prologue
    .line 275
    if-nez p0, :cond_4

    .line 276
    const/4 v6, 0x0

    .line 348
    :goto_3
    return-object v6

    .line 278
    :cond_4
    if-nez p2, :cond_a

    .line 279
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    .line 281
    :cond_a
    const/4 v6, 0x1

    if-ge p1, v6, :cond_e

    .line 282
    const/4 p1, 0x1

    .line 284
    :cond_e
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 285
    const-string p4, " "

    .line 287
    :cond_16
    invoke-static/range {p4 .. p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 288
    .local v3, "patternToWrapOn":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 289
    .local v0, "inputLineLength":I
    const/4 v2, 0x0

    .line 290
    .local v2, "offset":I
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    .local v5, "wrappedLine":Ljava/lang/StringBuilder;
    :goto_26
    if-ge v2, v0, :cond_5f

    .line 293
    const/4 v4, -0x1

    .line 294
    .local v4, "spaceToWrapAt":I
    const-wide/32 v6, 0x7fffffff

    add-int v8, v2, p1

    int-to-long v8, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    .line 295
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 294
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 296
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 297
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-nez v6, :cond_55

    .line 298
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    add-int/2addr v2, v6

    .line 299
    goto :goto_26

    .line 301
    :cond_55
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int v4, v6, v2

    .line 305
    :cond_5b
    sub-int v6, v0, v2

    if-gt v6, p1, :cond_6b

    .line 346
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "spaceToWrapAt":I
    :cond_5f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 309
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v4    # "spaceToWrapAt":I
    :cond_6b
    :goto_6b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 310
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int v4, v6, v2

    goto :goto_6b

    .line 313
    :cond_78
    if-lt v4, v2, :cond_83

    .line 315
    invoke-virtual {v5, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v2, v4, 0x1

    goto :goto_26

    .line 321
    :cond_83
    if-eqz p3, :cond_8f

    .line 323
    add-int v6, p1, v2

    invoke-virtual {v5, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    add-int/2addr v2, p1

    goto :goto_26

    .line 328
    :cond_8f
    add-int v6, v2, p1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 330
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int/2addr v6, v2

    add-int v4, v6, p1

    .line 333
    :cond_a6
    if-ltz v4, :cond_b2

    .line 334
    invoke-virtual {v5, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_26

    .line 338
    :cond_b2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 339
    move v2, v0

    goto/16 :goto_26
.end method
