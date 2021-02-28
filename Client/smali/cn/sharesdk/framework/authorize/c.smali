.class public Lcn/sharesdk/framework/authorize/c;
.super Lcn/sharesdk/framework/authorize/a;
.source "SSOAuthorizeActivity.java"


# instance fields
.field protected b:Lcn/sharesdk/framework/authorize/SSOListener;

.field private c:Lcn/sharesdk/framework/authorize/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/authorize/SSOListener;)V
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/c;->b:Lcn/sharesdk/framework/authorize/SSOListener;

    .line 12
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/d;->a(IILandroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0, p0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/d;

    .line 16
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/d;

    if-nez v0, :cond_3d

    .line 17
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 18
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_3c

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start SSO for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v2}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 28
    :cond_3c
    :goto_3c
    return-void

    .line 26
    :cond_3d
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/d;

    const v1, 0x80cd

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/authorize/d;->a(I)V

    .line 27
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->a()V

    goto :goto_3c
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/d;->a(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
