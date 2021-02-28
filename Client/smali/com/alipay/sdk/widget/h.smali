.class public Lcom/alipay/sdk/widget/h;
.super Lcom/alipay/sdk/widget/g;


# instance fields
.field private b:Lcom/alipay/sdk/app/b;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/g;-><init>(Landroid/app/Activity;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/h;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/h;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/sdk/app/b;

    invoke-direct {v0, p1, p2}, Lcom/alipay/sdk/app/b;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/h;->b:Lcom/alipay/sdk/app/b;

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/sdk/widget/h;->b:Lcom/alipay/sdk/app/b;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/sdk/util/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/widget/i;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/widget/i;-><init>(Lcom/alipay/sdk/widget/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :try_start_60
    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_75} :catch_76

    :cond_75
    :goto_75
    return-void

    :catch_76
    move-exception v0

    :try_start_77
    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v1, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "accessibility"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "accessibilityTraversal"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_af} :catch_b0

    goto :goto_75

    :catch_b0
    move-exception v0

    goto :goto_75
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->b:Lcom/alipay/sdk/app/b;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/b;->a()V

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/h;->removeAllViews()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .registers 4

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->b:Lcom/alipay/sdk/app/b;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/b;->b()Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/alipay/sdk/app/k;->d:Lcom/alipay/sdk/app/k;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/k;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_30
    :goto_30
    const/4 v0, 0x1

    return v0

    :cond_32
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_30
.end method
