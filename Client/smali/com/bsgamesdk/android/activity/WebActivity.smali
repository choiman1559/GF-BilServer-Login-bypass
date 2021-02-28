.class public Lcom/bsgamesdk/android/activity/WebActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;,
        Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;
    }
.end annotation


# static fields
.field public static final WEBACFINISH:I = 0xbb9

.field public static final WEBACFINISH_AGGREEN:I = 0xbba

.field public static final WEB_TITLE:Ljava/lang/String; = "title"

.field public static final WEB_TYPE:Ljava/lang/String; = "web_type"

.field public static final WEB_URL:Ljava/lang/String; = "url"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:Z

.field g:Lcom/bsgamesdk/android/api/h;

.field h:Landroid/graphics/drawable/AnimationDrawable;

.field private i:Landroid/webkit/WebView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/FrameLayout;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:J

.field private v:J

.field private w:Landroid/os/Bundle;

.field private x:Z

.field private y:I


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->f:Z

    iput-wide v2, p0, Lcom/bsgamesdk/android/activity/WebActivity;->u:J

    iput-wide v2, p0, Lcom/bsgamesdk/android/activity/WebActivity;->v:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->h:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/WebActivity;J)J
    .registers 4

    iput-wide p1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->u:J

    return-wide p1
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$10;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$10;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(IZ)V
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x3

    :try_start_2
    iget v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->e:I

    if-eq v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    if-nez p2, :cond_13

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget p1, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_13
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4a

    const/4 v1, 0x1

    const/high16 v2, 0x43f50000    # 490.0f

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    const/high16 v2, 0x439b0000    # 310.0f

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :catch_48
    move-exception v0

    goto :goto_6

    :cond_4a
    if-ne p1, v2, :cond_6

    const/4 v1, 0x1

    const/high16 v2, 0x43f50000    # 490.0f

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, 0x1

    const/high16 v2, 0x439b0000    # 310.0f

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_75} :catch_48

    goto :goto_6
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    :goto_15
    return-void

    :cond_16
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_15

    :catch_2e
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method private a(Landroid/webkit/WebView;Landroid/webkit/WebSettings;)V
    .registers 8

    const/16 v4, 0xa0

    const/16 v3, 0x78

    const/16 v2, 0x64

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_49

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    :goto_21
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_73

    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :goto_2f
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/16 v1, 0x28a

    if-le v0, v1, :cond_79

    const/16 v0, 0xbe

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    :goto_48
    return-void

    :cond_49
    if-ne v0, v4, :cond_51

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_21

    :cond_51
    if-ne v0, v3, :cond_59

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_21

    :cond_59
    const/16 v1, 0x140

    if-ne v0, v1, :cond_63

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_21

    :cond_63
    const/16 v1, 0xd5

    if-ne v0, v1, :cond_6d

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_21

    :cond_6d
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_21

    :cond_73
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto :goto_2f

    :cond_79
    const/16 v1, 0x208

    if-le v0, v1, :cond_81

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_48

    :cond_81
    const/16 v1, 0x1c2

    if-le v0, v1, :cond_8b

    const/16 v0, 0x8c

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_48

    :cond_8b
    const/16 v1, 0x12c

    if-le v0, v1, :cond_93

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_48

    :cond_93
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_48
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/WebActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    const/16 v6, 0xb

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x1

    const-string v0, "bsgamesdk_iv_web_loading"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->q:Landroid/widget/ImageView;

    const-string v0, "bsgamesdk_layoutLoading_web"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->r:Landroid/widget/RelativeLayout;

    const-string v0, "bsgamesdk_ib_loading_back"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->s:Landroid/widget/ImageButton;

    const-string v0, "bsgamesdk_ib_loading_finish"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->t:Landroid/widget/ImageButton;

    const-string v0, "bsgamesdk_web_title"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->m:Landroid/widget/TextView;

    const-string v0, "bsgamesdk_iv_error_refresh_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->l:Landroid/widget/ImageView;

    const-string v0, "bsgamesdk_error_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->j:Landroid/widget/RelativeLayout;

    const-string v0, "bsgamesdk_web_webview"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    const-string v0, "bsgamesdk_ib_error_back_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->k:Landroid/widget/ImageButton;

    const-string v0, "bsgamesdk_ib_error_finish_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->n:Landroid/widget/ImageButton;

    const-string v0, "bagamesdk_b_error_back_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->o:Landroid/widget/Button;

    const-string v0, "bsgamesdk_web_root"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->p:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v5}, Lcom/bsgamesdk/android/activity/WebActivity;->a(IZ)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->e:I

    if-ne v0, v1, :cond_17c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->an()Z

    move-result v0

    if-nez v0, :cond_16b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_d5
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$2;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_df
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_f9

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_f9
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_11b

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_11b
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    new-instance v2, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/activity/WebActivity$MWebViewClient;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    new-instance v2, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;

    invoke-direct {v2, p0}, Lcom/bsgamesdk/android/activity/WebActivity$MWebChromeClient;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    new-instance v2, Lcom/bsgamesdk/android/activity/JSBridge;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/WebActivity;->d:Ljava/lang/String;

    new-instance v4, Lcom/bsgamesdk/android/activity/WebActivity$9;

    invoke-direct {v4, p0}, Lcom/bsgamesdk/android/activity/WebActivity$9;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-direct {v2, p0, v3, v4}, Lcom/bsgamesdk/android/activity/JSBridge;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/activity/JSBridge$OnBackListener;)V

    const-string v3, "BiliJsObject"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_160

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_160
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    invoke-direct {p0, v1, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Landroid/webkit/WebView;Landroid/webkit/WebSettings;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_16b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$1;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d5

    :cond_17c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$3;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$4;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$4;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$5;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$5;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$6;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$6;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$7;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$7;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/WebActivity$8;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/WebActivity$8;-><init>(Lcom/bsgamesdk/android/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_df
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/WebActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/WebActivity;J)J
    .registers 4

    iput-wide p1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->v:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->r:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b()V
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "result"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_10

    :goto_c
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Lorg/json/JSONObject;)V

    return-void

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&merchant_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&server_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&sdk_log_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&net="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/WebActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bsgamesdk/android/api/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/WebActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->a()V

    return-void
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/WebActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->x:Z

    return v0
.end method

.method public static goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "web_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/WebActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->v:J

    return-wide v0
.end method

.method static synthetic i(Lcom/bsgamesdk/android/activity/WebActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->u:J

    return-wide v0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_11

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_1f
    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_2b

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    :goto_24
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->finish()V

    return-void

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method public onBackPressed()V
    .registers 5

    const/16 v3, 0xbba

    iget v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->e:I

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->f:Z

    if-eqz v0, :cond_3d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type_js"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->finish()V

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    iget v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->e:I

    if-eq v0, v1, :cond_26

    const/4 v0, 0x2

    iget v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->e:I

    if-ne v0, v1, :cond_3c

    :cond_26
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->f:Z

    if-eqz v0, :cond_49

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type_js"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->finish()V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->finish()V

    goto :goto_1c

    :cond_49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->finish()V

    goto :goto_3c
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bsgamesdk/android/activity/WebActivity;->a(IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->finish()V

    :goto_e
    return-void

    :cond_f
    iput-object p0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->a:Landroid/content/Context;

    invoke-direct {p0, p0}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Landroid/content/Context;)V

    const-string v0, "bsgamesdk_activity_web"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_ba

    const-string v1, "agreement"

    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bsgamesdk/android/activity/WebActivity;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ba

    iput v4, p0, Lcom/bsgamesdk/android/activity/WebActivity;->e:I

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->w:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->w:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->y:I

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alone=1&type=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->c:Ljava/lang/String;

    :goto_88
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alone=1&type=2&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->c:Ljava/lang/String;

    goto :goto_88

    :cond_ba
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "web_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->e:I

    iget v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->e:I

    if-ne v0, v4, :cond_fe

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->c:Ljava/lang/String;

    goto :goto_88

    :cond_fe
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->c:Ljava/lang/String;

    goto/16 :goto_88
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_24

    :try_start_7
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity;->i:Landroid/webkit/WebView;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_28

    :cond_24
    :goto_24
    invoke-direct {p0, p0}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Landroid/content/Context;)V

    return-void

    :catch_28
    move-exception v0

    goto :goto_24
.end method
