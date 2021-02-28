.class public Lcom/bsgamesdk/android/utils/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    if-lez p2, :cond_3

    if-lez p1, :cond_3

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    move-object p0, v0

    goto :goto_3
.end method

.method public static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/utils/g$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/utils/g$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/bsgamesdk/android/utils/g;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method
