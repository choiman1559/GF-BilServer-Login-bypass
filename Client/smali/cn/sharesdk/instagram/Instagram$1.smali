.class Lcn/sharesdk/instagram/Instagram$1;
.super Ljava/lang/Object;
.source "Instagram.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/instagram/Instagram;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/instagram/b;

.field final synthetic b:Lcn/sharesdk/instagram/Instagram;


# direct methods
.method constructor <init>(Lcn/sharesdk/instagram/Instagram;Lcn/sharesdk/instagram/b;)V
    .registers 3

    .prologue
    .line 52
    iput-object p1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    iput-object p2, p0, Lcn/sharesdk/instagram/Instagram$1;->a:Lcn/sharesdk/instagram/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v0}, Lcn/sharesdk/instagram/Instagram;->j(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 84
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v0}, Lcn/sharesdk/instagram/Instagram;->k(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 86
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "bio"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v3, "website"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    const-string v4, "profile_picture"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    const-string v5, "full_name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    const-string v6, "id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    iget-object v7, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v7}, Lcn/sharesdk/instagram/Instagram;->c(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 70
    iget-object v7, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v7}, Lcn/sharesdk/instagram/Instagram;->d(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 71
    iget-object v6, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v6}, Lcn/sharesdk/instagram/Instagram;->e(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v6

    const-string v7, "nickname"

    invoke-virtual {v6, v7, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v1}, Lcn/sharesdk/instagram/Instagram;->f(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v6, "resume"

    invoke-virtual {v1, v6, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v1}, Lcn/sharesdk/instagram/Instagram;->g(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "website"

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v1}, Lcn/sharesdk/instagram/Instagram;->h(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v1}, Lcn/sharesdk/instagram/Instagram;->i(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "full_name"

    invoke-virtual {v1, v2, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->a:Lcn/sharesdk/instagram/b;

    invoke-virtual {v1, v0}, Lcn/sharesdk/instagram/b;->b(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/instagram/Instagram;->a(Lcn/sharesdk/instagram/Instagram;ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v0}, Lcn/sharesdk/instagram/Instagram;->a(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 56
    iget-object v0, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    invoke-static {v0}, Lcn/sharesdk/instagram/Instagram;->b(Lcn/sharesdk/instagram/Instagram;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/instagram/Instagram$1;->b:Lcn/sharesdk/instagram/Instagram;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 58
    :cond_14
    return-void
.end method
