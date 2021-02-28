.class public Lcom/bsgamesdk/android/widget/SwitchImg;
.super Landroid/view/View;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;
    }
.end annotation


# static fields
.field public static final HIDE:I = 0x0

.field public static final SHOW:I = 0x1


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;

.field public status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bsgamesdk/android/widget/SwitchImg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->status:I

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/widget/SwitchImg;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchImg;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->f:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/bsgamesdk/android/widget/SwitchImg;->getAttrId(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    if-eq v1, v2, :cond_41

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->g:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/bsgamesdk/android/widget/SwitchImg;->getAttrId(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    if-eq v1, v2, :cond_41

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->f:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/bsgamesdk/android/widget/SwitchImg;->getAttrId(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->a:Landroid/graphics/Bitmap;

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->g:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/bsgamesdk/android/widget/SwitchImg;->getAttrId(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->c:I

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->d:I

    :cond_41
    return-void
.end method


# virtual methods
.method public getAttrId(Landroid/content/Context;Landroid/util/AttributeSet;I)I
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p3, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_14
    .catchall {:try_start_c .. :try_end_f} :catchall_1d

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_13
    return v0

    :catch_14
    move-exception v0

    :try_start_15
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d

    const/4 v0, -0x1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_13

    :catchall_1d
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public getOnStatusChangeListener()Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->f:Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_11
.end method

.method protected onMeasure(II)V
    .registers 5

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->c:I

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/bsgamesdk/android/widget/SwitchImg;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :goto_8
    :pswitch_8
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    :pswitch_c
    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->status:I

    if-ne v0, v2, :cond_22

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->status:I

    :goto_13
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->f:Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->f:Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->status:I

    invoke-interface {v0, p0, v1}, Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;->OnStatusChange(Landroid/view/View;I)V

    :cond_1e
    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchImg;->invalidate()V

    goto :goto_8

    :cond_22
    iput v2, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->status:I

    goto :goto_13

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public setOnStatusChangeListener(Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->f:Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;

    return-void
.end method

.method public setStatus(I)V
    .registers 3

    iput p1, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->status:I

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->f:Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchImg;->f:Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/bsgamesdk/android/widget/SwitchImg$OnStatusChangeListener;->OnStatusChange(Landroid/view/View;I)V

    :cond_b
    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchImg;->invalidate()V

    return-void
.end method
