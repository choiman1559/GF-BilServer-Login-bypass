.class Lcn/sharesdk/line/Line$1;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/Line;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/line/Line;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/Line;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->i(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 89
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->j(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 91
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const-string v0, "mid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "refresh_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    const-string v1, "token_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v5, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v5}, Lcn/sharesdk/line/Line;->a(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v5}, Lcn/sharesdk/line/Line;->b(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    const-string v6, "token_type"

    invoke-virtual {v5, v6, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_32
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_64

    move-result-wide v0

    .line 74
    :goto_36
    iget-object v5, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v5}, Lcn/sharesdk/line/Line;->c(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 75
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->d(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->e(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->f(Lcn/sharesdk/line/Line;)Lcn/sharesdk/line/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/sharesdk/line/b;->d(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/line/Line;->a(Lcn/sharesdk/line/Line;ILjava/lang/Object;)V

    .line 79
    return-void

    .line 71
    :catch_64
    move-exception v0

    .line 72
    const-wide/16 v0, 0x0

    goto :goto_36
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->g(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 83
    iget-object v0, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    invoke-static {v0}, Lcn/sharesdk/line/Line;->h(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/line/Line$1;->a:Lcn/sharesdk/line/Line;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 85
    :cond_14
    return-void
.end method
