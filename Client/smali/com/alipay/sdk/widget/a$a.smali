.class public Lcom/alipay/sdk/widget/a$a;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/a;


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/widget/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .registers 4

    if-nez p1, :cond_f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    return v0

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_6
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p2}, Lcom/alipay/sdk/encrypt/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_35
    .catchall {:try_start_1 .. :try_end_a} :catchall_44

    :try_start_a
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-gtz p3, :cond_13

    const/16 p3, 0xf0

    :cond_13
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2f} :catch_52
    .catchall {:try_start_a .. :try_end_2f} :catchall_50

    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_4c

    :cond_34
    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    move-object v2, v1

    :goto_37
    :try_start_37
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_50

    if-eqz v2, :cond_54

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_41

    move-object v0, v1

    goto :goto_34

    :catch_41
    move-exception v0

    move-object v0, v1

    goto :goto_34

    :catchall_44
    move-exception v0

    move-object v2, v1

    :goto_46
    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4e

    :cond_4b
    :goto_4b
    throw v0

    :catch_4c
    move-exception v1

    goto :goto_34

    :catch_4e
    move-exception v1

    goto :goto_4b

    :catchall_50
    move-exception v0

    goto :goto_46

    :catch_52
    move-exception v0

    goto :goto_37

    :cond_54
    move-object v0, v1

    goto :goto_34
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .registers 14

    const/high16 v11, 0x41880000    # 17.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v9, -0x2

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-direct {p0, p1, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, -0x1ae0dcc9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p0, p1, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, p1, v2}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v1}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v11}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v2}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v3}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v3, v5}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v5}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/alipay/sdk/widget/a;->d:Ljava/lang/String;

    const/16 v1, 0x1e0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ff

    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    :goto_c7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, p1, v11}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v10, v10, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v9, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_ff
    iget-object v0, p0, Lcom/alipay/sdk/widget/a$a;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c7
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/a$a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/a$a;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/a$a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    return-void
.end method
