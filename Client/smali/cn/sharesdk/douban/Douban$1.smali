.class Lcn/sharesdk/douban/Douban$1;
.super Ljava/lang/Object;
.source "Douban.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/douban/Douban;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/douban/a;

.field final synthetic b:Lcn/sharesdk/douban/Douban;


# direct methods
.method constructor <init>(Lcn/sharesdk/douban/Douban;Lcn/sharesdk/douban/a;)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    iput-object p2, p0, Lcn/sharesdk/douban/Douban$1;->a:Lcn/sharesdk/douban/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    invoke-static {v0}, Lcn/sharesdk/douban/Douban;->g(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 85
    iget-object v0, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    invoke-static {v0}, Lcn/sharesdk/douban/Douban;->h(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 87
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    const/4 v0, 0x0

    .line 69
    :try_start_7
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_51

    move-result v0

    .line 73
    :goto_11
    const-string v1, "douban_user_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v3, "refresh_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    invoke-static {v4}, Lcn/sharesdk/douban/Douban;->c(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    invoke-static {v4}, Lcn/sharesdk/douban/Douban;->d(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 77
    iget-object v0, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    invoke-static {v0}, Lcn/sharesdk/douban/Douban;->e(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    invoke-static {v0}, Lcn/sharesdk/douban/Douban;->f(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/sharesdk/douban/Douban$1;->a:Lcn/sharesdk/douban/a;

    invoke-virtual {v0, v2}, Lcn/sharesdk/douban/a;->c(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/douban/Douban;->a(Lcn/sharesdk/douban/Douban;ILjava/lang/Object;)V

    .line 81
    return-void

    .line 70
    :catch_51
    move-exception v1

    .line 71
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    invoke-static {v0}, Lcn/sharesdk/douban/Douban;->a(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 61
    iget-object v0, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    invoke-static {v0}, Lcn/sharesdk/douban/Douban;->b(Lcn/sharesdk/douban/Douban;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/douban/Douban$1;->b:Lcn/sharesdk/douban/Douban;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 63
    :cond_14
    return-void
.end method
