.class public Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$MWebViewClient;
    }
.end annotation


# static fields
.field public static final TYPE_BILI_SERVICE:Ljava/lang/String; = "type_bili_service"

.field public static final TYPE_PRIVACY:Ljava/lang/String; = "type_privacy"

.field public static final TYPE_SERVICE:Ljava/lang/String; = "type_service"


# instance fields
.field a:Landroid/graphics/drawable/AnimationDrawable;

.field b:Lcom/bsgamesdk/android/api/h;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->k:Landroid/widget/LinearLayout;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->e:Ljava/lang/String;

    const-string v4, "file://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :goto_19
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    sparse-switch v4, :sswitch_data_9a

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    :goto_2d
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    sparse-switch v4, :sswitch_data_a8

    move v0, v2

    :goto_34
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    const-string v0, "utf-8"

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_7f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-direct {p0, v0, v3}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->a(Landroid/webkit/WebView;Landroid/webkit/WebSettings;)V

    return-void

    :cond_85
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_19

    :sswitch_89
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_2d

    :sswitch_8c
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_2d

    :sswitch_8f
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    goto :goto_2d

    :sswitch_92
    move v0, v1

    goto :goto_34

    :sswitch_94
    move v0, v1

    goto :goto_34

    :sswitch_96
    move v0, v2

    goto :goto_34

    :sswitch_98
    move v0, v2

    goto :goto_34

    :sswitch_data_9a
    .sparse-switch
        0x78 -> :sswitch_89
        0xa0 -> :sswitch_8c
        0xf0 -> :sswitch_8f
    .end sparse-switch

    :sswitch_data_a8
    .sparse-switch
        0x78 -> :sswitch_92
        0xa0 -> :sswitch_94
        0xf0 -> :sswitch_96
        0x140 -> :sswitch_98
    .end sparse-switch
.end method

.method private a(Landroid/webkit/WebView;Landroid/webkit/WebSettings;)V
    .registers 8

    const/16 v4, 0xa0

    const/16 v3, 0x78

    const/16 v2, 0x64

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->getWindowManager()Landroid/view/WindowManager;

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

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method static synthetic a(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->m:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->finish()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->a:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->d:Landroid/content/Context;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->f:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->e:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->f:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->D:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->d:Landroid/content/Context;

    const-string v1, "bsgamesdk_linearLayoutError_ag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->d:Landroid/content/Context;

    const-string v1, "bsgamesdk_linearLayoutLoad_ag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->d:Landroid/content/Context;

    const-string v1, "bsgamesdk_iv_error_refresh_captch_ag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->d:Landroid/content/Context;

    const-string v1, "bsgamesdk_iv_web_loading_ag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$1;-><init>(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->a()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$2;-><init>(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$3;-><init>(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$MWebViewClient;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity$MWebViewClient;-><init>(Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->l:Ljava/lang/String;

    const-string v1, "type_service"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->S()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->e:Ljava/lang/String;

    :cond_bd
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->l:Ljava/lang/String;

    const-string v1, "type_privacy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->U()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->e:Ljava/lang/String;

    :cond_d1
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->l:Ljava/lang/String;

    const-string v1, "type_bili_service"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->T()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->e:Ljava/lang/String;

    :cond_e5
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :try_start_ec
    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->m:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_10d
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_10d} :catch_10f

    goto/16 :goto_c

    :catch_10f
    move-exception v0

    goto/16 :goto_c
.end method

.method protected onDestroy()V
    .registers 3

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_27

    :try_start_a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/BSGameSdkAgreementActivity;->c:Landroid/webkit/WebView;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v0

    goto :goto_27
.end method
