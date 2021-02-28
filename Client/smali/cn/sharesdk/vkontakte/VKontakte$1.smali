.class Lcn/sharesdk/vkontakte/VKontakte$1;
.super Ljava/lang/Object;
.source "VKontakte.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/vkontakte/VKontakte;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/vkontakte/b;

.field final synthetic b:Lcn/sharesdk/vkontakte/VKontakte;


# direct methods
.method constructor <init>(Lcn/sharesdk/vkontakte/VKontakte;Lcn/sharesdk/vkontakte/b;)V
    .registers 3

    .prologue
    .line 48
    iput-object p1, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    iput-object p2, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->a:Lcn/sharesdk/vkontakte/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->g(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 76
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->h(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 78
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    iget-object v3, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v3}, Lcn/sharesdk/vkontakte/VKontakte;->c(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v3}, Lcn/sharesdk/vkontakte/VKontakte;->d(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 64
    :try_start_26
    iget-object v3, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v3}, Lcn/sharesdk/vkontakte/VKontakte;->e(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v3

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_33} :catch_49

    .line 68
    :goto_33
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->f(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->a:Lcn/sharesdk/vkontakte/b;

    invoke-virtual {v0, v1}, Lcn/sharesdk/vkontakte/b;->b(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/vkontakte/VKontakte;->a(Lcn/sharesdk/vkontakte/VKontakte;ILjava/lang/Object;)V

    .line 72
    return-void

    .line 65
    :catch_49
    move-exception v0

    .line 66
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->a(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 52
    iget-object v0, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    invoke-static {v0}, Lcn/sharesdk/vkontakte/VKontakte;->b(Lcn/sharesdk/vkontakte/VKontakte;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/vkontakte/VKontakte$1;->b:Lcn/sharesdk/vkontakte/VKontakte;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 54
    :cond_14
    return-void
.end method
