.class final Lorg/apache/commons/lang3/CharRange;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/CharRange$CharacterIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method private constructor <init>(CCZ)V
    .registers 5
    .param p1, "start"    # C
    .param p2, "end"    # C
    .param p3, "negated"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-le p1, p2, :cond_8

    .line 69
    move v0, p1

    .line 70
    .local v0, "temp":C
    move p1, p2

    .line 71
    move p2, v0

    .line 74
    .end local v0    # "temp":C
    :cond_8
    iput-char p1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    .line 75
    iput-char p2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    .line 76
    iput-boolean p3, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    .line 77
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/lang3/CharRange;)Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/lang3/CharRange;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/lang3/CharRange;)C
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/lang3/CharRange;

    .prologue
    .line 33
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/lang3/CharRange;)C
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/lang3/CharRange;

    .prologue
    .line 33
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    return v0
.end method

.method public static is(C)Lorg/apache/commons/lang3/CharRange;
    .registers 3
    .param p0, "ch"    # C

    .prologue
    .line 88
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isIn(CC)Lorg/apache/commons/lang3/CharRange;
    .registers 4
    .param p0, "start"    # C
    .param p1, "end"    # C

    .prologue
    .line 113
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNot(C)Lorg/apache/commons/lang3/CharRange;
    .registers 3
    .param p0, "ch"    # C

    .prologue
    .line 100
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNotIn(CC)Lorg/apache/commons/lang3/CharRange;
    .registers 4
    .param p0, "start"    # C
    .param p1, "end"    # C

    .prologue
    .line 126
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method


# virtual methods
.method public contains(C)Z
    .registers 6
    .param p1, "ch"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt p1, v0, :cond_10

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt p1, v0, :cond_10

    move v0, v1

    :goto_b
    iget-boolean v3, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eq v0, v3, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_b

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method public contains(Lorg/apache/commons/lang3/CharRange;)Z
    .registers 7
    .param p1, "range"    # Lorg/apache/commons/lang3/CharRange;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_21

    move v0, v1

    :goto_5
    const-string v3, "The Range must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v0, :cond_34

    .line 184
    iget-boolean v0, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v0, :cond_25

    .line 185
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt v0, v3, :cond_23

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt v0, v3, :cond_23

    .line 192
    :cond_20
    :goto_20
    return v1

    :cond_21
    move v0, v2

    .line 182
    goto :goto_5

    :cond_23
    move v1, v2

    .line 185
    goto :goto_20

    .line 187
    :cond_25
    iget-char v0, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt v0, v3, :cond_31

    iget-char v0, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-le v0, v3, :cond_32

    :cond_31
    move v2, v1

    :cond_32
    move v1, v2

    goto :goto_20

    .line 189
    :cond_34
    iget-boolean v0, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v0, :cond_45

    .line 190
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-nez v0, :cond_43

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    const v3, 0xffff

    if-eq v0, v3, :cond_20

    :cond_43
    move v1, v2

    goto :goto_20

    .line 192
    :cond_45
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-gt v0, v3, :cond_51

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-ge v0, v3, :cond_20

    :cond_51
    move v1, v2

    goto :goto_20
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    if-ne p1, p0, :cond_5

    .line 213
    :cond_4
    :goto_4
    return v1

    .line 209
    :cond_5
    instance-of v3, p1, Lorg/apache/commons/lang3/CharRange;

    if-nez v3, :cond_b

    move v1, v2

    .line 210
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 212
    check-cast v0, Lorg/apache/commons/lang3/CharRange;

    .line 213
    .local v0, "other":Lorg/apache/commons/lang3/CharRange;
    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v4, v0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-ne v3, v4, :cond_20

    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v4, v0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    iget-boolean v4, v0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eq v3, v4, :cond_4

    :cond_20
    move v1, v2

    goto :goto_4
.end method

.method public getEnd()C
    .registers 2

    .prologue
    .line 146
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    return v0
.end method

.method public getStart()C
    .registers 2

    .prologue
    .line 137
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 223
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isNegated()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang3/CharRange;Lorg/apache/commons/lang3/CharRange$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 233
    iget-object v1, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    if-nez v1, :cond_30

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/commons/lang3/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 236
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    :cond_15
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-eq v1, v2, :cond_2a

    .line 240
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    .line 245
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_30
    iget-object v1, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    return-object v1
.end method
