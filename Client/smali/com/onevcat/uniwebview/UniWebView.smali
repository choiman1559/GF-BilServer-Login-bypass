.class Lcom/onevcat/uniwebview/UniWebView;
.super Lcom/onevcat/uniwebview/VideoEnabledWebView;
.source "UniWebView.java"


# static fields
.field private static allowAutoPlay:Z

.field private static allowJavaScriptOpenWindow:Z

.field private static javaScriptEnabled:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field calloutEnabled:Z

.field private client:Lcom/onevcat/uniwebview/UniWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/onevcat/uniwebview/UniWebView;->allowAutoPlay:Z

    .line 36
    sput-boolean v0, Lcom/onevcat/uniwebview/UniWebView;->allowJavaScriptOpenWindow:Z

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onevcat/uniwebview/UniWebView;->javaScriptEnabled:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/VideoEnabledWebView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebView;->calloutEnabled:Z

    move-object v3, p1

    .line 51
    check-cast v3, Landroid/app/Activity;

    iput-object v3, p0, Lcom/onevcat/uniwebview/UniWebView;->activity:Landroid/app/Activity;

    .line 52
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 53
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 55
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 56
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 57
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 58
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 59
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 60
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 62
    sget-boolean v3, Lcom/onevcat/uniwebview/UniWebView;->allowAutoPlay:Z

    if-nez v3, :cond_59

    move v3, v4

    :goto_2e
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 63
    sget-boolean v3, Lcom/onevcat/uniwebview/UniWebView;->allowJavaScriptOpenWindow:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 64
    sget-boolean v3, Lcom/onevcat/uniwebview/UniWebView;->javaScriptEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 65
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "cachePath":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/onevcat/uniwebview/UniWebView;->setScrollBarStyle(I)V

    .line 73
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void

    .end local v0    # "cachePath":Ljava/lang/String;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_59
    move v3, v5

    .line 62
    goto :goto_2e
.end method

.method static synthetic access$000(Lcom/onevcat/uniwebview/UniWebView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/onevcat/uniwebview/UniWebView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static clearCookies()V
    .registers 3

    .prologue
    .line 79
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 80
    .local v0, "cm":Landroid/webkit/CookieManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 81
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 82
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "Cookie manager flushed."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method static getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    .line 97
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v3

    .line 99
    .local v3, "logger":Lcom/onevcat/uniwebview/Logger;
    const-string v6, ""

    .line 100
    .local v6, "value":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 101
    .local v0, "cm":Landroid/webkit/CookieManager;
    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "cookies":Ljava/lang/String;
    if-nez v1, :cond_2e

    .line 103
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The content for url is not found in cookie. Url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 104
    const-string v7, ""

    .line 121
    :goto_2d
    return-object v7

    .line 107
    :cond_2e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cookie string is found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", for url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to parse cookie to find for key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 110
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "temp":[Ljava/lang/String;
    array-length v8, v5

    const/4 v7, 0x0

    :goto_6c
    if-ge v7, v8, :cond_a5

    aget-object v2, v5, v7

    .line 112
    .local v2, "kvPair":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 113
    const-string v9, "="

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "pair":[Ljava/lang/String;
    array-length v9, v4

    if-lt v9, v11, :cond_a2

    .line 115
    const/4 v9, 0x1

    aget-object v6, v4, v9

    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found cookie value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", for key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 111
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .end local v2    # "kvPair":Ljava/lang/String;
    :cond_a5
    move-object v7, v6

    .line 121
    goto :goto_2d
.end method

.method static setAllowAutoPlay(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/onevcat/uniwebview/UniWebView;->allowAutoPlay:Z

    return-void
.end method

.method static setAllowJavaScriptOpenWindow(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/onevcat/uniwebview/UniWebView;->allowJavaScriptOpenWindow:Z

    return-void
.end method

.method static setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    .line 88
    .local v1, "logger":Lcom/onevcat/uniwebview/Logger;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 89
    .local v0, "cm":Landroid/webkit/CookieManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cookie set for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 93
    const-string v2, "Cookie manager flushed."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method static setJavaScriptEnabled(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .prologue
    .line 41
    sput-boolean p0, Lcom/onevcat/uniwebview/UniWebView;->javaScriptEnabled:Z

    return-void
.end method


# virtual methods
.method public getClient()Lcom/onevcat/uniwebview/UniWebViewClient;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->client:Lcom/onevcat/uniwebview/UniWebViewClient;

    return-object v0
.end method

.method public getCustomizeHeaders()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 10
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v7, 0x0

    .line 140
    iget-boolean v5, p0, Lcom/onevcat/uniwebview/UniWebView;->calloutEnabled:Z

    if-nez v5, :cond_6

    .line 196
    :cond_5
    :goto_5
    return-void

    .line 144
    :cond_6
    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 146
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v4

    .line 147
    .local v4, "webViewHitTestResult":Landroid/webkit/WebView$HitTestResult;
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    .line 148
    .local v2, "hitType":I
    const/4 v5, 0x5

    if-eq v2, v5, :cond_18

    const/16 v5, 0x8

    if-ne v2, v5, :cond_5

    .line 149
    :cond_18
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "downloadUrl":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 154
    :cond_38
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 155
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 156
    .local v3, "res":Landroid/content/res/Resources;
    sget v5, Lcom/onevcat/uniwebview/R$string;->SAVE_IMAGE:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "buttonTitle":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {p1, v7, v5, v7, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v6, Lcom/onevcat/uniwebview/UniWebView$1;

    invoke-direct {v6, p0, v3, v1}, Lcom/onevcat/uniwebview/UniWebView$1;-><init>(Lcom/onevcat/uniwebview/UniWebView;Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method public setClient(Lcom/onevcat/uniwebview/UniWebViewClient;)V
    .registers 2
    .param p1, "client"    # Lcom/onevcat/uniwebview/UniWebViewClient;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebView;->client:Lcom/onevcat/uniwebview/UniWebViewClient;

    .line 130
    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    return-void
.end method
