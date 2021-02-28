.class Lcn/sharesdk/tencent/weibo/f$1;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/SSOListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field final synthetic b:Lcn/sharesdk/tencent/weibo/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .registers 3

    .prologue
    .line 82
    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/f$1;->b:Lcn/sharesdk/tencent/weibo/f;

    iput-object p2, p0, Lcn/sharesdk/tencent/weibo/f$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 100
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v1, "access_token"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f$1;->b:Lcn/sharesdk/tencent/weibo/f;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/tencent/weibo/f;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "expires_in"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f$1;->b:Lcn/sharesdk/tencent/weibo/f;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/tencent/weibo/f;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-wide v2, v2, Lcn/sharesdk/tencent/weibo/c;->h:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "openid"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f$1;->b:Lcn/sharesdk/tencent/weibo/f;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/tencent/weibo/f;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "name"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f$1;->b:Lcn/sharesdk/tencent/weibo/f;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/tencent/weibo/f;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "nick"

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/f$1;->b:Lcn/sharesdk/tencent/weibo/f;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/tencent/weibo/f;)Lcn/sharesdk/tencent/weibo/c;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/tencent/weibo/c;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 85
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/f$1;->b:Lcn/sharesdk/tencent/weibo/f;

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/f$1;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-static {v0, v1}, Lcn/sharesdk/tencent/weibo/f;->a(Lcn/sharesdk/tencent/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 86
    return-void
.end method
