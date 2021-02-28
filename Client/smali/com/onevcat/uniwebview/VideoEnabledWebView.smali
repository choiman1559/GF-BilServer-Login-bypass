.class public Lcom/onevcat/uniwebview/VideoEnabledWebView;
.super Landroid/webkit/WebView;
.source "VideoEnabledWebView.java"


# instance fields
.field private videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/onevcat/uniwebview/VideoEnabledWebView;)Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;
    .registers 2
    .param p0, "x0"    # Lcom/onevcat/uniwebview/VideoEnabledWebView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    return-object v0
.end method


# virtual methods
.method public isVideoFullscreen()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public notifyVideoEnd()V
    .registers 3

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/onevcat/uniwebview/VideoEnabledWebView$1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView$1;-><init>(Lcom/onevcat/uniwebview/VideoEnabledWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 4
    .param p1, "client"    # Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    instance-of v0, p1, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    iput-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    .line 78
    :cond_11
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    return-void
.end method
