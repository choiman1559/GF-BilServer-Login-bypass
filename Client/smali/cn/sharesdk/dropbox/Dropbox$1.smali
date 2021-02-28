.class Lcn/sharesdk/dropbox/Dropbox$1;
.super Ljava/lang/Object;
.source "Dropbox.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/dropbox/Dropbox;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/dropbox/b;

.field final synthetic b:Lcn/sharesdk/dropbox/Dropbox;


# direct methods
.method constructor <init>(Lcn/sharesdk/dropbox/Dropbox;Lcn/sharesdk/dropbox/b;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    iput-object p2, p0, Lcn/sharesdk/dropbox/Dropbox$1;->a:Lcn/sharesdk/dropbox/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    invoke-static {v0}, Lcn/sharesdk/dropbox/Dropbox;->f(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 79
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    invoke-static {v0}, Lcn/sharesdk/dropbox/Dropbox;->g(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 81
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "doAuthorize success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 65
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "token_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "uid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    invoke-static {v3}, Lcn/sharesdk/dropbox/Dropbox;->c(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    invoke-static {v3}, Lcn/sharesdk/dropbox/Dropbox;->d(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    invoke-static {v1}, Lcn/sharesdk/dropbox/Dropbox;->e(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox$1;->a:Lcn/sharesdk/dropbox/b;

    invoke-virtual {v1, v0}, Lcn/sharesdk/dropbox/b;->e(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/dropbox/Dropbox;->a(Lcn/sharesdk/dropbox/Dropbox;ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    invoke-static {v0}, Lcn/sharesdk/dropbox/Dropbox;->a(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 59
    iget-object v0, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    invoke-static {v0}, Lcn/sharesdk/dropbox/Dropbox;->b(Lcn/sharesdk/dropbox/Dropbox;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/dropbox/Dropbox$1;->b:Lcn/sharesdk/dropbox/Dropbox;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 61
    :cond_14
    return-void
.end method
