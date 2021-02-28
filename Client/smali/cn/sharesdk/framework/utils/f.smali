.class public abstract Lcn/sharesdk/framework/utils/f;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Lcn/sharesdk/framework/utils/Escaper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a([CII)[C
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 483
    new-array v0, p2, [C

    .line 484
    if-lez p1, :cond_8

    .line 485
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    :cond_8
    return-object v0
.end method

.method protected static final b(Ljava/lang/CharSequence;II)I
    .registers 8

    .prologue
    .line 452
    if-ge p1, p2, :cond_87

    .line 453
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 454
    add-int/lit8 v1, p1, 0x1

    .line 455
    const v2, 0xd800

    if-lt v0, v2, :cond_12

    const v2, 0xdfff

    if-le v0, v2, :cond_13

    .line 467
    :cond_12
    :goto_12
    return v0

    .line 458
    :cond_13
    const v2, 0xdbff

    if-gt v0, v2, :cond_58

    .line 461
    if-ne v1, p2, :cond_1c

    .line 462
    neg-int v0, v0

    goto :goto_12

    .line 465
    :cond_1c
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 466
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 467
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_12

    .line 469
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected low surrogate but got char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected low surrogate character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :cond_87
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;II)I
    .registers 6

    .prologue
    .line 122
    .line 123
    :goto_0
    if-ge p2, p3, :cond_e

    .line 124
    invoke-static {p1, p2, p3}, Lcn/sharesdk/framework/utils/f;->b(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 125
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/utils/f;->a(I)[C

    move-result-object v1

    if-eqz v1, :cond_f

    .line 130
    :cond_e
    return p2

    .line 128
    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    :goto_16
    add-int/2addr p2, v0

    .line 129
    goto :goto_0

    .line 128
    :cond_18
    const/4 v0, 0x1

    goto :goto_16
.end method

.method protected final a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 191
    new-instance v0, Lcn/sharesdk/framework/utils/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/utils/f$a;-><init>(Lcn/sharesdk/framework/utils/f$1;)V

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/f$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    move v3, v4

    move-object v1, v0

    move v0, v4

    .line 195
    :goto_14
    if-ge p2, v5, :cond_5b

    .line 196
    invoke-static {p1, p2, v5}, Lcn/sharesdk/framework/utils/f;->b(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 197
    if-gez v2, :cond_24

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trailing high surrogate at end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_24
    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/utils/f;->a(I)[C

    move-result-object v6

    .line 201
    if-eqz v6, :cond_4b

    .line 202
    sub-int v7, p2, v3

    .line 207
    add-int v8, v0, v7

    array-length v9, v6

    add-int/2addr v8, v9

    .line 208
    array-length v9, v1

    if-ge v9, v8, :cond_3c

    .line 209
    sub-int v9, v5, p2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x20

    .line 210
    invoke-static {v1, v0, v8}, Lcn/sharesdk/framework/utils/f;->a([CII)[C

    move-result-object v1

    .line 213
    :cond_3c
    if-lez v7, :cond_42

    .line 214
    invoke-virtual {p1, v3, p2, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 215
    add-int/2addr v0, v7

    .line 217
    :cond_42
    array-length v3, v6

    if-lez v3, :cond_4b

    .line 218
    array-length v3, v6

    invoke-static {v6, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    array-length v3, v6

    add-int/2addr v0, v3

    .line 222
    :cond_4b
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x2

    :goto_52
    add-int/2addr v2, p2

    .line 223
    invoke-virtual {p0, p1, v2, v5}, Lcn/sharesdk/framework/utils/f;->a(Ljava/lang/CharSequence;II)I

    move-result p2

    move v3, v2

    .line 224
    goto :goto_14

    .line 222
    :cond_59
    const/4 v2, 0x1

    goto :goto_52

    .line 229
    :cond_5b
    sub-int v2, v5, v3

    .line 230
    if-lez v2, :cond_6b

    .line 231
    add-int/2addr v2, v0

    .line 232
    array-length v6, v1

    if-ge v6, v2, :cond_67

    .line 233
    invoke-static {v1, v0, v2}, Lcn/sharesdk/framework/utils/f;->a([CII)[C

    move-result-object v1

    .line 235
    :cond_67
    invoke-virtual {p1, v3, v5, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v2

    .line 238
    :cond_6b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method protected abstract a(I)[C
.end method

.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "out"    # Ljava/lang/Appendable;

    .prologue
    .line 286
    invoke-static {p1}, Lcn/sharesdk/framework/utils/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Lcn/sharesdk/framework/utils/f$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/framework/utils/f$1;-><init>(Lcn/sharesdk/framework/utils/f;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcn/sharesdk/framework/utils/f;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 163
    if-ne v1, v0, :cond_c

    .end local p1    # "string":Ljava/lang/String;
    :goto_b
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0, p1, v1}, Lcn/sharesdk/framework/utils/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b
.end method
