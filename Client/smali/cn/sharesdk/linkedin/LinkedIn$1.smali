.class Lcn/sharesdk/linkedin/LinkedIn$1;
.super Ljava/lang/Object;
.source "LinkedIn.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/linkedin/LinkedIn;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/linkedin/a;

.field final synthetic b:Lcn/sharesdk/linkedin/LinkedIn;


# direct methods
.method constructor <init>(Lcn/sharesdk/linkedin/LinkedIn;Lcn/sharesdk/linkedin/a;)V
    .registers 3

    .prologue
    .line 58
    iput-object p1, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    iput-object p2, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->a:Lcn/sharesdk/linkedin/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    invoke-static {v0}, Lcn/sharesdk/linkedin/LinkedIn;->f(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 84
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    invoke-static {v0}, Lcn/sharesdk/linkedin/LinkedIn;->g(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 86
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :try_start_6
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_3b

    move-result v0

    .line 75
    :goto_10
    iget-object v2, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    invoke-static {v2}, Lcn/sharesdk/linkedin/LinkedIn;->c(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    invoke-static {v2}, Lcn/sharesdk/linkedin/LinkedIn;->d(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->putTokenSecret(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    invoke-static {v2}, Lcn/sharesdk/linkedin/LinkedIn;->e(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 78
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->a:Lcn/sharesdk/linkedin/a;

    invoke-virtual {v0, v1}, Lcn/sharesdk/linkedin/a;->c(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/linkedin/LinkedIn;->a(Lcn/sharesdk/linkedin/LinkedIn;ILjava/lang/Object;)V

    .line 80
    return-void

    .line 71
    :catch_3b
    move-exception v0

    .line 72
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 73
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    invoke-static {v0}, Lcn/sharesdk/linkedin/LinkedIn;->a(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 62
    iget-object v0, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    invoke-static {v0}, Lcn/sharesdk/linkedin/LinkedIn;->b(Lcn/sharesdk/linkedin/LinkedIn;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/linkedin/LinkedIn$1;->b:Lcn/sharesdk/linkedin/LinkedIn;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 64
    :cond_14
    return-void
.end method
