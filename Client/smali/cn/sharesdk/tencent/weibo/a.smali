.class public Lcn/sharesdk/tencent/weibo/a;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method protected static a(I)C
    .registers 3

    .prologue
    const/16 v0, 0x3f

    .line 71
    if-ltz p0, :cond_c

    const/16 v1, 0x19

    if-gt p0, v1, :cond_c

    .line 72
    add-int/lit8 v0, p0, 0x41

    int-to-char v0, v0

    .line 86
    :cond_b
    :goto_b
    return v0

    .line 74
    :cond_c
    const/16 v1, 0x1a

    if-lt p0, v1, :cond_1a

    const/16 v1, 0x33

    if-gt p0, v1, :cond_1a

    .line 75
    add-int/lit8 v0, p0, -0x1a

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_b

    .line 77
    :cond_1a
    const/16 v1, 0x34

    if-lt p0, v1, :cond_28

    const/16 v1, 0x3d

    if-gt p0, v1, :cond_28

    .line 78
    add-int/lit8 v0, p0, -0x34

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_b

    .line 80
    :cond_28
    const/16 v1, 0x3e

    if-ne p0, v1, :cond_2f

    .line 81
    const/16 v0, 0x2b

    goto :goto_b

    .line 83
    :cond_2f
    if-ne p0, v0, :cond_b

    .line 84
    const/16 v0, 0x2f

    goto :goto_b
.end method

.method public static a([B)Ljava/lang/String;
    .registers 4

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 42
    invoke-static {p0, v0}, Lcn/sharesdk/tencent/weibo/a;->a([BI)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 41
    add-int/lit8 v0, v0, 0x3

    goto :goto_6

    .line 44
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a([BI)[C
    .registers 12

    .prologue
    const/16 v9, 0x3d

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 48
    .line 49
    array-length v0, p0

    sub-int/2addr v0, p1

    add-int/lit8 v2, v0, -0x1

    .line 50
    if-lt v2, v1, :cond_22

    move v0, v1

    :goto_c
    move v5, v4

    move v6, v4

    .line 51
    :goto_e
    if-gt v5, v0, :cond_24

    .line 52
    add-int v3, p1, v5

    aget-byte v3, p0, v3

    .line 53
    if-gez v3, :cond_18

    add-int/lit16 v3, v3, 0x100

    .line 54
    :cond_18
    rsub-int/lit8 v7, v5, 0x2

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v3, v7

    add-int/2addr v6, v3

    .line 51
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_e

    :cond_22
    move v0, v2

    .line 50
    goto :goto_c

    .line 56
    :cond_24
    new-array v3, v8, [C

    move v0, v4

    .line 57
    :goto_27
    if-ge v0, v8, :cond_3a

    .line 58
    rsub-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x6

    ushr-int v4, v6, v4

    and-int/lit8 v4, v4, 0x3f

    .line 59
    invoke-static {v4}, Lcn/sharesdk/tencent/weibo/a;->a(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 61
    :cond_3a
    const/4 v0, 0x1

    if-ge v2, v0, :cond_3f

    .line 62
    aput-char v9, v3, v1

    .line 64
    :cond_3f
    if-ge v2, v1, :cond_44

    .line 65
    const/4 v0, 0x3

    aput-char v9, v3, v0

    .line 67
    :cond_44
    return-object v3
.end method
