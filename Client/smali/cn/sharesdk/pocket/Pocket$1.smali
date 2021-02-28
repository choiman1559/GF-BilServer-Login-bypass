.class Lcn/sharesdk/pocket/Pocket$1;
.super Ljava/lang/Object;
.source "Pocket.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/pocket/Pocket;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/pocket/Pocket;


# direct methods
.method constructor <init>(Lcn/sharesdk/pocket/Pocket;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    invoke-static {v0}, Lcn/sharesdk/pocket/Pocket;->e(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 74
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    invoke-static {v0}, Lcn/sharesdk/pocket/Pocket;->f(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 76
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    invoke-static {v2}, Lcn/sharesdk/pocket/Pocket;->a(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    invoke-static {v0}, Lcn/sharesdk/pocket/Pocket;->b(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v2, "nickname"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/pocket/Pocket;->a(Lcn/sharesdk/pocket/Pocket;ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    invoke-static {v0}, Lcn/sharesdk/pocket/Pocket;->c(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 68
    iget-object v0, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    invoke-static {v0}, Lcn/sharesdk/pocket/Pocket;->d(Lcn/sharesdk/pocket/Pocket;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/pocket/Pocket$1;->a:Lcn/sharesdk/pocket/Pocket;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 70
    :cond_14
    return-void
.end method
