.class Lcn/sharesdk/linkedin/b$1;
.super Ljava/lang/Thread;
.source "LinkedinAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/linkedin/b;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/linkedin/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/linkedin/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 50
    iput-object p1, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    iput-object p2, p0, Lcn/sharesdk/linkedin/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/linkedin/b$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1f

    .line 55
    iget-object v0, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v0}, Lcn/sharesdk/linkedin/b;->a(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 56
    iget-object v0, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v0}, Lcn/sharesdk/linkedin/b;->b(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 102
    :cond_1e
    :goto_1e
    return-void

    .line 61
    :cond_1f
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 62
    iget-object v1, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v1}, Lcn/sharesdk/linkedin/b;->c(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 63
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string v2, "error_description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v1}, Lcn/sharesdk/linkedin/b;->d(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_1e

    .line 99
    :catch_61
    move-exception v0

    .line 100
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 71
    :cond_6a
    :try_start_6a
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 72
    iget-object v0, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v0}, Lcn/sharesdk/linkedin/b;->e(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 73
    const-string v0, "The state does not match, the request may be a result of CSRF and has be rejected"

    .line 74
    iget-object v1, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v1}, Lcn/sharesdk/linkedin/b;->f(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 79
    :cond_8b
    iget-object v1, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v1}, Lcn/sharesdk/linkedin/b;->g(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcn/sharesdk/linkedin/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/linkedin/a;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcn/sharesdk/linkedin/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v3, "state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 83
    iget-object v0, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v0}, Lcn/sharesdk/linkedin/b;->h(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 84
    const-string v0, "The state does not match, the request may be a result of CSRF and has be rejected"

    .line 85
    iget-object v1, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v1}, Lcn/sharesdk/linkedin/b;->i(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 90
    :cond_c7
    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 91
    iget-object v0, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v0}, Lcn/sharesdk/linkedin/b;->j(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 92
    iget-object v0, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v0}, Lcn/sharesdk/linkedin/b;->k(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 97
    :cond_e7
    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcn/sharesdk/linkedin/b$1;->b:Lcn/sharesdk/linkedin/b;

    invoke-static {v2, v0, v1}, Lcn/sharesdk/linkedin/b;->a(Lcn/sharesdk/linkedin/b;Ljava/lang/String;Lcn/sharesdk/linkedin/a;)V
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_f2} :catch_61

    goto/16 :goto_1e
.end method
