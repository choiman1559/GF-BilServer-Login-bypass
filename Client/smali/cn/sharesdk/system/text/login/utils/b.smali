.class public Lcn/sharesdk/system/text/login/utils/b;
.super Landroid/widget/EditText;
.source "CommEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 18
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 19
    const v0, 0xcacaca

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/b;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/b;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 23
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/b;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/b;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v9, v0

    .line 24
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/b;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v10, v0

    move-object v6, p1

    move v8, v1

    move-object v11, v5

    .line 23
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 25
    const v0, -0x353536

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/b;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/b;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    .line 27
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/utils/b;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    .line 26
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 28
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 29
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 31
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 34
    return-void
.end method
