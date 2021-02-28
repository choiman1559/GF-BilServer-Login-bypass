.class Lcn/sharesdk/sina/weibo/SinaWeibo$1;
.super Ljava/lang/Object;
.source "SinaWeibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/SinaWeibo;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/f;

.field final synthetic b:Lcn/sharesdk/sina/weibo/SinaWeibo;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/SinaWeibo;Lcn/sharesdk/sina/weibo/f;)V
    .registers 3

    .prologue
    .line 90
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->a:Lcn/sharesdk/sina/weibo/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->i(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 122
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->j(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 124
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "refresh_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 97
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->a(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v5, "nickname"

    const-string v6, "userName"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_31
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->b(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v5, "remind_in"

    const-string v6, "remind_in"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->c(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 103
    :try_start_4b
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_79

    move-result-wide v0

    .line 107
    :goto_4f
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v5}, Lcn/sharesdk/sina/weibo/SinaWeibo;->d(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 108
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->e(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->f(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->a:Lcn/sharesdk/sina/weibo/f;

    invoke-virtual {v0, v3}, Lcn/sharesdk/sina/weibo/f;->c(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/sina/weibo/SinaWeibo;->a(Lcn/sharesdk/sina/weibo/SinaWeibo;ILjava/lang/Object;)V

    .line 112
    return-void

    .line 104
    :catch_79
    move-exception v0

    .line 105
    const-wide/16 v0, 0x0

    goto :goto_4f
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->g(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 116
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo;->h(Lcn/sharesdk/sina/weibo/SinaWeibo;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeibo$1;->b:Lcn/sharesdk/sina/weibo/SinaWeibo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 118
    :cond_14
    return-void
.end method
