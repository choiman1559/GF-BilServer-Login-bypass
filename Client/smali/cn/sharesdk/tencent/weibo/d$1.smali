.class Lcn/sharesdk/tencent/weibo/d$1;
.super Ljava/lang/Thread;
.source "TencentWeiboAuthorizeWebviewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/weibo/d;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcn/sharesdk/tencent/weibo/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/weibo/d;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 79
    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    iput-object p2, p0, Lcn/sharesdk/tencent/weibo/d$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d$1;->a:Landroid/os/Bundle;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/d;->a(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/weibo/f;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Lcn/sharesdk/tencent/weibo/f;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 85
    if-nez v0, :cond_37

    .line 86
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/d;->b(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 87
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/d;->c(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 109
    :cond_36
    :goto_36
    return-void

    .line 92
    :cond_37
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 93
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/d;->d(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/d;->e(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7e} :catch_7f

    goto :goto_36

    .line 104
    :catch_7f
    move-exception v0

    .line 105
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/d;->h(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 106
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/d;->i(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 100
    :cond_92
    :try_start_92
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d$1;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/d;->f(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 102
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d$1;->b:Lcn/sharesdk/tencent/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/d;->g(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d$1;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_aa} :catch_7f

    goto :goto_36
.end method
