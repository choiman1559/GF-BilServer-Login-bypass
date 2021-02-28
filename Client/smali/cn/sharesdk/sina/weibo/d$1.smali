.class Lcn/sharesdk/sina/weibo/d$1;
.super Landroid/webkit/WebViewClient;
.source "WebAuthPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/d;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

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

    .line 84
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/sina/weibo/d;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 85
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->b(Lcn/sharesdk/sina/weibo/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->c(Lcn/sharesdk/sina/weibo/d;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 88
    :cond_1e
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0, v2}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/sina/weibo/d;I)I

    .line 89
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 96
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

    .line 97
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/sina/weibo/d;I)I

    .line 99
    :cond_31
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->d(Lcn/sharesdk/sina/weibo/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 103
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->e(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 104
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$1;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0, p2}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/sina/weibo/d;Ljava/lang/String;)V

    .line 106
    :cond_19
    const/4 v0, 0x1

    .line 108
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
