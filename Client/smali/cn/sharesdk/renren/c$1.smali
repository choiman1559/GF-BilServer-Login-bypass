.class Lcn/sharesdk/renren/c$1;
.super Ljava/lang/Object;
.source "RenrenSSOProcessor.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/renren/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/accounts/AccountManager;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcn/sharesdk/renren/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/renren/c;Ljava/lang/String;Landroid/accounts/AccountManager;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 57
    iput-object p1, p0, Lcn/sharesdk/renren/c$1;->d:Lcn/sharesdk/renren/c;

    iput-object p2, p0, Lcn/sharesdk/renren/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/renren/c$1;->b:Landroid/accounts/AccountManager;

    iput-object p4, p0, Lcn/sharesdk/renren/c$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .line 61
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_6
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_6} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_3d

    .line 76
    if-eqz v0, :cond_20

    .line 77
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcn/sharesdk/renren/c$1;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/sharesdk/renren/c$1;->d:Lcn/sharesdk/renren/c;

    iget-object v2, p0, Lcn/sharesdk/renren/c$1;->b:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcn/sharesdk/renren/c$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/renren/c$1;->c:Landroid/os/Handler;

    invoke-static {v0, v2, v1, v3, v4}, Lcn/sharesdk/renren/c;->a(Lcn/sharesdk/renren/c;Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Handler;)V

    .line 81
    :cond_20
    :goto_20
    return-void

    .line 62
    :catch_21
    move-exception v0

    .line 63
    iget-object v0, p0, Lcn/sharesdk/renren/c$1;->d:Lcn/sharesdk/renren/c;

    invoke-static {v0}, Lcn/sharesdk/renren/c;->a(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 64
    iget-object v0, p0, Lcn/sharesdk/renren/c$1;->d:Lcn/sharesdk/renren/c;

    invoke-static {v0}, Lcn/sharesdk/renren/c;->b(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 65
    iget-object v0, p0, Lcn/sharesdk/renren/c$1;->d:Lcn/sharesdk/renren/c;

    invoke-static {v0}, Lcn/sharesdk/renren/c;->c(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    goto :goto_20

    .line 68
    :catch_3d
    move-exception v0

    .line 69
    iget-object v1, p0, Lcn/sharesdk/renren/c$1;->d:Lcn/sharesdk/renren/c;

    invoke-static {v1}, Lcn/sharesdk/renren/c;->d(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 70
    iget-object v1, p0, Lcn/sharesdk/renren/c$1;->d:Lcn/sharesdk/renren/c;

    invoke-static {v1}, Lcn/sharesdk/renren/c;->e(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 71
    iget-object v1, p0, Lcn/sharesdk/renren/c$1;->d:Lcn/sharesdk/renren/c;

    invoke-static {v1}, Lcn/sharesdk/renren/c;->f(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_20
.end method
