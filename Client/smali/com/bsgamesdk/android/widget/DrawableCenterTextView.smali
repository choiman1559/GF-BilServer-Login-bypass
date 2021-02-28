.class public Lcom/bsgamesdk/android/widget/DrawableCenterTextView;
.super Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/DrawableCenterTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/DrawableCenterTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/DrawableCenterTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/DrawableCenterTextView;->getCompoundDrawablePadding()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    int-to-float v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/DrawableCenterTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_35
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
