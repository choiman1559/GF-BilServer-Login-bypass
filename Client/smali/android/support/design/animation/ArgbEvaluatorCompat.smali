.class public Landroid/support/design/animation/ArgbEvaluatorCompat;
.super Ljava/lang/Object;
.source "ArgbEvaluatorCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Landroid/support/design/animation/ArgbEvaluatorCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Landroid/support/design/animation/ArgbEvaluatorCompat;

    invoke-direct {v0}, Landroid/support/design/animation/ArgbEvaluatorCompat;-><init>()V

    sput-object v0, Landroid/support/design/animation/ArgbEvaluatorCompat;->instance:Landroid/support/design/animation/ArgbEvaluatorCompat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/support/design/animation/ArgbEvaluatorCompat;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Landroid/support/design/animation/ArgbEvaluatorCompat;->instance:Landroid/support/design/animation/ArgbEvaluatorCompat;

    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 22
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Integer;
    .param p3, "endValue"    # Ljava/lang/Integer;

    .prologue
    .line 55
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 56
    .local v12, "startInt":I
    shr-int/lit8 v14, v12, 0x18

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v9, v14, v15

    .line 57
    .local v9, "startA":F
    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v13, v14, v15

    .line 58
    .local v13, "startR":F
    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v11, v14, v15

    .line 59
    .local v11, "startG":F
    and-int/lit16 v14, v12, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v10, v14, v15

    .line 61
    .local v10, "startB":F
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 62
    .local v5, "endInt":I
    shr-int/lit8 v14, v5, 0x18

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v2, v14, v15

    .line 63
    .local v2, "endA":F
    shr-int/lit8 v14, v5, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v6, v14, v15

    .line 64
    .local v6, "endR":F
    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v4, v14, v15

    .line 65
    .local v4, "endG":F
    and-int/lit16 v14, v5, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v3, v14, v15

    .line 68
    .local v3, "endB":F
    float-to-double v14, v13

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v13, v14

    .line 69
    float-to-double v14, v11

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v11, v14

    .line 70
    float-to-double v14, v10

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v10, v14

    .line 72
    float-to-double v14, v6

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v6, v14

    .line 73
    float-to-double v14, v4

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v4, v14

    .line 74
    float-to-double v14, v3

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v3, v14

    .line 77
    sub-float v14, v2, v9

    mul-float v14, v14, p1

    add-float v0, v9, v14

    .line 78
    .local v0, "a":F
    sub-float v14, v6, v13

    mul-float v14, v14, p1

    add-float v8, v13, v14

    .line 79
    .local v8, "r":F
    sub-float v14, v4, v11

    mul-float v14, v14, p1

    add-float v7, v11, v14

    .line 80
    .local v7, "g":F
    sub-float v14, v3, v10

    mul-float v14, v14, p1

    add-float v1, v10, v14

    .line 83
    .local v1, "b":F
    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v0, v14

    .line 84
    float-to-double v14, v8

    const-wide v16, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v8, v14, v15

    .line 85
    float-to-double v14, v7

    const-wide v16, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v7, v14, v15

    .line 86
    float-to-double v14, v1

    const-wide v16, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v1, v14, v15

    .line 88
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v15

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v15

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v15

    or-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    return-object v14
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 27
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
