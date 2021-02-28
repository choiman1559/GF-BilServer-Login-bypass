.class public Lcom/bsgamesdk/android/activity/CaptchaWebActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;,
        Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebChromeClient;
    }
.end annotation


# static fields
.field public static CAPTCHA_PUBLIC:Ljava/lang/String; = null

.field public static final CAPTCHA_TYPE_GEETEST:Ljava/lang/String; = "geetest"

.field public static final CAPTCHA_TYPE_IMG:Ljava/lang/String; = "img"

.field public static final WEBACFINISH:I = 0x15b3

.field public static final WEBACFINISH_AUTO_LOGIN:I = 0x15bd

.field public static final WEBACFINISH_LOGIN_AUTH:I = 0x15ba

.field public static final WEBACFINISH_PHONE_CAPTCHA:I = 0x15b6

.field public static final WEBACFINISH_RENEW:I = 0x15bc

.field public static final WEBACFINISH_RENEWAL:I = 0x15bb

.field public static final WEBACFINISH_THRID_BIND:I = 0x15b5

.field public static final WEBACFINISH_TOURIST_AUTH:I = 0x15b8

.field public static final WEBACFINISH_TOURIST_AUTO_LOGIN:I = 0x15be

.field public static final WEBACFINISH_TOURIST_BIND:I = 0x15b7

.field public static final WEBACFINISH_TOURIST_LOGIN:I = 0x15b4

.field public static final WEBACFINISH_TOURIST_LOGIN_AUTH:I = 0x15b9

.field public static final WEB_IS_FAILED:Ljava/lang/String; = "web_is_failed"

.field public static final WEB_MODEL:Ljava/lang/String; = "web_model"

.field public static final WEB_TYPE:Ljava/lang/String; = "web_type"

.field public static isUpgradeCaptcha:Z


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/bsgamesdk/android/api/h;

.field c:Landroid/graphics/drawable/AnimationDrawable;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Lcom/bsgamesdk/android/model/b;

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "public"

    sput-object v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->CAPTCHA_PUBLIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->n:Lcom/bsgamesdk/android/model/b;

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->o:Z

    iput v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->p:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    const-string v0, "1001"

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->s:Ljava/lang/String;

    const-string v0, "\u83b7\u53d6\u5b89\u5168\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Lcom/bsgamesdk/android/model/b;)Lcom/bsgamesdk/android/model/b;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->n:Lcom/bsgamesdk/android/model/b;

    return-object p1
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

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->getWindowManager()Landroid/view/WindowManager;

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

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method static synthetic a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 12

    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v2, 0x1

    const-string v0, "bsgamesdk_iv_web_loading"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->j:Landroid/widget/ImageView;

    const-string v0, "bsgamesdk_error_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->e:Landroid/widget/RelativeLayout;

    const-string v0, "bsgamesdk_ib_error_back_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->f:Landroid/widget/ImageButton;

    const-string v0, "bsgamesdk_ib_error_finish_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->g:Landroid/widget/ImageButton;

    const-string v0, "bsgamesdk_iv_error_refresh_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->h:Landroid/widget/ImageView;

    const-string v0, "bagamesdk_b_error_back_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->i:Landroid/widget/Button;

    const-string v0, "bsgamesdk_layoutLoading_web"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->k:Landroid/widget/RelativeLayout;

    const-string v0, "bsgamesdk_ib_loading_back"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->l:Landroid/widget/ImageButton;

    const-string v0, "bsgamesdk_web_webview_captch"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    const-string v0, "bsgamesdk_ib_loading_finish"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->m:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$1;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$2;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$3;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$4;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$4;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$5;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$5;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$6;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$6;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_df

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_df
    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_100

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_100
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebViewClient;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebChromeClient;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$MWebChromeClient;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    new-instance v0, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;

    iget v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->p:I

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->n:Lcom/bsgamesdk/android/model/b;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->q:Ljava/lang/String;

    new-instance v5, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;

    invoke-direct {v5, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$7;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/CaptchaJSBridge;-><init>(Landroid/app/Activity;ILcom/bsgamesdk/android/model/b;Ljava/lang/String;Lcom/bsgamesdk/android/activity/CaptchaJSBridge$OnBackListener;)V

    const-string v1, "BiliJsObject"

    invoke-virtual {v7, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_14a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_14a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    invoke-direct {p0, v0, v6}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Landroid/webkit/WebView;Landroid/webkit/WebSettings;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V
    .registers 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_56

    :try_start_7
    const-string v0, "result"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "captcha_type"

    invoke-virtual {p3}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "image_token"

    invoke-virtual {p3}, Lcom/bsgamesdk/android/model/CaptchModel;->getImage_token()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "captcha_code"

    invoke-virtual {p3}, Lcom/bsgamesdk/android/model/CaptchModel;->getCaptcha_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "challenge"

    invoke-virtual {p3}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "validate"

    invoke-virtual {p3}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "seccode"

    invoke-virtual {p3}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gt_user_id"

    invoke-virtual {p3}, Lcom/bsgamesdk/android/model/CaptchModel;->getGt_user_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "captcha_json"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_52} :catch_68

    :goto_52
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_56
    :try_start_56
    const-string v0, "result"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_67} :catch_68

    goto :goto_52

    :catch_68
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_52
.end method

.method private a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    neg-int v4, v2

    if-lt v0, v4, :cond_2e

    neg-int v4, v2

    if-lt v1, v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-le v1, v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Lcom/bsgamesdk/android/model/b;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->setPamaters(Lcom/bsgamesdk/android/model/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 5

    sget-object v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->CAPTCHA_PUBLIC:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->t:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)V

    :goto_14
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->finish()V

    return-void

    :cond_18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type_js"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xbba

    invoke-virtual {p0, v1, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_14
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static goWebActivity(Landroid/app/Activity;Lcom/bsgamesdk/android/model/b;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "web_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "web_is_failed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "web_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static goWebActivity(Landroid/app/Activity;Lcom/bsgamesdk/android/model/b;ZII)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "web_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "web_is_failed"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "web_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->p:I

    return v0
.end method

.method static synthetic i(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->r:Z

    return v0
.end method

.method static synthetic j(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;)Lcom/bsgamesdk/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->n:Lcom/bsgamesdk/android/model/b;

    return-object v0
.end method

.method private setPamaters(Lcom/bsgamesdk/android/model/b;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_5
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_8a

    const-string v0, "1"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string v0, "captcha_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "challenge="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "gt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "userid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "gs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_75
    :goto_75
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->o:Z

    if-eqz v0, :cond_8a

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "failed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8a} :catch_d7

    :cond_8a
    :goto_8a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8f
    :try_start_8f
    const-string v0, "2"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string v0, "captcha_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_d6} :catch_d7

    goto :goto_75

    :catch_d7
    move-exception v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_8a

    :cond_dd
    :try_start_dd
    const-string v0, "geetest"

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "captcha_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "challenge="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "gt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bsgamesdk/android/model/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_11e} :catch_d7

    goto/16 :goto_75
.end method


# virtual methods
.method protected a()V
    .registers 5

    sget-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity$8;-><init>(Lcom/bsgamesdk/android/activity/CaptchaWebActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/helper/a;->a(ILcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_11

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->u:I

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
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->finish()V

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
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->finish()V

    :goto_e
    return-void

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_18

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->setFinishOnTouchOutside(Z)V

    :cond_18
    invoke-direct {p0, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Landroid/content/Context;)V

    const-string v0, "bsgamesdk_activity_captch_web"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "web_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/b;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->n:Lcom/bsgamesdk/android/model/b;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "web_is_failed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->o:Z

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "web_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->p:I

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->q:Ljava/lang/String;

    const-string v0, ""

    iget v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->p:I

    if-ne v3, v1, :cond_a7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->n:Lcom/bsgamesdk/android/model/b;

    invoke-direct {p0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->setPamaters(Lcom/bsgamesdk/android/model/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7d
    :goto_7d
    sget-object v1, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->CAPTCHA_PUBLIC:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f3

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->u:I

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a()V

    goto/16 :goto_e

    :cond_a7
    const/4 v1, 0x2

    iget v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->p:I

    if-ne v1, v2, :cond_cc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->n:Lcom/bsgamesdk/android/model/b;

    invoke-direct {p0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->setPamaters(Lcom/bsgamesdk/android/model/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7d

    :cond_cc
    const/4 v1, 0x3

    iget v2, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->p:I

    if-ne v1, v2, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->n:Lcom/bsgamesdk/android/model/b;

    invoke-direct {p0, v1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->setPamaters(Lcom/bsgamesdk/android/model/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-boolean v3, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->isUpgradeCaptcha:Z

    goto :goto_7d

    :cond_f3
    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_e
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->isUpgradeCaptcha:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_27

    :try_start_a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->d:Landroid/webkit/WebView;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_27} :catch_2b

    :cond_27
    :goto_27
    invoke-direct {p0, p0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Landroid/content/Context;)V

    return-void

    :catch_2b
    move-exception v0

    goto :goto_27
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p0, p1}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method
