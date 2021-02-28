.class public Lorg/apache/commons/lang3/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static varargs containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 127
    :cond_d
    :goto_d
    return v2

    .line 121
    :cond_e
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v1

    .line 122
    .local v1, "chars":Lorg/apache/commons/lang3/CharSet;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_18
    if-ge v3, v5, :cond_d

    aget-char v0, v4, v3

    .line 123
    .local v0, "c":C
    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 124
    const/4 v2, 0x1

    goto :goto_d

    .line 122
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method

.method public static varargs count(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_d
    move v2, v3

    .line 161
    :cond_e
    return v2

    .line 154
    :cond_f
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v1

    .line 155
    .local v1, "chars":Lorg/apache/commons/lang3/CharSet;
    const/4 v2, 0x0

    .line 156
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    :goto_19
    if-ge v3, v5, :cond_e

    aget-char v0, v4, v3

    .line 157
    .local v0, "c":C
    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 156
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_19
.end method

.method private static deepEmpty([Ljava/lang/String;)Z
    .registers 6
    .param p0, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 251
    if-eqz p0, :cond_13

    .line 252
    array-length v3, p0

    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_13

    aget-object v0, p0, v2

    .line 253
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 258
    .end local v0    # "s":Ljava/lang/String;
    :goto_f
    return v1

    .line 252
    .restart local v0    # "s":Ljava/lang/String;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 258
    .end local v0    # "s":Ljava/lang/String;
    :cond_13
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public static varargs delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 219
    .end local p0    # "str":Ljava/lang/String;
    :cond_c
    :goto_c
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_d
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static varargs keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .prologue
    .line 186
    if-nez p0, :cond_4

    .line 187
    const/4 v0, 0x0

    .line 192
    :goto_3
    return-object v0

    .line 189
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 190
    :cond_10
    const-string v0, ""

    goto :goto_3

    .line 192
    :cond_13
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;
    .param p2, "expect"    # Z

    .prologue
    .line 232
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v1

    .line 233
    .local v1, "chars":Lorg/apache/commons/lang3/CharSet;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 235
    .local v3, "chrs":[C
    array-length v5, v3

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v5, :cond_23

    aget-char v2, v3, v4

    .line 236
    .local v2, "chr":C
    invoke-virtual {v1, v2}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-ne v6, p2, :cond_20

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 240
    .end local v2    # "chr":C
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static varargs squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 93
    .end local p0    # "str":Ljava/lang/String;
    :cond_c
    :goto_c
    return-object p0

    .line 67
    .restart local p0    # "str":Ljava/lang/String;
    :cond_d
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v2

    .line 68
    .local v2, "chars":Lorg/apache/commons/lang3/CharSet;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 70
    .local v3, "chrs":[C
    array-length v8, v3

    .line 71
    .local v8, "sz":I
    const/4 v9, 0x0

    aget-char v6, v3, v9

    .line 72
    .local v6, "lastChar":C
    const/16 v1, 0x20

    .line 73
    .local v1, "ch":C
    const/4 v5, 0x0

    .line 74
    .local v5, "inChars":Ljava/lang/Character;
    const/4 v7, 0x0

    .line 75
    .local v7, "notInChars":Ljava/lang/Character;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2a
    if-ge v4, v8, :cond_57

    .line 77
    aget-char v1, v3, v4

    .line 78
    if-ne v1, v6, :cond_52

    .line 79
    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-ne v1, v9, :cond_3b

    .line 76
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 82
    :cond_3b
    if-eqz v7, :cond_43

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-eq v1, v9, :cond_52

    .line 83
    :cond_43
    invoke-virtual {v2, v1}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 84
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 85
    goto :goto_38

    .line 87
    :cond_4e
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    .line 90
    :cond_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    move v6, v1

    goto :goto_38

    .line 93
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method
