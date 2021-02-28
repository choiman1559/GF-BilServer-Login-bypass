.class public Lcom/bsgamesdk/android/widget/SwitchButton;
.super Landroid/widget/CheckBox;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;,
        Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;

.field private C:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private D:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private E:Z

.field private final F:F

.field private G:F

.field private final H:F

.field private I:F

.field private J:F

.field private K:F

.field private a:Landroid/graphics/Paint;

.field private b:Landroid/view/ViewParent;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/PorterDuffXfermode;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:I

.field private v:I

.field private final w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->w:I

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->x:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->F:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->H:F

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/widget/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(F)F
    .registers 4

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->s:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    return v0
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->b:Landroid/view/ViewParent;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->b:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_10
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lcom/bsgamesdk/android/utils/f$b;->a:I

    aput v2, v1, v4

    sget v2, Lcom/bsgamesdk/android/utils/f$b;->d:I

    aput v2, v1, v5

    sget v2, Lcom/bsgamesdk/android/utils/f$b;->e:I

    aput v2, v1, v6

    sget v2, Lcom/bsgamesdk/android/utils/f$b;->b:I

    aput v2, v1, v7

    sget v2, Lcom/bsgamesdk/android/utils/f$b;->c:I

    aput v2, v1, v8

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->u:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->v:I

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->f:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->s:F

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->q:F

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->r:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->s:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->q:F

    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->s:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    if-eqz v0, :cond_fe

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    :goto_ae
    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->a(F)F

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->m:F

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43af0000    # 350.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->G:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->I:F

    new-instance v0, Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->I:F

    iget-object v4, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->I:F

    add-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->j:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_fe
    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    goto :goto_ae
.end method

.method private a(Z)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->E:Z

    if-eqz p1, :cond_18

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->G:F

    neg-float v0, v0

    :goto_8
    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->K:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->J:F

    new-instance v0, Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;-><init>(Lcom/bsgamesdk/android/widget/SwitchButton;Lcom/bsgamesdk/android/widget/SwitchButton$1;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/SwitchButton$SwitchAnimation;->run()V

    return-void

    :cond_18
    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->G:F

    goto :goto_8
.end method

.method static synthetic a(Lcom/bsgamesdk/android/widget/SwitchButton;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->E:Z

    return v0
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->E:Z

    return-void
.end method

.method private b(F)V
    .registers 3

    iput p1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->a(F)F

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->m:F

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->invalidate()V

    return-void
.end method

.method static synthetic b(Lcom/bsgamesdk/android/widget/SwitchButton;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->J:F

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->K:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->J:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->J:F

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_26

    invoke-direct {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->b()V

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->J:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->setCheckedDelayed(Z)V

    :cond_20
    :goto_20
    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->J:F

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->b(F)V

    return-void

    :cond_26
    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->J:F

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_20

    invoke-direct {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->b()V

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->J:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->setCheckedDelayed(Z)V

    goto :goto_20
.end method

.method private setCheckedDelayed(Z)V
    .registers 6

    new-instance v0, Lcom/bsgamesdk/android/widget/SwitchButton$1;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/widget/SwitchButton$1;-><init>(Lcom/bsgamesdk/android/widget/SwitchButton;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/bsgamesdk/android/widget/SwitchButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->x:I

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->I:F

    iget-object v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->j:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->m:F

    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->I:F

    iget-object v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->g:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->I:F

    iget-object v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->m:F

    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->I:F

    iget-object v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->q:F

    float-to-int v0, v0

    iget v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->r:F

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->I:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/bsgamesdk/android/widget/SwitchButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->l:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->k:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    packed-switch v2, :pswitch_data_d4

    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->invalidate()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->isEnabled()Z

    move-result v0

    return v0

    :pswitch_29
    invoke-direct {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->a()V

    iput v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->l:F

    iput v4, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->k:F

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->d:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    :goto_3a
    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->t:F

    goto :goto_21

    :cond_3d
    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    goto :goto_3a

    :pswitch_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->t:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->l:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_62

    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    iput v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    :cond_62
    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6e

    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    iput v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    :cond_6e
    iget v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    iget v4, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8a

    :goto_7f
    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->A:Z

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->a(F)F

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->m:F

    goto :goto_21

    :cond_8a
    move v0, v1

    goto :goto_7f

    :pswitch_8c
    iget-object v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->f:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v2, v8

    long-to-float v2, v2

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->v:I

    int-to-float v3, v3

    cmpg-float v3, v6, v3

    if-gez v3, :cond_c8

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->v:I

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_c8

    iget v3, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->u:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c8

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->B:Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;

    if-nez v0, :cond_bb

    new-instance v0, Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;-><init>(Lcom/bsgamesdk/android/widget/SwitchButton;Lcom/bsgamesdk/android/widget/SwitchButton$1;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->B:Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;

    :cond_bb
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->B:Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->performClick()Z

    goto/16 :goto_21

    :cond_c8
    iget-boolean v2, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->A:Z

    if-nez v2, :cond_d1

    :goto_cc
    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->a(Z)V

    goto/16 :goto_21

    :cond_d1
    move v0, v1

    goto :goto_cc

    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_29
        :pswitch_8c
        :pswitch_40
    .end packed-switch
.end method

.method public performClick()Z
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->a(Z)V

    return v1

    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setChecked(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    if-eq v0, p1, :cond_1b

    iput-boolean p1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    if-eqz p1, :cond_1c

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->o:F

    :goto_a
    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->n:F

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->a(F)F

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->m:F

    invoke-virtual {p0}, Lcom/bsgamesdk/android/widget/SwitchButton;->invalidate()V

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->z:Z

    if-eqz v0, :cond_1f

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->p:F

    goto :goto_a

    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->z:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->C:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->C:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_2d
    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->D:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->D:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->z:Z

    goto :goto_1b
.end method

.method public setEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_a

    const/16 v0, 0xff

    :goto_4
    iput v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->x:I

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void

    :cond_a
    const/16 v0, 0x7f

    goto :goto_4
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->C:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->D:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton;->y:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->setChecked(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
