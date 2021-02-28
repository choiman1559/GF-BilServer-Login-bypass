.class Lcn/sharesdk/renren/c$2;
.super Ljava/lang/Object;
.source "RenrenSSOProcessor.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/renren/c;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Handler;)V
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
.field final synthetic a:Landroid/accounts/AccountManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/sharesdk/renren/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/renren/c;Landroid/accounts/AccountManager;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 162
    iput-object p1, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    iput-object p2, p0, Lcn/sharesdk/renren/c$2;->a:Landroid/accounts/AccountManager;

    iput-object p3, p0, Lcn/sharesdk/renren/c$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 6
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
    .line 164
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    invoke-static {v0}, Lcn/sharesdk/renren/c;->g(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 168
    :try_start_9
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_f
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9 .. :try_end_f} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_3f

    .line 181
    if-eqz v0, :cond_2b

    .line 182
    iget-object v1, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    iget-object v2, p0, Lcn/sharesdk/renren/c$2;->a:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcn/sharesdk/renren/c$2;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcn/sharesdk/renren/c;->a(Lcn/sharesdk/renren/c;Landroid/accounts/AccountManager;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    invoke-static {v1}, Lcn/sharesdk/renren/c;->l(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 184
    iget-object v1, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    invoke-static {v1}, Lcn/sharesdk/renren/c;->m(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V

    .line 187
    :cond_2b
    :goto_2b
    return-void

    .line 169
    :catch_2c
    move-exception v0

    .line 170
    iget-object v0, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    invoke-static {v0}, Lcn/sharesdk/renren/c;->h(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 171
    iget-object v0, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    invoke-static {v0}, Lcn/sharesdk/renren/c;->i(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    goto :goto_2b

    .line 174
    :catch_3f
    move-exception v0

    .line 175
    iget-object v1, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    invoke-static {v1}, Lcn/sharesdk/renren/c;->j(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 176
    iget-object v1, p0, Lcn/sharesdk/renren/c$2;->c:Lcn/sharesdk/renren/c;

    invoke-static {v1}, Lcn/sharesdk/renren/c;->k(Lcn/sharesdk/renren/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_2b
.end method
