.class public Landroid/support/design/widget/ShadowDrawableWrapper;
.super Landroid/support/v7/graphics/drawable/DrawableWrapper;
.source "ShadowDrawableWrapper.java"


# static fields
.field static final COS_45:D

.field static final SHADOW_BOTTOM_SCALE:F = 1.0f

.field static final SHADOW_HORIZ_SCALE:F = 0.5f

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field static final SHADOW_TOP_SCALE:F = 0.25f


# instance fields
.field private addPaddingForCorners:Z

.field final contentBounds:Landroid/graphics/RectF;

.field cornerRadius:F

.field final cornerShadowPaint:Landroid/graphics/Paint;

.field cornerShadowPath:Landroid/graphics/Path;

.field private dirty:Z

.field final edgeShadowPaint:Landroid/graphics/Paint;

.field maxShadowSize:F

.field private printedShadowClipWarning:Z

.field rawMaxShadowSize:F

.field rawShadowSize:F

.field private rotation:F

.field private final shadowEndColor:I

.field private final shadowMiddleColor:I

.field shadowSize:F

.field private final shadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "radius"    # F
    .param p4, "shadowSize"    # F
    .param p5, "maxShadowSize"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 74
    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 79
    iput-boolean v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    .line 85
    sget v0, Landroid/support/design/R$color;->design_fab_shadow_start_color:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowStartColor:I

    .line 86
    sget v0, Landroid/support/design/R$color;->design_fab_shadow_mid_color:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowMiddleColor:I

    .line 87
    sget v0, Landroid/support/design/R$color;->design_fab_shadow_end_color:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowEndColor:I

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    invoke-virtual {p0, p4, p5}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 96
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 357
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v0, v1, v2

    .line 358
    .local v0, "verticalOffset":F
    iget-object v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 364
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    .line 365
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    invoke-direct {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->buildShadowCorners()V

    .line 372
    return-void
.end method

.method private buildShadowCorners()V
    .registers 18

    .prologue
    .line 306
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    invoke-direct {v13, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 307
    .local v13, "innerBounds":Landroid/graphics/RectF;
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 308
    .local v15, "outerBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    neg-float v2, v2

    invoke-virtual {v15, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    if-nez v1, :cond_10a

    .line 311
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    .line 315
    :goto_38
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v15, v2, v3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v13, v2, v3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 324
    iget v1, v15, Landroid/graphics/RectF;->top:F

    neg-float v4, v1

    .line 325
    .local v4, "shadowRadius":F
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_cf

    .line 326
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    div-float v16, v1, v4

    .line 327
    .local v16, "startRatio":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v14, v16, v1

    .line 328
    .local v14, "midRatio":F
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowStartColor:I

    aput v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowMiddleColor:I

    aput v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowEndColor:I

    aput v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v9, 0x0

    aput v9, v6, v7

    const/4 v7, 0x1

    aput v16, v6, v7

    const/4 v7, 0x2

    aput v14, v6, v7

    const/4 v7, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 341
    .end local v14    # "midRatio":F
    .end local v16    # "startRatio":F
    :cond_cf
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    iget v7, v13, Landroid/graphics/RectF;->top:F

    const/4 v8, 0x0

    iget v9, v15, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x3

    new-array v10, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowStartColor:I

    aput v3, v10, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowMiddleColor:I

    aput v3, v10, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowEndColor:I

    aput v3, v10, v2

    const/4 v2, 0x3

    new-array v11, v2, [F

    fill-array-data v11, :array_114

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    return-void

    .line 313
    .end local v4    # "shadowRadius":F
    :cond_10a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_38

    .line 341
    nop

    :array_114
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static calculateHorizontalPadding(FFZ)F
    .registers 9
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    .line 177
    if-eqz p2, :cond_c

    .line 178
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 180
    .end local p0    # "maxShadowSize":F
    :cond_c
    return p0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .registers 9
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 168
    if-eqz p2, :cond_10

    .line 169
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 171
    :goto_f
    return v0

    :cond_10
    mul-float/2addr v0, p0

    goto :goto_f
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 219
    .local v11, "rotateSaved":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rotation:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 221
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    sub-float v5, v3, v4

    .line 222
    .local v5, "edgeShadowTop":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    .line 223
    .local v13, "shadowOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v13

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_20f

    const/4 v9, 0x1

    .line 224
    .local v9, "drawHorizontalEdges":Z
    :goto_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v13

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_212

    const/4 v10, 0x1

    .line 226
    .local v10, "drawVerticalEdges":Z
    :goto_50
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v4, v6

    sub-float v16, v3, v4

    .line 227
    .local v16, "shadowOffsetTop":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    sub-float v15, v3, v4

    .line 228
    .local v15, "shadowOffsetHorizontal":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v4, v6

    sub-float v14, v3, v4

    .line 230
    .local v14, "shadowOffsetBottom":F
    add-float v3, v13, v15

    div-float v18, v13, v3

    .line 231
    .local v18, "shadowScaleHorizontal":F
    add-float v3, v13, v16

    div-float v19, v13, v3

    .line 232
    .local v19, "shadowScaleTop":F
    add-float v3, v13, v14

    div-float v17, v13, v3

    .line 235
    .local v17, "shadowScaleBottom":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 236
    .local v12, "saved":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    if-eqz v9, :cond_d9

    .line 241
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v18

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 242
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 245
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    .line 242
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 249
    :cond_d9
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 254
    const/high16 v3, 0x43340000    # 180.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    if-eqz v9, :cond_140

    .line 258
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v18

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 259
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 262
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    add-float/2addr v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    .line 259
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 266
    :cond_140
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 271
    const/high16 v3, 0x43870000    # 270.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    if-eqz v10, :cond_1a2

    .line 275
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v17

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 276
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 279
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    .line 276
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    :cond_1a2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 288
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    if-eqz v10, :cond_204

    .line 292
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v19

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 293
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 296
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    .line 293
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    :cond_204
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 302
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 303
    return-void

    .line 223
    .end local v9    # "drawHorizontalEdges":Z
    .end local v10    # "drawVerticalEdges":Z
    .end local v12    # "saved":I
    .end local v14    # "shadowOffsetBottom":F
    .end local v15    # "shadowOffsetHorizontal":F
    .end local v16    # "shadowOffsetTop":F
    .end local v17    # "shadowScaleBottom":F
    .end local v18    # "shadowScaleHorizontal":F
    .end local v19    # "shadowScaleTop":F
    :cond_20f
    const/4 v9, 0x0

    goto/16 :goto_3e

    .line 224
    .restart local v9    # "drawHorizontalEdges":Z
    :cond_212
    const/4 v10, 0x0

    goto/16 :goto_50
.end method

.method private static toEven(F)I
    .registers 4
    .param p0, "value"    # F

    .prologue
    .line 100
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 101
    .local v0, "i":I
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    add-int/lit8 v0, v0, -0x1

    .end local v0    # "i":I
    :cond_b
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 201
    iget-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    if-eqz v0, :cond_e

    .line 202
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->buildComponents(Landroid/graphics/Rect;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 205
    :cond_e
    invoke-direct {p0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->drawShadow(Landroid/graphics/Canvas;)V

    .line 207
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 208
    return-void
.end method

.method public getCornerRadius()F
    .registers 2

    .prologue
    .line 375
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    return v0
.end method

.method public getMaxShadowSize()F
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    return v0
.end method

.method public getMinHeight()F
    .registers 7

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40000000    # 2.0f

    .line 392
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 393
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v4, v1

    .line 394
    .local v0, "content":F
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    mul-float/2addr v1, v5

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method public getMinWidth()F
    .registers 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 387
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v4, v1

    .line 388
    .local v0, "content":F
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 186
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget-boolean v4, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 157
    invoke-static {v2, v3, v4}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 158
    .local v1, "vOffset":I
    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget-boolean v4, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 161
    invoke-static {v2, v3, v4}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 162
    .local v0, "hOffset":I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    const/4 v2, 0x1

    return v2
.end method

.method public getShadowSize()F
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 119
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .registers 2
    .param p1, "addPaddingForCorners"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 106
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    .line 107
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 112
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3
    .param p1, "radius"    # F

    .prologue
    .line 190
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p1, v0

    .line 191
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    .line 197
    :goto_b
    return-void

    .line 194
    :cond_c
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 196
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    goto :goto_b
.end method

.method public setMaxShadowSize(F)V
    .registers 3
    .param p1, "size"    # F

    .prologue
    .line 379
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 380
    return-void
.end method

.method public final setRotation(F)V
    .registers 3
    .param p1, "rotation"    # F

    .prologue
    .line 211
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 212
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rotation:F

    .line 213
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    .line 215
    :cond_b
    return-void
.end method

.method public setShadowSize(F)V
    .registers 3
    .param p1, "size"    # F

    .prologue
    .line 145
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 146
    return-void
.end method

.method public setShadowSize(FF)V
    .registers 6
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_a

    cmpg-float v0, p2, v1

    if-gez v0, :cond_12

    .line 123
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_12
    invoke-static {p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->toEven(F)I

    move-result v0

    int-to-float p1, v0

    .line 126
    invoke-static {p2}, Landroid/support/design/widget/ShadowDrawableWrapper;->toEven(F)I

    move-result v0

    int-to-float p2, v0

    .line 127
    cmpl-float v0, p1, p2

    if-lez v0, :cond_27

    .line 128
    move p1, p2

    .line 129
    iget-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    if-nez v0, :cond_27

    .line 130
    iput-boolean v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    .line 133
    :cond_27
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_34

    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_34

    .line 142
    :goto_33
    return-void

    .line 136
    :cond_34
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    .line 137
    iput p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 138
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    .line 139
    iput p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->maxShadowSize:F

    .line 140
    iput-boolean v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 141
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    goto :goto_33
.end method
