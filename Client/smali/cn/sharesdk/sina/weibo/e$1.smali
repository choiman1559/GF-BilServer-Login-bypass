.class Lcn/sharesdk/sina/weibo/e$1;
.super Landroid/webkit/WebViewClient;
.source "WebSharePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/e;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/sina/weibo/e;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 88
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->b(Lcn/sharesdk/sina/weibo/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->c(Lcn/sharesdk/sina/weibo/e;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 91
    :cond_1e
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0, v2}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/sina/weibo/e;I)I

    .line 92
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 100
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/sina/weibo/e;I)I

    .line 102
    :cond_31
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 106
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->d(Lcn/sharesdk/sina/weibo/e;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 107
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0, p2}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)V

    .line 109
    :cond_15
    const/4 v0, 0x1

    .line 111
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
