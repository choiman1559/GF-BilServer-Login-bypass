.class public Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;
.super Lcn/sharesdk/framework/authorize/b;
.source "YoutubeAuthorizeWebviewClient.java"


# instance fields
.field private finished:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2
    .param p1, "activity"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/e;
    .registers 2
    .param p0, "x0"    # Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method

.method static synthetic access$100(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2
    .param p0, "x0"    # Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2
    .param p0, "x0"    # Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2
    .param p0, "x0"    # Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method private requestAuthToken(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 4
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;-><init>(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$2;->start()V

    .line 107
    return-void
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->finished:Z

    if-eqz v0, :cond_5

    .line 75
    :cond_4
    :goto_4
    return-void

    .line 47
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->finished:Z

    .line 48
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 49
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    iget-object v3, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v3, :cond_4

    .line 53
    if-nez v1, :cond_46

    if-nez v2, :cond_46

    .line 54
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 56
    iget-object v1, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Authorize code is empty"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 59
    :cond_38
    iget-object v1, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 60
    invoke-direct {p0, v1, v0}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->requestAuthToken(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    goto :goto_4

    .line 61
    :cond_46
    const-string v0, "access_denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 63
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_4

    .line 65
    :cond_54
    const/4 v0, 0x0

    .line 67
    :try_start_55
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_81

    move-result v0

    .line 71
    :goto_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 68
    :catch_81
    move-exception v2

    .line 69
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 30
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 31
    new-instance v0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient$1;-><init>(Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    invoke-virtual {p0, p2}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;->onComplete(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_19
    return v0

    :cond_1a
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_19
.end method
