.class Lcn/sharesdk/tencent/weibo/TencentWeibo$1;
.super Ljava/lang/Object;
.source "TencentWeibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/weibo/TencentWeibo;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/weibo/f;

.field final synthetic b:Lcn/sharesdk/tencent/weibo/TencentWeibo;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/weibo/TencentWeibo;Lcn/sharesdk/tencent/weibo/f;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    iput-object p2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->a:Lcn/sharesdk/tencent/weibo/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->o(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 107
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->p(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 109
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 85
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->c(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->d(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 89
    :try_start_1a
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_23} :catch_ba

    move-result v0

    .line 93
    :goto_24
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->e(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 94
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->f(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "openid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->g(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->h(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "nick"

    const-string v2, "nick"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->i(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "openid"

    const-string v2, "openid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->j(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "openkey"

    const-string v2, "openkey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->a:Lcn/sharesdk/tencent/weibo/f;

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v1}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->k(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v2}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->l(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    .line 100
    invoke-static {v3}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->m(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v4}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->n(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "openkey"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/sharesdk/tencent/weibo/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->a(Lcn/sharesdk/tencent/weibo/TencentWeibo;ILjava/lang/Object;)V

    .line 103
    return-void

    .line 90
    :catch_ba
    move-exception v0

    .line 91
    const/4 v0, 0x0

    goto/16 :goto_24
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->a(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 80
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    invoke-static {v0}, Lcn/sharesdk/tencent/weibo/TencentWeibo;->b(Lcn/sharesdk/tencent/weibo/TencentWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/TencentWeibo$1;->b:Lcn/sharesdk/tencent/weibo/TencentWeibo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 82
    :cond_14
    return-void
.end method
