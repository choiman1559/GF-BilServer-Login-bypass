.class Lcn/sharesdk/evernote/Evernote$1;
.super Ljava/lang/Object;
.source "Evernote.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/evernote/Evernote;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/evernote/Evernote;


# direct methods
.method constructor <init>(Lcn/sharesdk/evernote/Evernote;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->i(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 89
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->j(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 91
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->c(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->d(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "secret"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 77
    const-string v0, "expires"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 78
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_38

    .line 79
    iget-object v2, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v2}, Lcn/sharesdk/evernote/Evernote;->e(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 81
    :cond_38
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->f(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->g(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "notestoreUrl"

    const-string v2, "noteStoreUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->h(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "webApiUrlPrefix"

    const-string v2, "webApiUrlPrefix"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/evernote/Evernote;->a(Lcn/sharesdk/evernote/Evernote;ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->a(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 70
    iget-object v0, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    invoke-static {v0}, Lcn/sharesdk/evernote/Evernote;->b(Lcn/sharesdk/evernote/Evernote;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/evernote/Evernote$1;->a:Lcn/sharesdk/evernote/Evernote;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 72
    :cond_14
    return-void
.end method
