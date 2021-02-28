.class public Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;
    }
.end annotation


# static fields
.field public static APPLE_LOGIN_CODE:I


# instance fields
.field a:Landroid/graphics/drawable/AnimationDrawable;

.field b:Lcom/bsgamesdk/android/api/h;

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private f:Landroid/webkit/WebView;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Ljava/lang/String;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x186a0

    sput v0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->APPLE_LOGIN_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->c:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a()V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/16 v1, 0x14

    const/4 v6, 0x0

    const/16 v2, 0x10

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->h:Ljava/lang/String;

    const-string v4, "file://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :goto_19
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    sparse-switch v4, :sswitch_data_96

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    :goto_2d
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    sparse-switch v4, :sswitch_data_a4

    move v0, v2

    :goto_34
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    const-string v0, "utf-8"

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_7f
    return-void

    :cond_80
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_19

    :sswitch_84
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_2d

    :sswitch_87
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_2d

    :sswitch_8a
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_2d

    :sswitch_8d
    move v0, v1

    goto :goto_34

    :sswitch_8f
    move v0, v1

    goto :goto_34

    :sswitch_91
    move v0, v2

    goto :goto_34

    :sswitch_93
    move v0, v2

    goto :goto_34

    nop

    :sswitch_data_96
    .sparse-switch
        0x78 -> :sswitch_84
        0xa0 -> :sswitch_87
        0xf0 -> :sswitch_8a
    .end sparse-switch

    :sswitch_data_a4
    .sparse-switch
        0x78 -> :sswitch_8d
        0xa0 -> :sswitch_8f
        0xf0 -> :sswitch_91
        0x140 -> :sswitch_93
    .end sparse-switch
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clientId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "redirectUri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->APPLE_LOGIN_CODE:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->p:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->finish()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->a:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g:Landroid/content/Context;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->f:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->e:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->i:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->D:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g:Landroid/content/Context;

    const-string v1, "bsgamesdk_linearLayoutError_ag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g:Landroid/content/Context;

    const-string v1, "bsgamesdk_linearLayoutLoad_ag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g:Landroid/content/Context;

    const-string v1, "bsgamesdk_iv_error_refresh_captch_ag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g:Landroid/content/Context;

    const-string v1, "bsgamesdk_iv_web_loading_ag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$1;-><init>(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->a()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$2;-><init>(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$3;-><init>(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :try_start_9f
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clientId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "redirectUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://appleid.apple.com/auth/authorize?client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&response_type=code&response_mode=fragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->h:Ljava/lang/String;
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_e0} :catch_117

    :goto_e0
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity$MWebViewClient;-><init>(Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :try_start_f1
    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->p:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_112} :catch_114

    goto/16 :goto_c

    :catch_114
    move-exception v0

    goto/16 :goto_c

    :catch_117
    move-exception v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->finish()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->g:Landroid/content/Context;

    const-string v1, "\u82f9\u679c\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e0
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_24

    :try_start_7
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameAppleLoginActivity;->f:Landroid/webkit/WebView;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method
