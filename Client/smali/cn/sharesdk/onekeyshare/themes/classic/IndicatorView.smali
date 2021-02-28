.class public Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;
.super Landroid/view/View;
.source "IndicatorView.java"


# static fields
.field private static final DESIGN_BOTTOM_HEIGHT:I = 0x34

.field private static final DESIGN_INDICATOR_DISTANCE:I = 0xe

.field private static final DESIGN_INDICATOR_RADIUS:I = 0x6


# instance fields
.field private count:I

.field private current:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x1

    const/high16 v10, 0x42500000    # 52.0f

    const/high16 v11, 0x40000000    # 2.0f

    .line 42
    iget v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->count:I

    if-gt v9, v12, :cond_f

    .line 43
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->setVisibility(I)V

    .line 65
    :cond_e
    return-void

    .line 46
    :cond_f
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 47
    .local v3, "height":F
    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v9, v3

    div-float v7, v9, v10

    .line 48
    .local v7, "radius":F
    const/high16 v9, 0x41600000    # 14.0f

    mul-float/2addr v9, v3

    div-float v2, v9, v10

    .line 49
    .local v2, "distance":F
    mul-float v9, v7, v11

    iget v10, p0, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->count:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->count:I

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-float v8, v9, v10

    .line 50
    .local v8, "windowWidth":F
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v8

    div-float v5, v9, v11

    .line 51
    .local v5, "left":F
    div-float v1, v3, v11

    .line 53
    .local v1, "cy":F
    const/4 v9, -0x1

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 54
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_43
    iget v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->count:I

    if-ge v4, v9, :cond_e

    .line 57
    iget v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->current:I

    if-ne v4, v9, :cond_5e

    .line 58
    const v9, -0xa28e60

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    :goto_51
    mul-float v9, v7, v11

    add-float/2addr v9, v2

    int-to-float v10, v4

    mul-float/2addr v9, v10

    add-float v0, v5, v9

    .line 63
    .local v0, "cx":F
    invoke-virtual {p1, v0, v1, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 60
    .end local v0    # "cx":F
    :cond_5e
    const v9, -0x504e49

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_51
.end method

.method public onScreenChange(II)V
    .registers 4
    .param p1, "currentScreen"    # I
    .param p2, "lastScreen"    # I

    .prologue
    .line 35
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->current:I

    if-eq p1, v0, :cond_9

    .line 36
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->current:I

    .line 37
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->postInvalidate()V

    .line 39
    :cond_9
    return-void
.end method

.method public setScreenCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 31
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->count:I

    .line 32
    return-void
.end method
