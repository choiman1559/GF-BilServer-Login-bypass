.class public Lorg/apache/commons/lang3/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static varargs and([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    .line 939
    if-nez p0, :cond_a

    .line 940
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 942
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 943
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 946
    :cond_15
    :try_start_15
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v1

    .line 947
    .local v1, "primitive":[Z
    invoke-static {v1}, Lorg/apache/commons/lang3/BooleanUtils;->and([Z)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_21
    return-object v2

    :cond_22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_21

    .line 948
    .end local v1    # "primitive":[Z
    :catch_25
    move-exception v0

    .line 949
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array must not contain any null elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs and([Z)Z
    .registers 5
    .param p0, "array"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 905
    if-nez p0, :cond_b

    .line 906
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Array must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    :cond_b
    array-length v2, p0

    if-nez v2, :cond_16

    .line 909
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :cond_16
    array-length v3, p0

    move v2, v1

    :goto_18
    if-ge v2, v3, :cond_22

    aget-boolean v0, p0, v2

    .line 912
    .local v0, "element":Z
    if-nez v0, :cond_1f

    .line 916
    .end local v0    # "element":Z
    :goto_1e
    return v1

    .line 911
    .restart local v0    # "element":Z
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 916
    .end local v0    # "element":Z
    :cond_22
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method public static compare(ZZ)I
    .registers 3
    .param p0, "x"    # Z
    .param p1, "y"    # Z

    .prologue
    .line 1095
    if-ne p0, p1, :cond_4

    .line 1096
    const/4 v0, 0x0

    .line 1098
    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public static isFalse(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 122
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotFalse(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 140
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isFalse(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isNotTrue(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 104
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static varargs or([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    .line 1008
    if-nez p0, :cond_a

    .line 1009
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 1012
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1015
    :cond_15
    :try_start_15
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v1

    .line 1016
    .local v1, "primitive":[Z
    invoke-static {v1}, Lorg/apache/commons/lang3/BooleanUtils;->or([Z)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_21
    return-object v2

    :cond_22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_21

    .line 1017
    .end local v1    # "primitive":[Z
    :catch_25
    move-exception v0

    .line 1018
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array must not contain any null elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs or([Z)Z
    .registers 5
    .param p0, "array"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 973
    if-nez p0, :cond_b

    .line 974
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Array must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 976
    :cond_b
    array-length v2, p0

    if-nez v2, :cond_16

    .line 977
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :cond_16
    array-length v3, p0

    move v2, v1

    :goto_18
    if-ge v2, v3, :cond_1f

    aget-boolean v0, p0, v2

    .line 980
    .local v0, "element":Z
    if-eqz v0, :cond_20

    .line 981
    const/4 v1, 0x1

    .line 984
    .end local v0    # "element":Z
    :cond_1f
    return v1

    .line 979
    .restart local v0    # "element":Z
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method public static toBoolean(I)Z
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 198
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static toBoolean(III)Z
    .registers 5
    .param p0, "value"    # I
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I

    .prologue
    .line 261
    if-ne p0, p1, :cond_4

    .line 262
    const/4 v0, 0x1

    .line 265
    :goto_3
    return v0

    .line 264
    :cond_4
    if-ne p0, p2, :cond_8

    .line 265
    const/4 v0, 0x0

    goto :goto_3

    .line 268
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 158
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toBoolean(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 289
    if-nez p0, :cond_b

    .line 290
    if-nez p1, :cond_7

    .line 299
    :cond_6
    :goto_6
    return v0

    .line 293
    :cond_7
    if-nez p2, :cond_19

    move v0, v1

    .line 294
    goto :goto_6

    .line 296
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 298
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 299
    goto :goto_6

    .line 302
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 709
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 727
    if-ne p0, p1, :cond_5

    .line 735
    :cond_4
    :goto_4
    return v0

    .line 729
    :cond_5
    if-ne p0, p2, :cond_9

    move v0, v1

    .line 730
    goto :goto_4

    .line 731
    :cond_9
    if-eqz p0, :cond_19

    .line 732
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 734
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 735
    goto :goto_4

    .line 739
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanDefaultIfNull(Ljava/lang/Boolean;Z)Z
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "valueIfNull"    # Z

    .prologue
    .line 175
    if-nez p0, :cond_3

    .line 178
    .end local p1    # "valueIfNull":Z
    :goto_2
    return p1

    .restart local p1    # "valueIfNull":Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2
.end method

.method public static toBooleanObject(I)Ljava/lang/Boolean;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 216
    if-nez p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public static toBooleanObject(IIII)Ljava/lang/Boolean;
    .registers 6
    .param p0, "value"    # I
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I
    .param p3, "nullValue"    # I

    .prologue
    .line 324
    if-ne p0, p1, :cond_5

    .line 325
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 331
    :goto_4
    return-object v0

    .line 327
    :cond_5
    if-ne p0, p2, :cond_a

    .line 328
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 330
    :cond_a
    if-ne p0, p3, :cond_e

    .line 331
    const/4 v0, 0x0

    goto :goto_4

    .line 334
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "value"    # Ljava/lang/Integer;

    .prologue
    .line 238
    if-nez p0, :cond_4

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static toBooleanObject(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 6
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;
    .param p3, "nullValue"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 356
    if-nez p0, :cond_17

    .line 357
    if-nez p1, :cond_8

    .line 358
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 371
    :cond_7
    :goto_7
    return-object v0

    .line 360
    :cond_8
    if-nez p2, :cond_d

    .line 361
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 363
    :cond_d
    if-eqz p3, :cond_7

    .line 374
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 367
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 368
    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 369
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 370
    :cond_29
    invoke-virtual {p0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x66

    const/16 v8, 0x46

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 553
    const-string v5, "true"

    if-ne p0, v5, :cond_e

    .line 554
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 633
    :goto_d
    return-object v5

    .line 556
    :cond_e
    if-nez p0, :cond_12

    .line 557
    const/4 v5, 0x0

    goto :goto_d

    .line 559
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    packed-switch v5, :pswitch_data_11e

    .line 633
    :cond_19
    const/4 v5, 0x0

    goto :goto_d

    .line 561
    :pswitch_1b
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 562
    .local v0, "ch0":C
    const/16 v5, 0x79

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x59

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x74

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x54

    if-ne v0, v5, :cond_32

    .line 564
    :cond_2f
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    .line 566
    :cond_32
    const/16 v5, 0x6e

    if-eq v0, v5, :cond_3e

    const/16 v5, 0x4e

    if-eq v0, v5, :cond_3e

    if-eq v0, v9, :cond_3e

    if-ne v0, v8, :cond_19

    .line 568
    :cond_3e
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    .line 573
    .end local v0    # "ch0":C
    :pswitch_41
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 574
    .restart local v0    # "ch0":C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 575
    .local v1, "ch1":C
    const/16 v5, 0x6f

    if-eq v0, v5, :cond_51

    const/16 v5, 0x4f

    if-ne v0, v5, :cond_5c

    :cond_51
    const/16 v5, 0x6e

    if-eq v1, v5, :cond_59

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_5c

    .line 577
    :cond_59
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    .line 579
    :cond_5c
    const/16 v5, 0x6e

    if-eq v0, v5, :cond_64

    const/16 v5, 0x4e

    if-ne v0, v5, :cond_19

    :cond_64
    const/16 v5, 0x6f

    if-eq v1, v5, :cond_6c

    const/16 v5, 0x4f

    if-ne v1, v5, :cond_19

    .line 581
    :cond_6c
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    .line 586
    .end local v0    # "ch0":C
    .end local v1    # "ch1":C
    :pswitch_6f
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 587
    .restart local v0    # "ch0":C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 588
    .restart local v1    # "ch1":C
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 589
    .local v2, "ch2":C
    const/16 v5, 0x79

    if-eq v0, v5, :cond_83

    const/16 v5, 0x59

    if-ne v0, v5, :cond_97

    :cond_83
    const/16 v5, 0x65

    if-eq v1, v5, :cond_8b

    const/16 v5, 0x45

    if-ne v1, v5, :cond_97

    :cond_8b
    const/16 v5, 0x73

    if-eq v2, v5, :cond_93

    const/16 v5, 0x53

    if-ne v2, v5, :cond_97

    .line 592
    :cond_93
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 594
    :cond_97
    const/16 v5, 0x6f

    if-eq v0, v5, :cond_9f

    const/16 v5, 0x4f

    if-ne v0, v5, :cond_19

    :cond_9f
    if-eq v1, v9, :cond_a3

    if-ne v1, v8, :cond_19

    :cond_a3
    if-eq v2, v9, :cond_a7

    if-ne v2, v8, :cond_19

    .line 597
    :cond_a7
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 602
    .end local v0    # "ch0":C
    .end local v1    # "ch1":C
    .end local v2    # "ch2":C
    :pswitch_ab
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 603
    .restart local v0    # "ch0":C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 604
    .restart local v1    # "ch1":C
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 605
    .restart local v2    # "ch2":C
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 606
    .local v3, "ch3":C
    const/16 v5, 0x74

    if-eq v0, v5, :cond_c4

    const/16 v5, 0x54

    if-ne v0, v5, :cond_19

    :cond_c4
    const/16 v5, 0x72

    if-eq v1, v5, :cond_cc

    const/16 v5, 0x52

    if-ne v1, v5, :cond_19

    :cond_cc
    const/16 v5, 0x75

    if-eq v2, v5, :cond_d4

    const/16 v5, 0x55

    if-ne v2, v5, :cond_19

    :cond_d4
    const/16 v5, 0x65

    if-eq v3, v5, :cond_dc

    const/16 v5, 0x45

    if-ne v3, v5, :cond_19

    .line 610
    :cond_dc
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 615
    .end local v0    # "ch0":C
    .end local v1    # "ch1":C
    .end local v2    # "ch2":C
    .end local v3    # "ch3":C
    :pswitch_e0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 616
    .restart local v0    # "ch0":C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 617
    .restart local v1    # "ch1":C
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 618
    .restart local v2    # "ch2":C
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 619
    .restart local v3    # "ch3":C
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 620
    .local v4, "ch4":C
    if-eq v0, v9, :cond_fa

    if-ne v0, v8, :cond_19

    :cond_fa
    const/16 v5, 0x61

    if-eq v1, v5, :cond_102

    const/16 v5, 0x41

    if-ne v1, v5, :cond_19

    :cond_102
    const/16 v5, 0x6c

    if-eq v2, v5, :cond_10a

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_19

    :cond_10a
    const/16 v5, 0x73

    if-eq v3, v5, :cond_112

    const/16 v5, 0x53

    if-ne v3, v5, :cond_19

    :cond_112
    const/16 v5, 0x65

    if-eq v4, v5, :cond_11a

    const/16 v5, 0x45

    if-ne v4, v5, :cond_19

    .line 625
    :cond_11a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 559
    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_41
        :pswitch_6f
        :pswitch_ab
        :pswitch_e0
    .end packed-switch
.end method

.method public static toBooleanObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;
    .param p3, "nullString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 656
    if-nez p0, :cond_17

    .line 657
    if-nez p1, :cond_8

    .line 658
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 671
    :cond_7
    :goto_7
    return-object v0

    .line 660
    :cond_8
    if-nez p2, :cond_d

    .line 661
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 663
    :cond_d
    if-eqz p3, :cond_7

    .line 674
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 667
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 668
    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 669
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 670
    :cond_29
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7
.end method

.method public static toInteger(Ljava/lang/Boolean;III)I
    .registers 5
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I
    .param p3, "nullValue"    # I

    .prologue
    .line 465
    if-nez p0, :cond_3

    .line 468
    .end local p1    # "trueValue":I
    .end local p3    # "nullValue":I
    :goto_2
    return p3

    .restart local p1    # "trueValue":I
    .restart local p3    # "nullValue":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p1    # "trueValue":I
    :goto_9
    move p3, p1

    goto :goto_2

    .restart local p1    # "trueValue":I
    :cond_b
    move p1, p2

    goto :goto_9
.end method

.method public static toInteger(Z)I
    .registers 2
    .param p0, "bool"    # Z

    .prologue
    .line 392
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static toInteger(ZII)I
    .registers 3
    .param p0, "bool"    # Z
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I

    .prologue
    .line 446
    if-eqz p0, :cond_3

    .end local p1    # "trueValue":I
    :goto_2
    return p1

    .restart local p1    # "trueValue":I
    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 2
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 426
    if-nez p0, :cond_4

    .line 427
    const/4 v0, 0x0

    .line 429
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_3

    :cond_d
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_3
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;
    .param p3, "nullValue"    # Ljava/lang/Integer;

    .prologue
    .line 504
    if-nez p0, :cond_3

    .line 507
    .end local p1    # "trueValue":Ljava/lang/Integer;
    .end local p3    # "nullValue":Ljava/lang/Integer;
    :goto_2
    return-object p3

    .restart local p1    # "trueValue":Ljava/lang/Integer;
    .restart local p3    # "nullValue":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p1    # "trueValue":Ljava/lang/Integer;
    :goto_9
    move-object p3, p1

    goto :goto_2

    .restart local p1    # "trueValue":Ljava/lang/Integer;
    :cond_b
    move-object p1, p2

    goto :goto_9
.end method

.method public static toIntegerObject(Z)Ljava/lang/Integer;
    .registers 2
    .param p0, "bool"    # Z

    .prologue
    .line 408
    if-eqz p0, :cond_5

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_4
.end method

.method public static toIntegerObject(ZLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3
    .param p0, "bool"    # Z
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;

    .prologue
    .line 485
    if-eqz p0, :cond_3

    .end local p1    # "trueValue":Ljava/lang/Integer;
    :goto_2
    return-object p1

    .restart local p1    # "trueValue":Ljava/lang/Integer;
    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;
    .param p3, "nullString"    # Ljava/lang/String;

    .prologue
    .line 811
    if-nez p0, :cond_3

    .line 814
    .end local p1    # "trueString":Ljava/lang/String;
    .end local p3    # "nullString":Ljava/lang/String;
    :goto_2
    return-object p3

    .restart local p1    # "trueString":Ljava/lang/String;
    .restart local p3    # "nullString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .end local p1    # "trueString":Ljava/lang/String;
    :goto_9
    move-object p3, p1

    goto :goto_2

    .restart local p1    # "trueString":Ljava/lang/String;
    :cond_b
    move-object p1, p2

    goto :goto_9
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "bool"    # Z
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;

    .prologue
    .line 881
    if-eqz p0, :cond_3

    .end local p1    # "trueString":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "trueString":Ljava/lang/String;
    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method public static toStringOnOff(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 775
    const-string v0, "on"

    const-string v1, "off"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .registers 3
    .param p0, "bool"    # Z

    .prologue
    .line 848
    const-string v0, "on"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 758
    const-string v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .registers 3
    .param p0, "bool"    # Z

    .prologue
    .line 832
    const-string v0, "true"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 792
    const-string v0, "yes"

    const-string v1, "no"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .registers 3
    .param p0, "bool"    # Z

    .prologue
    .line 864
    const-string v0, "yes"

    const-string v1, "no"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs xor([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    .line 1070
    if-nez p0, :cond_a

    .line 1071
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1073
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 1074
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1077
    :cond_15
    :try_start_15
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v1

    .line 1078
    .local v1, "primitive":[Z
    invoke-static {v1}, Lorg/apache/commons/lang3/BooleanUtils;->xor([Z)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_21
    return-object v2

    :cond_22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_21

    .line 1079
    .end local v1    # "primitive":[Z
    :catch_25
    move-exception v0

    .line 1080
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array must not contain any null elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs xor([Z)Z
    .registers 5
    .param p0, "array"    # [Z

    .prologue
    .line 1038
    if-nez p0, :cond_a

    .line 1039
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1041
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    .line 1042
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1046
    :cond_15
    const/4 v1, 0x0

    .line 1047
    .local v1, "result":Z
    array-length v3, p0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v3, :cond_20

    aget-boolean v0, p0, v2

    .line 1048
    .local v0, "element":Z
    xor-int/2addr v1, v0

    .line 1047
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1051
    .end local v0    # "element":Z
    :cond_20
    return v1
.end method
