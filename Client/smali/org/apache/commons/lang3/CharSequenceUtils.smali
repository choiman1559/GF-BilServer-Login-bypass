.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .prologue
    .line 100
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 101
    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 125
    :cond_a
    :goto_a
    return v2

    .line 103
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 104
    .local v4, "sz":I
    if-gez p2, :cond_12

    .line 105
    const/4 p2, 0x0

    .line 107
    :cond_12
    const/high16 v5, 0x10000

    if-ge p1, v5, :cond_22

    .line 108
    move v2, p2

    .local v2, "i":I
    :goto_17
    if-ge v2, v4, :cond_22

    .line 109
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, p1, :cond_a

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 115
    .end local v2    # "i":I
    :cond_22
    const v5, 0x10ffff

    if-gt p1, v5, :cond_47

    .line 116
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 117
    .local v0, "chars":[C
    move v2, p2

    .restart local v2    # "i":I
    :goto_2c
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_47

    .line 118
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 119
    .local v1, "high":C
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 120
    .local v3, "low":C
    const/4 v5, 0x0

    aget-char v5, v0, v5

    if-ne v1, v5, :cond_44

    const/4 v5, 0x1

    aget-char v5, v0, v5

    if-eq v3, v5, :cond_a

    .line 117
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 125
    .end local v0    # "chars":[C
    .end local v1    # "high":C
    .end local v2    # "i":I
    .end local v3    # "low":C
    :cond_47
    const/4 v2, -0x1

    goto :goto_a
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 137
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .prologue
    const/4 v5, -0x1

    .line 176
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 177
    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 209
    :cond_b
    :goto_b
    return v2

    .line 179
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 180
    .local v4, "sz":I
    if-gez p2, :cond_14

    move v2, v5

    .line 181
    goto :goto_b

    .line 183
    :cond_14
    if-lt p2, v4, :cond_18

    .line 184
    add-int/lit8 p2, v4, -0x1

    .line 186
    :cond_18
    const/high16 v6, 0x10000

    if-ge p1, v6, :cond_28

    .line 187
    move v2, p2

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_28

    .line 188
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, p1, :cond_b

    .line 187
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 195
    .end local v2    # "i":I
    :cond_28
    const v6, 0x10ffff

    if-gt p1, v6, :cond_51

    .line 196
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 198
    .local v0, "chars":[C
    add-int/lit8 v6, v4, -0x1

    if-ne p2, v6, :cond_37

    move v2, v5

    .line 199
    goto :goto_b

    .line 201
    :cond_37
    move v2, p2

    .restart local v2    # "i":I
    :goto_38
    if-ltz v2, :cond_51

    .line 202
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 203
    .local v1, "high":C
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 204
    .local v3, "low":C
    const/4 v6, 0x0

    aget-char v6, v0, v6

    if-ne v6, v1, :cond_4e

    const/4 v6, 0x1

    aget-char v6, v0, v6

    if-eq v6, v3, :cond_b

    .line 201
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .end local v0    # "chars":[C
    .end local v1    # "high":C
    .end local v2    # "i":I
    .end local v3    # "low":C
    :cond_51
    move v2, v5

    .line 209
    goto :goto_b
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 221
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .registers 23
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "substring"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .prologue
    .line 264
    move-object/from16 v0, p0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_21

    move-object/from16 v0, p3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_21

    move-object/from16 v1, p0

    .line 265
    check-cast v1, Ljava/lang/String;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/String;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    .line 304
    :goto_20
    return v1

    .line 267
    :cond_21
    move/from16 v9, p2

    .line 268
    .local v9, "index1":I
    move/from16 v11, p4

    .line 269
    .local v11, "index2":I
    move/from16 v15, p5

    .line 272
    .local v15, "tmpLen":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v14, v1, p2

    .line 273
    .local v14, "srcLen":I
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v13, v1, p4

    .line 276
    .local v13, "otherLen":I
    if-ltz p2, :cond_39

    if-ltz p4, :cond_39

    if-gez p5, :cond_3b

    .line 277
    :cond_39
    const/4 v1, 0x0

    goto :goto_20

    .line 281
    :cond_3b
    move/from16 v0, p5

    if-lt v14, v0, :cond_43

    move/from16 v0, p5

    if-ge v13, v0, :cond_81

    .line 282
    :cond_43
    const/4 v1, 0x0

    goto :goto_20

    .line 285
    .end local v9    # "index1":I
    .end local v11    # "index2":I
    .end local v15    # "tmpLen":I
    .local v10, "index1":I
    .local v12, "index2":I
    .local v16, "tmpLen":I
    :goto_45
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "tmpLen":I
    .restart local v15    # "tmpLen":I
    if-lez v16, :cond_7f

    .line 286
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index1":I
    .restart local v9    # "index1":I
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 287
    .local v7, "c1":C
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index2":I
    .restart local v11    # "index2":I
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 289
    .local v8, "c2":C
    if-ne v7, v8, :cond_60

    move/from16 v16, v15

    .end local v15    # "tmpLen":I
    .restart local v16    # "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .restart local v12    # "index2":I
    move v10, v9

    .line 290
    .end local v9    # "index1":I
    .restart local v10    # "index1":I
    goto :goto_45

    .line 293
    .end local v10    # "index1":I
    .end local v12    # "index2":I
    .end local v16    # "tmpLen":I
    .restart local v9    # "index1":I
    .restart local v11    # "index2":I
    .restart local v15    # "tmpLen":I
    :cond_60
    if-nez p1, :cond_64

    .line 294
    const/4 v1, 0x0

    goto :goto_20

    .line 298
    :cond_64
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_7a

    .line 299
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_7a

    .line 300
    const/4 v1, 0x0

    goto :goto_20

    :cond_7a
    move/from16 v16, v15

    .end local v15    # "tmpLen":I
    .restart local v16    # "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .restart local v12    # "index2":I
    move v10, v9

    .line 302
    .end local v9    # "index1":I
    .restart local v10    # "index1":I
    goto :goto_45

    .line 304
    .end local v7    # "c1":C
    .end local v8    # "c2":C
    .end local v16    # "tmpLen":I
    .restart local v15    # "tmpLen":I
    :cond_7f
    const/4 v1, 0x1

    goto :goto_20

    .end local v10    # "index1":I
    .end local v12    # "index2":I
    .restart local v9    # "index1":I
    .restart local v11    # "index2":I
    :cond_81
    move/from16 v16, v15

    .end local v15    # "tmpLen":I
    .restart local v16    # "tmpLen":I
    move v12, v11

    .end local v11    # "index2":I
    .restart local v12    # "index2":I
    move v10, v9

    .end local v9    # "index1":I
    .restart local v10    # "index1":I
    goto :goto_45
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .prologue
    .line 57
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method

.method static toCharArray(Ljava/lang/CharSequence;)[C
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 240
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 241
    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 248
    .local v0, "array":[C
    .local v1, "i":I
    .local v2, "sz":I
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_a
    return-object v0

    .line 243
    .end local v0    # "array":[C
    .end local v1    # "i":I
    .end local v2    # "sz":I
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 244
    .restart local v2    # "sz":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-array v0, v3, [C

    .line 245
    .restart local v0    # "array":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_16
    if-ge v1, v2, :cond_a

    .line 246
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method
