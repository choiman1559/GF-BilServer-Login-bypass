.class public abstract Lcn/sharesdk/framework/authorize/b;
.super Lcn/sharesdk/framework/d;
.source "AuthorizeWebviewClient.java"


# instance fields
.field protected activity:Lcn/sharesdk/framework/authorize/e;

.field protected listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field protected redirectUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/sharesdk/framework/d;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/e;

    .line 13
    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/framework/authorize/b;->redirectUri:Ljava/lang/String;

    .line 15
    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 16
    return-void
.end method


# virtual methods
.method protected abstract onComplete(Ljava/lang/String;)V
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 21
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 23
    if-eqz v0, :cond_3d

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 27
    :cond_3d
    return-void
.end method
