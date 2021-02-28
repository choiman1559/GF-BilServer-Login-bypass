.class Lcn/sharesdk/mingdao/Mingdao$1;
.super Ljava/lang/Object;
.source "Mingdao.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/mingdao/Mingdao;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/mingdao/b;

.field final synthetic b:Lcn/sharesdk/mingdao/Mingdao;


# direct methods
.method constructor <init>(Lcn/sharesdk/mingdao/Mingdao;Lcn/sharesdk/mingdao/b;)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    iput-object p2, p0, Lcn/sharesdk/mingdao/Mingdao$1;->a:Lcn/sharesdk/mingdao/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->g(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 76
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->h(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 78
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string v0, "refresh_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v1}, Lcn/sharesdk/mingdao/Mingdao;->c(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v1}, Lcn/sharesdk/mingdao/Mingdao;->d(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v1}, Lcn/sharesdk/mingdao/Mingdao;->e(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v4, "refresh_token"

    invoke-virtual {v1, v4, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_31
    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_4b

    move-result-wide v0

    .line 69
    :goto_35
    iget-object v4, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v4}, Lcn/sharesdk/mingdao/Mingdao;->f(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 70
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$1;->a:Lcn/sharesdk/mingdao/b;

    invoke-virtual {v0, v2, v3}, Lcn/sharesdk/mingdao/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/mingdao/Mingdao;->a(Lcn/sharesdk/mingdao/Mingdao;ILjava/lang/Object;)V

    .line 72
    return-void

    .line 65
    :catch_4b
    move-exception v0

    .line 66
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 67
    const-wide/16 v0, 0x0

    goto :goto_35
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->a(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 51
    iget-object v0, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    invoke-static {v0}, Lcn/sharesdk/mingdao/Mingdao;->b(Lcn/sharesdk/mingdao/Mingdao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/mingdao/Mingdao$1;->b:Lcn/sharesdk/mingdao/Mingdao;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 53
    :cond_14
    return-void
.end method
