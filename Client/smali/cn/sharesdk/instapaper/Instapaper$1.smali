.class Lcn/sharesdk/instapaper/Instapaper$1;
.super Ljava/lang/Object;
.source "Instapaper.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/instapaper/Instapaper;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/instapaper/b;

.field final synthetic b:Lcn/sharesdk/instapaper/Instapaper;


# direct methods
.method constructor <init>(Lcn/sharesdk/instapaper/Instapaper;Lcn/sharesdk/instapaper/b;)V
    .registers 3

    .prologue
    .line 81
    iput-object p1, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    iput-object p2, p0, Lcn/sharesdk/instapaper/Instapaper$1;->a:Lcn/sharesdk/instapaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    invoke-static {v0}, Lcn/sharesdk/instapaper/Instapaper;->e(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 100
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    invoke-static {v0}, Lcn/sharesdk/instapaper/Instapaper;->f(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 102
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "oauth_token_secret"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    invoke-static {v2}, Lcn/sharesdk/instapaper/Instapaper;->a(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    invoke-static {v2}, Lcn/sharesdk/instapaper/Instapaper;->b(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcn/sharesdk/instapaper/Instapaper$1;->a:Lcn/sharesdk/instapaper/b;

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/instapaper/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/instapaper/Instapaper;->a(Lcn/sharesdk/instapaper/Instapaper;ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    invoke-static {v0}, Lcn/sharesdk/instapaper/Instapaper;->c(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    invoke-static {v0}, Lcn/sharesdk/instapaper/Instapaper;->d(Lcn/sharesdk/instapaper/Instapaper;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/instapaper/Instapaper$1;->b:Lcn/sharesdk/instapaper/Instapaper;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 96
    :cond_14
    return-void
.end method
