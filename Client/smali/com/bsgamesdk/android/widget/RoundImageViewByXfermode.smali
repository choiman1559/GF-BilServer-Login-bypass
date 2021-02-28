.class public Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;
.super Landroid/widget/ImageView;


# static fields
.field public static final TYPE_CIRCLE:I = 0x0

.field public static final TYPE_ROUND:I = 0x1


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Xfermode;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->b:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->h:I

    aput v1, v0, v4

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->i:I

    aput v1, v0, v5

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->f:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->e:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->e:I

    if-ne v3, v4, :cond_3c

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->f:I

    int-to-float v4, v4

    iget v5, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->f:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3b
    return-object v0

    :cond_3c
    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3b
.end method

.method public invalidate()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->d:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->c:Landroid/graphics/Bitmap;

    :cond_e
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9f

    move-object v0, v2

    :goto_a
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_92

    :cond_12
    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_92

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getHeight()I

    move-result v1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->e:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_a9

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    int-to-float v7, v4

    div-float/2addr v0, v7

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_4c
    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v3, v10, v10, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_64
    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->c:Landroid/graphics/Bitmap;

    :cond_6a
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->b:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v1, v9, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->d:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_92
    if-eqz v0, :cond_9e

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_9e
    return-void

    :cond_9f
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto/16 :goto_a

    :cond_a9
    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    goto :goto_4c
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget v0, p0, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->e:I

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/bsgamesdk/android/widget/RoundImageViewByXfermode;->setMeasuredDimension(II)V

    :cond_16
    return-void
.end method
