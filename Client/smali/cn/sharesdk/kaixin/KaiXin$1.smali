.class Lcn/sharesdk/kaixin/KaiXin$1;
.super Ljava/lang/Object;
.source "KaiXin.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/kaixin/KaiXin;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/kaixin/KaiXin;


# direct methods
.method constructor <init>(Lcn/sharesdk/kaixin/KaiXin;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-static {v0}, Lcn/sharesdk/kaixin/KaiXin;->g(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 93
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-static {v0}, Lcn/sharesdk/kaixin/KaiXin;->h(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 95
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
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-static {v0}, Lcn/sharesdk/kaixin/KaiXin;->c(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformDb;

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
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_46

    move-result-wide v0

    .line 83
    :goto_1b
    iget-object v3, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-static {v3}, Lcn/sharesdk/kaixin/KaiXin;->d(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 84
    const-string v0, "refresh_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-static {v1}, Lcn/sharesdk/kaixin/KaiXin;->e(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v3, "refresh_token"

    invoke-virtual {v1, v3, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-static {v0}, Lcn/sharesdk/kaixin/KaiXin;->f(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/kaixin/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/kaixin/a;->c(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/kaixin/KaiXin;->a(Lcn/sharesdk/kaixin/KaiXin;ILjava/lang/Object;)V

    .line 89
    return-void

    .line 82
    :catch_46
    move-exception v3

    goto :goto_1b
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-static {v0}, Lcn/sharesdk/kaixin/KaiXin;->a(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 72
    iget-object v0, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    invoke-static {v0}, Lcn/sharesdk/kaixin/KaiXin;->b(Lcn/sharesdk/kaixin/KaiXin;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/kaixin/KaiXin$1;->a:Lcn/sharesdk/kaixin/KaiXin;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 74
    :cond_14
    return-void
.end method
