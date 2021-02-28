.class public final Lcom/unity3d/player/k;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/k$a;
    }
.end annotation


# instance fields
.field a:Lcom/unity3d/player/UnityPlayer;

.field b:Lcom/unity3d/player/j;

.field c:Landroid/content/Context;

.field d:I

.field e:Landroid/widget/VideoView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;

.field i:Ljava/util/Timer;

.field j:I

.field k:I

.field l:Z

.field m:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/j;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/player/k;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/k;->j:I

    iget v0, p0, Lcom/unity3d/player/k;->d:I

    iput v0, p0, Lcom/unity3d/player/k;->k:I

    new-instance v0, Lcom/unity3d/player/k$4;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k$4;-><init>(Lcom/unity3d/player/k;)V

    iput-object v0, p0, Lcom/unity3d/player/k;->m:Ljava/util/TimerTask;

    iput-object p1, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/UnityPlayer;

    iput-object p3, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-direct {p0}, Lcom/unity3d/player/k;->d()V

    invoke-direct {p0}, Lcom/unity3d/player/k;->e()V

    invoke-direct {p0}, Lcom/unity3d/player/k;->g()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/unity3d/player/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_7

    move-object v0, v2

    :goto_6
    return-object v0

    :cond_7
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    move-object v0, v2

    goto :goto_6

    :cond_12
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_21
    array-length v4, v3

    if-ge v0, v4, :cond_3a

    aget-object v4, v3, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    aget-object v0, v4, v6

    goto :goto_6

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3a
    move-object v0, v2

    goto :goto_6
.end method

.method static synthetic a(Lcom/unity3d/player/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/k;->h()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/k;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/k;->i()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "deeplinker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "primaryUrl"

    invoke-static {p1, v0}, Lcom/unity3d/player/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fallbackUrl"

    invoke-static {p1, v1}, Lcom/unity3d/player/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/player/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/unity3d/player/k;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    if-eqz v0, :cond_44

    invoke-static {v0}, Lcom/unity3d/player/k;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->h()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    new-instance v1, Lcom/unity3d/player/k$a;

    invoke-direct {v1, p0}, Lcom/unity3d/player/k$a;-><init>(Lcom/unity3d/player/k;)V

    iget-object v2, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v2}, Lcom/unity3d/player/j;->h()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/player/k$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_40
    invoke-direct {p0, v0}, Lcom/unity3d/player/k;->c(Ljava/lang/String;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    if-eqz v1, :cond_43

    invoke-static {v1}, Lcom/unity3d/player/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->i()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    new-instance v0, Lcom/unity3d/player/k$a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k$a;-><init>(Lcom/unity3d/player/k;)V

    iget-object v2, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v2}, Lcom/unity3d/player/j;->i()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unity3d/player/k$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_62
    invoke-direct {p0, v1}, Lcom/unity3d/player/k;->c(Ljava/lang/String;)V

    goto :goto_43

    :cond_66
    invoke-static {p1}, Lcom/unity3d/player/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-direct {p0, p1}, Lcom/unity3d/player/k;->c(Ljava/lang/String;)V

    goto :goto_43
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->e()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/unity3d/player/k$a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k$a;-><init>(Lcom/unity3d/player/k;)V

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->e()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/k$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method private d()V
    .registers 7

    const/16 v5, 0xb

    const/16 v4, 0x9

    const/4 v3, -0x1

    const-string v0, "VIDEO"

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    if-nez v0, :cond_25

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v2, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v3}, Lcom/unity3d/player/j;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/player/k;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->addView(Landroid/view/View;)V

    goto :goto_25

    :cond_84
    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_25

    iget-object v1, p0, Lcom/unity3d/player/k;->f:Landroid/widget/ImageView;

    if-nez v1, :cond_25

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_ad
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/player/k;->f:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/unity3d/player/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unity3d/player/k;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->addView(Landroid/view/View;)V

    goto/16 :goto_25
.end method

.method private d(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private e()V
    .registers 6

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getShowSplashSlogan()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "unity_splash_slogan"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/unity3d/player/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/player/k;->g:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2}, Lcom/unity3d/player/UnityPlayer;->getShowSplashSloganHeight()I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/unity3d/player/k;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unity3d/player/k;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->g:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unity3d/player/k;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->addView(Landroid/view/View;)V

    :cond_6a
    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_3

    :catch_11
    move-exception v1

    goto :goto_3
.end method

.method private f()V
    .registers 7

    const/16 v5, 0x14

    const/4 v4, 0x5

    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skip "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unity3d/player/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    if-eqz v1, :cond_25

    const-string v0, "Skip"

    :cond_25
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x48

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/unity3d/player/k$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/k$1;-><init>(Lcom/unity3d/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->addView(Landroid/view/View;)V

    return-void
.end method

.method private g()V
    .registers 6

    const/4 v4, 0x5

    const/4 v2, -0x2

    const/16 v3, 0xa

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unity3d/player/k;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x20

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x40

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "ADS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->addView(Landroid/view/View;)V

    return-void
.end method

.method private h()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/k;->i:Ljava/util/Timer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unity3d/player/k;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_12
    iget-object v0, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->NotifySplashAdsFinished()V

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->l()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/unity3d/player/k$a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k$a;-><init>(Lcom/unity3d/player/k;)V

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->l()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/k$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_16
    invoke-direct {p0}, Lcom/unity3d/player/k;->h()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->f()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->f()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/k;->d:I

    iget v0, p0, Lcom/unity3d/player/k;->d:I

    iput v0, p0, Lcom/unity3d/player/k;->k:I

    :cond_16
    invoke-direct {p0}, Lcom/unity3d/player/k;->f()V

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    new-instance v1, Lcom/unity3d/player/k$2;

    invoke-direct {v1, p0}, Lcom/unity3d/player/k$2;-><init>(Lcom/unity3d/player/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :goto_2c
    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0}, Lcom/unity3d/player/j;->d()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v0, Lcom/unity3d/player/k$a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k$a;-><init>(Lcom/unity3d/player/k;)V

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/j;

    invoke-virtual {v1}, Lcom/unity3d/player/j;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/k$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_42
    new-instance v0, Lcom/unity3d/player/k$3;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k$3;-><init>(Lcom/unity3d/player/k;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_4b
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/k;->i:Ljava/util/Timer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/k;->l:Z

    iget-object v0, p0, Lcom/unity3d/player/k;->i:Ljava/util/Timer;

    iget-object v1, p0, Lcom/unity3d/player/k;->m:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_2c
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/k;->j:I

    :cond_11
    iget-object v0, p0, Lcom/unity3d/player/k;->i:Ljava/util/Timer;

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/k;->l:Z

    :cond_18
    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/unity3d/player/k;->e:Landroid/widget/VideoView;

    iget v1, p0, Lcom/unity3d/player/k;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_10
    iget-object v0, p0, Lcom/unity3d/player/k;->i:Ljava/util/Timer;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/k;->l:Z

    :cond_17
    return-void
.end method
