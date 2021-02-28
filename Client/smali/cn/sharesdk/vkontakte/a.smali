.class public Lcn/sharesdk/vkontakte/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "VKontakteAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcn/sharesdk/vkontakte/a;->a:Z

    if-eqz v0, :cond_5

    .line 62
    :cond_4
    :goto_4
    return-void

    .line 49
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/vkontakte/a;->a:Z

    .line 51
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 52
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 53
    :cond_1c
    iget-object v0, p0, Lcn/sharesdk/vkontakte/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcn/sharesdk/vkontakte/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "access_token or expires_in is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 59
    :cond_2d
    iget-object v1, p0, Lcn/sharesdk/vkontakte/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_4

    .line 60
    iget-object v1, p0, Lcn/sharesdk/vkontakte/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/sharesdk/vkontakte/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 32
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 33
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 34
    iget-object v0, p0, Lcn/sharesdk/vkontakte/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 35
    invoke-virtual {p0, p2}, Lcn/sharesdk/vkontakte/a;->onComplete(Ljava/lang/String;)V

    .line 39
    :goto_17
    return-void

    .line 38
    :cond_18
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_17
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/vkontakte/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 20
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 21
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 22
    iget-object v0, p0, Lcn/sharesdk/vkontakte/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 23
    invoke-virtual {p0, p2}, Lcn/sharesdk/vkontakte/a;->onComplete(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x1

    .line 27
    :goto_18
    return v0

    :cond_19
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method
