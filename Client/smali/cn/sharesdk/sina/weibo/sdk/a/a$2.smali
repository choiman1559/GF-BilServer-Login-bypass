.class Lcn/sharesdk/sina/weibo/sdk/a/a$2;
.super Landroid/webkit/WebChromeClient;
.source "WeiboWebPageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/sdk/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/sdk/a/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/sdk/a/a;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 191
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(I)V

    .line 192
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1b

    .line 193
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->setVisibility(I)V

    .line 197
    :goto_1a
    return-void

    .line 195
    :cond_1b
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->setVisibility(I)V

    goto :goto_1a
.end method
