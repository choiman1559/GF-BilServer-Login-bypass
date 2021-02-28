.class public Lcn/sharesdk/onekeyshare/themes/classic/XView;
.super Landroid/view/View;
.source "XView.java"


# instance fields
.field private ratio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 29
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->getWidth()I

    move-result v0

    div-int/lit8 v13, v0, 0x2

    .line 30
    .local v13, "width":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->getHeight()I

    move-result v0

    div-int/lit8 v12, v0, 0x2

    .line 32
    .local v12, "height":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 33
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    const v0, -0x5f5f60

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    int-to-float v1, v13

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v12

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    new-instance v5, Landroid/graphics/Paint;

    .end local v5    # "paint":Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .restart local v5    # "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/XView;->ratio:F

    mul-float/2addr v0, v1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/XView;->ratio:F

    mul-float v2, v0, v1

    .line 42
    .local v2, "left":F
    int-to-float v0, v13

    add-float v1, v0, v2

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v2

    int-to-float v0, v13

    sub-float v4, v0, v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    int-to-float v0, v13

    add-float v7, v0, v2

    int-to-float v0, v13

    sub-float v8, v0, v2

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v9, v0, v2

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 44
    return-void
.end method

.method public setRatio(F)V
    .registers 2
    .param p1, "ratio"    # F

    .prologue
    .line 25
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/XView;->ratio:F

    .line 26
    return-void
.end method
