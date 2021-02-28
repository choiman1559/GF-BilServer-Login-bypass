.class public Lcn/sharesdk/facebook/c;
.super Lcn/sharesdk/framework/authorize/b;
.source "FacebookWebViewClient.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 14
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/facebook/c;)Lcn/sharesdk/framework/authorize/e;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcn/sharesdk/facebook/c;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 32
    const-string v0, "error_message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_3d

    iget-object v2, p0, Lcn/sharesdk/facebook/c;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_3d

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_message ==>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nerror_code ==>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "error_code"

    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v2, p0, Lcn/sharesdk/facebook/c;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 39
    :cond_3d
    if-nez v0, :cond_76

    .line 40
    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v0, "expires_in"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "expires_in"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_53
    iget-object v1, p0, Lcn/sharesdk/facebook/c;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_76

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v3, "oauth_token"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "oauth_token_secret"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :try_start_68
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_7a

    move-result v0

    .line 53
    :goto_6c
    const-string v2, "oauth_token_expires"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcn/sharesdk/facebook/c;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 58
    :cond_76
    return-void

    .line 41
    :cond_77
    const-string v0, "-1"

    goto :goto_53

    .line 49
    :catch_7a
    move-exception v0

    .line 50
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 51
    const/4 v0, -0x1

    goto :goto_6c
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/facebook/c;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 18
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 19
    new-instance v0, Lcn/sharesdk/facebook/c$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/facebook/c$1;-><init>(Lcn/sharesdk/facebook/c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    invoke-virtual {p0, p2}, Lcn/sharesdk/facebook/c;->onComplete(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    .line 27
    :goto_19
    return v0

    :cond_1a
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_19
.end method
