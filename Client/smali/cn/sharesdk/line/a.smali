.class public Lcn/sharesdk/line/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "LineAuthorizeWebviewClient.java"


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

.method static synthetic a(Lcn/sharesdk/line/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method private a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 58
    new-instance v0, Lcn/sharesdk/line/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/line/a$1;-><init>(Lcn/sharesdk/line/a;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lcn/sharesdk/line/a$1;->start()V

    .line 88
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/line/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/line/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/sharesdk/line/a;->a:Z

    if-eqz v0, :cond_5

    .line 55
    :cond_4
    :goto_4
    return-void

    .line 39
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/line/a;->a:Z

    .line 41
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 42
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_26

    iget-object v2, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_26

    .line 44
    iget-object v2, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v3, Ljava/lang/Throwable;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 47
    :cond_26
    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_4

    .line 48
    const-string v1, "requestToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 50
    iget-object v1, p0, Lcn/sharesdk/line/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcn/sharesdk/line/a;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    goto :goto_4

    .line 52
    :cond_46
    iget-object v0, p0, Lcn/sharesdk/line/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "lineconnect://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 27
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 28
    iget-object v0, p0, Lcn/sharesdk/line/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 29
    invoke-virtual {p0, p2}, Lcn/sharesdk/line/a;->onComplete(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method
