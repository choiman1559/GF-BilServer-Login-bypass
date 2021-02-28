.class public Lcn/sharesdk/renren/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "RenrenAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 21
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 70
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 71
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_10

    .line 85
    :goto_f
    return-void

    .line 76
    :cond_10
    new-instance v0, Lcn/sharesdk/renren/a$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/renren/a$1;-><init>(Lcn/sharesdk/renren/a;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {v0}, Lcn/sharesdk/renren/a$1;->start()V

    goto :goto_f
.end method

.method static synthetic a(Lcn/sharesdk/renren/a;Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/sharesdk/renren/a;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 88
    iget-object v0, p0, Lcn/sharesdk/renren/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_85

    .line 90
    :try_start_4
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcn/sharesdk/renren/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 92
    invoke-static {v1}, Lcn/sharesdk/renren/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/renren/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/renren/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 95
    const-string v0, "oauth_token"

    const-string v2, "oauth_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "user"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 98
    const-string v2, "user_id"

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "renren_token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 101
    const-string v1, "expires_in"

    const-string v2, "expires_in"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "session_key"

    const-string v2, "session_key"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "session_secret"

    const-string v2, "session_secret"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcn/sharesdk/renren/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_85} :catch_86

    .line 110
    :cond_85
    :goto_85
    return-void

    .line 106
    :catch_86
    move-exception v0

    .line 107
    iget-object v1, p0, Lcn/sharesdk/renren/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_85
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcn/sharesdk/renren/a;->a:Z

    if-eqz v0, :cond_5

    .line 67
    :cond_4
    :goto_4
    return-void

    .line 48
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/renren/a;->a:Z

    .line 49
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    if-nez v1, :cond_18

    .line 52
    invoke-direct {p0, v0}, Lcn/sharesdk/renren/a;->a(Landroid/os/Bundle;)V

    goto :goto_4

    .line 56
    :cond_18
    iget-object v2, p0, Lcn/sharesdk/renren/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_4

    .line 57
    const-string v2, "access_denied"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "login_denied"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 58
    :cond_2c
    iget-object v0, p0, Lcn/sharesdk/renren/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_4

    .line 60
    :cond_32
    const-string v2, "error_description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "error_uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcn/sharesdk/renren/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/renren/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 37
    iget-object v0, p0, Lcn/sharesdk/renren/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 38
    invoke-virtual {p0, p2}, Lcn/sharesdk/renren/a;->onComplete(Ljava/lang/String;)V

    .line 42
    :goto_13
    return-void

    .line 41
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_13
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/renren/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 26
    iget-object v0, p0, Lcn/sharesdk/renren/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 27
    invoke-virtual {p0, p2}, Lcn/sharesdk/renren/a;->onComplete(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    .line 31
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method
