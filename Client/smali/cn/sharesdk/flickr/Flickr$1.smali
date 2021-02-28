.class Lcn/sharesdk/flickr/Flickr$1;
.super Ljava/lang/Object;
.source "Flickr.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/flickr/Flickr;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/flickr/a;

.field final synthetic b:Lcn/sharesdk/flickr/Flickr;


# direct methods
.method constructor <init>(Lcn/sharesdk/flickr/Flickr;Lcn/sharesdk/flickr/a;)V
    .registers 3

    .prologue
    .line 51
    iput-object p1, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    iput-object p2, p0, Lcn/sharesdk/flickr/Flickr$1;->a:Lcn/sharesdk/flickr/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v0}, Lcn/sharesdk/flickr/Flickr;->h(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 80
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v0}, Lcn/sharesdk/flickr/Flickr;->i(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 82
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "oauth_token_secret"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "user_nsid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v3, "username"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v4}, Lcn/sharesdk/flickr/Flickr;->a(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v4}, Lcn/sharesdk/flickr/Flickr;->b(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v4}, Lcn/sharesdk/flickr/Flickr;->c(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v2}, Lcn/sharesdk/flickr/Flickr;->d(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v4, "nickname"

    invoke-virtual {v2, v4, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v2}, Lcn/sharesdk/flickr/Flickr;->e(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "fullname"

    const-string v4, "fullname"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcn/sharesdk/flickr/Flickr$1;->a:Lcn/sharesdk/flickr/a;

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/flickr/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/flickr/Flickr;->a(Lcn/sharesdk/flickr/Flickr;ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v0}, Lcn/sharesdk/flickr/Flickr;->f(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 74
    iget-object v0, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    invoke-static {v0}, Lcn/sharesdk/flickr/Flickr;->g(Lcn/sharesdk/flickr/Flickr;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/flickr/Flickr$1;->b:Lcn/sharesdk/flickr/Flickr;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 76
    :cond_14
    return-void
.end method
