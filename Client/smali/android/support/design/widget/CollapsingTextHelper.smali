.class public final Landroid/support/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedShadowColor:I

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private drawTitle:Z

.field private final expandedBounds:Landroid/graphics/Rect;

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFraction:F

.field private expandedShadowColor:I

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private isRtl:Z

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private text:Ljava/lang/CharSequence;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;

.field private textureAscent:F

.field private textureDescent:F

.field private texturePaint:Landroid/graphics/Paint;

.field private final tmpPaint:Landroid/text/TextPaint;

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_1f

    move v0, v1

    :goto_8
    sput-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 58
    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 59
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1e

    .line 60
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    :cond_1e
    return-void

    .line 52
    :cond_1f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x10

    const/high16 v0, 0x41700000    # 15.0f

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    .line 74
    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    .line 75
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 76
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 124
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 126
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 127
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 132
    return-void
.end method

.method private static blendColors(IIF)I
    .registers 12
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 758
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p2

    .line 759
    .local v3, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v0, v5, v6

    .line 760
    .local v0, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v4, v5, v6

    .line 761
    .local v4, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v2, v5, v6

    .line 762
    .local v2, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v1, v5, v6

    .line 763
    .local v1, "b":F
    float-to-int v5, v0

    float-to-int v6, v4

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaseOffsets()V
    .registers 15

    .prologue
    const v13, 0x800007

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 448
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    .line 451
    .local v1, "currentTextSize":F
    iget v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-direct {p0, v7}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 452
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_ba

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    iget-object v11, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 453
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v7, v10, v9, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 454
    .local v5, "width":F
    :goto_21
    iget v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    iget-boolean v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    if-eqz v7, :cond_bd

    move v7, v8

    .line 455
    :goto_28
    invoke-static {v10, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 458
    .local v0, "collapsedAbsGravity":I
    and-int/lit8 v7, v0, 0x70

    sparse-switch v7, :sswitch_data_122

    .line 467
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float v3, v7, v10

    .line 468
    .local v3, "textHeight":F
    div-float v7, v3, v12

    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float v4, v7, v10

    .line 469
    .local v4, "textOffset":F
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    iput v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    .line 472
    .end local v3    # "textHeight":F
    .end local v4    # "textOffset":F
    :goto_53
    and-int v7, v0, v13

    sparse-switch v7, :sswitch_data_12c

    .line 481
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iput v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    .line 485
    :goto_5f
    iget v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    invoke-direct {p0, v7}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 486
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_f0

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v6, v7, v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 487
    :goto_76
    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    iget-boolean v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    if-eqz v7, :cond_f2

    .line 488
    :goto_7c
    invoke-static {v6, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 491
    .local v2, "expandedAbsGravity":I
    and-int/lit8 v6, v2, 0x70

    sparse-switch v6, :sswitch_data_136

    .line 500
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float v3, v6, v7

    .line 501
    .restart local v3    # "textHeight":F
    div-float v6, v3, v12

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float v4, v6, v7

    .line 502
    .restart local v4    # "textOffset":F
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    .line 505
    .end local v3    # "textHeight":F
    .end local v4    # "textOffset":F
    :goto_a7
    and-int v6, v2, v13

    sparse-switch v6, :sswitch_data_140

    .line 514
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    .line 519
    :goto_b3
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 521
    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 522
    return-void

    .end local v0    # "collapsedAbsGravity":I
    .end local v2    # "expandedAbsGravity":I
    .end local v5    # "width":F
    :cond_ba
    move v5, v6

    .line 453
    goto/16 :goto_21

    .restart local v5    # "width":F
    :cond_bd
    move v7, v9

    .line 454
    goto/16 :goto_28

    .line 460
    .restart local v0    # "collapsedAbsGravity":I
    :sswitch_c0
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iput v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    goto :goto_53

    .line 463
    :sswitch_c8
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float/2addr v7, v10

    iput v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    goto/16 :goto_53

    .line 474
    :sswitch_d8
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    div-float v10, v5, v12

    sub-float/2addr v7, v10

    iput v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    goto/16 :goto_5f

    .line 477
    :sswitch_e6
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    iput v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    goto/16 :goto_5f

    :cond_f0
    move v5, v6

    .line 486
    goto :goto_76

    :cond_f2
    move v8, v9

    .line 487
    goto :goto_7c

    .line 493
    .restart local v2    # "expandedAbsGravity":I
    :sswitch_f4
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    goto :goto_a7

    .line 496
    :sswitch_fc
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    goto :goto_a7

    .line 507
    :sswitch_10b
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    div-float v7, v5, v12

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_b3

    .line 510
    :sswitch_118
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_b3

    .line 458
    nop

    :sswitch_data_122
    .sparse-switch
        0x30 -> :sswitch_c8
        0x50 -> :sswitch_c0
    .end sparse-switch

    .line 472
    :sswitch_data_12c
    .sparse-switch
        0x1 -> :sswitch_d8
        0x5 -> :sswitch_e6
    .end sparse-switch

    .line 491
    :sswitch_data_136
    .sparse-switch
        0x30 -> :sswitch_fc
        0x50 -> :sswitch_f4
    .end sparse-switch

    .line 505
    :sswitch_data_140
    .sparse-switch
        0x1 -> :sswitch_10b
        0x5 -> :sswitch_118
    .end sparse-switch
.end method

.method private calculateCurrentOffsets()V
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 400
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 579
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 580
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_17

    .line 581
    .local v0, "defaultIsRtl":Z
    :goto_a
    if-eqz v0, :cond_19

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 584
    :goto_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    .line 581
    return v1

    .end local v0    # "defaultIsRtl":Z
    :cond_17
    move v0, v2

    .line 580
    goto :goto_a

    .line 581
    .restart local v0    # "defaultIsRtl":Z
    :cond_19
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_e
.end method

.method private calculateOffsets(F)V
    .registers 8
    .param p1, "fraction"    # F

    .prologue
    const/4 v5, 0x0

    .line 403
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    .line 404
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawX:F

    .line 405
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawY:F

    .line 407
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 408
    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 407
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 410
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_6b

    .line 413
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 414
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v1

    .line 413
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 419
    :goto_40
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowRadius:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 420
    invoke-static {v1, v2, p1, v5}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDx:F

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDx:F

    .line 421
    invoke-static {v2, v3, p1, v5}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDy:F

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDy:F

    .line 422
    invoke-static {v3, v4, p1, v5}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowColor:I

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowColor:I

    .line 423
    invoke-static {v4, v5, p1}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v4

    .line 419
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 425
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 426
    return-void

    .line 416
    :cond_6b
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_40
.end method

.method private calculateUsingTextSize(F)V
    .registers 15
    .param p1, "textSize"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 603
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v10, :cond_9

    .line 672
    :cond_8
    :goto_8
    return-void

    .line 607
    :cond_9
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v1, v10

    .line 608
    .local v1, "collapsedWidth":F
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v2, v10

    .line 612
    .local v2, "expandedWidth":F
    const/4 v7, 0x0

    .line 614
    .local v7, "updateDrawText":Z
    iget v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-static {p1, v10}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v10

    if-eqz v10, :cond_82

    .line 615
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 616
    .local v3, "newTextSize":F
    iput v12, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    .line 617
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iget-object v11, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eq v10, v11, :cond_2f

    .line 618
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    iput-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 619
    const/4 v7, 0x1

    .line 621
    :cond_2f
    move v0, v1

    .line 652
    .local v0, "availableWidth":F
    :goto_30
    const/4 v10, 0x0

    cmpl-float v10, v0, v10

    if-lez v10, :cond_46

    .line 653
    iget v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    cmpl-float v10, v10, v3

    if-nez v10, :cond_41

    iget-boolean v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    if-nez v10, :cond_41

    if-eqz v7, :cond_b6

    :cond_41
    move v7, v9

    .line 654
    :goto_42
    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    .line 655
    iput-boolean v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 658
    :cond_46
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v10, :cond_4c

    if-eqz v7, :cond_8

    .line 659
    :cond_4c
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v11, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 660
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 662
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v11, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_b8

    :goto_62
    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 665
    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 666
    invoke-static {v8, v9, v0, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 667
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 668
    iput-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 669
    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    goto :goto_8

    .line 623
    .end local v0    # "availableWidth":F
    .end local v3    # "newTextSize":F
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_82
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 624
    .restart local v3    # "newTextSize":F
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iget-object v11, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eq v10, v11, :cond_8f

    .line 625
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    iput-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 626
    const/4 v7, 0x1

    .line 628
    :cond_8f
    iget v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    invoke-static {p1, v10}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 630
    iput v12, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    .line 636
    :goto_99
    iget v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    iget v11, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    div-float v5, v10, v11

    .line 639
    .local v5, "textSizeRatio":F
    mul-float v4, v2, v5

    .line 641
    .local v4, "scaledDownWidth":F
    cmpl-float v10, v4, v1

    if-lez v10, :cond_b3

    .line 645
    div-float v10, v1, v5

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .restart local v0    # "availableWidth":F
    goto :goto_30

    .line 633
    .end local v0    # "availableWidth":F
    .end local v4    # "scaledDownWidth":F
    .end local v5    # "textSizeRatio":F
    :cond_ac
    iget v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    div-float v10, p1, v10

    iput v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    goto :goto_99

    .line 648
    .restart local v4    # "scaledDownWidth":F
    .restart local v5    # "textSizeRatio":F
    :cond_b3
    move v0, v2

    .restart local v0    # "availableWidth":F
    goto/16 :goto_30

    .end local v4    # "scaledDownWidth":F
    .end local v5    # "textSizeRatio":F
    :cond_b6
    move v7, v8

    .line 653
    goto :goto_42

    :cond_b8
    move v9, v8

    .line 662
    goto :goto_62
.end method

.method private clearTexture()V
    .registers 2

    .prologue
    .line 729
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 730
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 733
    :cond_c
    return-void
.end method

.method private ensureExpandedTexture()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 675
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_16

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 699
    :cond_16
    :goto_16
    return-void

    .line 679
    :cond_17
    invoke-direct {p0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 680
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    .line 681
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    .line 683
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v3, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 684
    .local v8, "w":I
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 686
    .local v7, "h":I
    if-lez v8, :cond_16

    if-lez v7, :cond_16

    .line 690
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 692
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 693
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v5, v7

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 695
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_16

    .line 697
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    goto :goto_16
.end method

.method private getCurrentExpandedTextColor()I
    .registers 4
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    if-eqz v0, :cond_e

    .line 431
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 433
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_d
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 213
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 215
    return-void
.end method

.method private interpolateBounds(F)V
    .registers 6
    .param p1, "fraction"    # F

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 526
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 527
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 528
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 529
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 530
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 531
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 532
    return-void
.end method

.method private static isClose(FF)Z
    .registers 4
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .prologue
    .line 740
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .registers 5
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 768
    if-eqz p3, :cond_6

    .line 769
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 771
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/support/design/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .registers 8
    .param p1, "resId"    # I

    .prologue
    const/4 v5, 0x0

    .line 312
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 313
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10103ac

    aput v4, v3, v5

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "family":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 317
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_28

    move-result-object v2

    .line 320
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    :goto_22
    return-object v2

    .line 320
    :cond_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    const/4 v2, 0x0

    goto :goto_22

    .line 320
    .end local v1    # "family":Ljava/lang/String;
    :catchall_28
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .registers 6
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 775
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private setInterpolatedTextSize(F)V
    .registers 4
    .param p1, "textSize"    # F

    .prologue
    .line 588
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 591
    sget-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    .line 593
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    if-eqz v0, :cond_19

    .line 595
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 598
    :cond_19
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 599
    return-void

    .line 591
    :cond_1f
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public calculateCollapsedTextWidth()F
    .registers 5

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 190
    const/4 v0, 0x0

    .line 193
    :goto_5
    return v0

    .line 192
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 193
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_5
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 537
    .local v10, "saveCount":I
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->drawTitle:Z

    if-eqz v0, :cond_43

    .line 538
    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawX:F

    .line 539
    .local v4, "x":F
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawY:F

    .line 541
    .local v5, "y":F
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_47

    const/4 v9, 0x1

    .line 545
    .local v9, "drawTexture":Z
    :goto_1a
    if-eqz v9, :cond_49

    .line 546
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float v7, v0, v1

    .line 547
    .local v7, "ascent":F
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float v8, v0, v1

    .line 559
    .local v8, "descent":F
    :goto_28
    if-eqz v9, :cond_2b

    .line 560
    add-float/2addr v5, v7

    .line 563
    :cond_2b
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3a

    .line 564
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 567
    :cond_3a
    if-eqz v9, :cond_5e

    .line 569
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 575
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v7    # "ascent":F
    .end local v8    # "descent":F
    .end local v9    # "drawTexture":Z
    :cond_43
    :goto_43
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 576
    return-void

    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_47
    move v9, v2

    .line 541
    goto :goto_1a

    .line 549
    .restart local v9    # "drawTexture":Z
    :cond_49
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float v7, v0, v1

    .line 550
    .restart local v7    # "ascent":F
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float v8, v0, v1

    .restart local v8    # "descent":F
    goto :goto_28

    .line 571
    :cond_5e
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_43
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 203
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 205
    .local v0, "isRtl":Z
    if-nez v0, :cond_2e

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 206
    :goto_d
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 207
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 208
    if-nez v0, :cond_39

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    add-float/2addr v1, v2

    :goto_1f
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 209
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 210
    return-void

    .line 205
    :cond_2e
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 206
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_d

    .line 208
    :cond_39
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    goto :goto_1f
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    return v0
.end method

.method public getCollapsedTextHeight()F
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 199
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getCollapsedTextSize()F
    .registers 2

    .prologue
    .line 391
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    return v0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_6
.end method

.method public getCurrentCollapsedTextColor()I
    .registers 4
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    if-eqz v0, :cond_e

    .line 441
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 443
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_d
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getExpandedTextGravity()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    return v0
.end method

.method public getExpandedTextSize()F
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    return v0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_6
.end method

.method public getExpansionFraction()F
    .registers 2

    .prologue
    .line 387
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isStateful()Z
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 383
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    .line 382
    :goto_19
    return v0

    .line 383
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method onBoundsChanged()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_21
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->drawTitle:Z

    .line 223
    return-void

    .line 222
    :cond_24
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public recalculate()V
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_16

    .line 705
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 706
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 708
    :cond_16
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 184
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 186
    :cond_13
    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .registers 6
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 249
    invoke-static {v1, p1, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 251
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 252
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 253
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 256
    :cond_1d
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 257
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    float-to-int v2, v2

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 262
    :cond_31
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowColor:I

    .line 264
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    .line 265
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDx:F

    .line 266
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    .line 267
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDy:F

    .line 268
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    .line 269
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 270
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_61

    .line 273
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 276
    :cond_61
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 277
    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 160
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 161
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 163
    :cond_9
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 237
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    if-eq v0, p1, :cond_9

    .line 238
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    .line 239
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 241
    :cond_9
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .registers 3
    .param p1, "textSize"    # F

    .prologue
    .line 152
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 153
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 154
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 156
    :cond_b
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_9

    .line 328
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 329
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 331
    :cond_9
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    .line 174
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 176
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 178
    :cond_13
    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .registers 6
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 280
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 282
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 281
    invoke-static {v1, p1, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 283
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 284
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 285
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 288
    :cond_1d
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 289
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    float-to-int v2, v2

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 294
    :cond_31
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowColor:I

    .line 296
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    .line 297
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDx:F

    .line 298
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    .line 299
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDy:F

    .line 300
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    .line 301
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowRadius:F

    .line 302
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 304
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_61

    .line 305
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 308
    :cond_61
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 309
    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 167
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 168
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 170
    :cond_9
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 226
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    if-eq v0, p1, :cond_9

    .line 227
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    .line 228
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 230
    :cond_9
    return-void
.end method

.method public setExpandedTextSize(F)V
    .registers 3
    .param p1, "textSize"    # F

    .prologue
    .line 145
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 146
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 147
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 149
    :cond_b
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_9

    .line 336
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 337
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 339
    :cond_9
    return-void
.end method

.method public setExpansionFraction(F)V
    .registers 4
    .param p1, "fraction"    # F

    .prologue
    .line 362
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/support/v4/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 364
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 365
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    .line 366
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 368
    :cond_12
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 141
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 142
    return-void
.end method

.method public final setState([I)Z
    .registers 3
    .param p1, "state"    # [I

    .prologue
    .line 371
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    .line 373
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 374
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 375
    const/4 v0, 0x1

    .line 378
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 716
    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 717
    :cond_a
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 719
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 720
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 722
    :cond_15
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 135
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 136
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 137
    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .registers 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 342
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 343
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 344
    return-void
.end method
