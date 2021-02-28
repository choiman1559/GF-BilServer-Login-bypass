.class Lcn/sharesdk/renren/Renren$1;
.super Ljava/lang/Object;
.source "Renren.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/renren/Renren;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/renren/b;

.field final synthetic b:Lcn/sharesdk/renren/Renren;


# direct methods
.method constructor <init>(Lcn/sharesdk/renren/Renren;Lcn/sharesdk/renren/b;)V
    .registers 3

    .prologue
    .line 68
    iput-object p1, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    iput-object p2, p0, Lcn/sharesdk/renren/Renren$1;->a:Lcn/sharesdk/renren/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    invoke-static {v0}, Lcn/sharesdk/renren/Renren;->g(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    invoke-static {v0}, Lcn/sharesdk/renren/Renren;->h(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 96
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v0, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    invoke-static {v0}, Lcn/sharesdk/renren/Renren;->c(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 79
    const-wide/16 v0, 0x0

    .line 81
    :try_start_11
    const-string v3, "expires_in"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_51

    move-result-wide v0

    .line 83
    :goto_1b
    iget-object v3, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    invoke-static {v3}, Lcn/sharesdk/renren/Renren;->d(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 84
    iget-object v0, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    invoke-static {v0}, Lcn/sharesdk/renren/Renren;->e(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 85
    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    invoke-static {v1}, Lcn/sharesdk/renren/Renren;->f(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v3, "oauth_token"

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcn/sharesdk/renren/Renren$1;->a:Lcn/sharesdk/renren/b;

    invoke-virtual {v0, v2}, Lcn/sharesdk/renren/b;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/renren/Renren;->a(Lcn/sharesdk/renren/Renren;ILjava/lang/Object;)V

    .line 90
    return-void

    .line 82
    :catch_51
    move-exception v3

    goto :goto_1b
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    invoke-static {v0}, Lcn/sharesdk/renren/Renren;->a(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 72
    iget-object v0, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    invoke-static {v0}, Lcn/sharesdk/renren/Renren;->b(Lcn/sharesdk/renren/Renren;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/renren/Renren$1;->b:Lcn/sharesdk/renren/Renren;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 74
    :cond_14
    return-void
.end method
