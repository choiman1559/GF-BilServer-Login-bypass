.class Lcn/sharesdk/youdao/YouDao$1;
.super Ljava/lang/Object;
.source "YouDao.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/youdao/YouDao;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/youdao/a;

.field final synthetic b:Lcn/sharesdk/youdao/YouDao;


# direct methods
.method constructor <init>(Lcn/sharesdk/youdao/YouDao;Lcn/sharesdk/youdao/a;)V
    .registers 3

    .prologue
    .line 67
    iput-object p1, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    iput-object p2, p0, Lcn/sharesdk/youdao/YouDao$1;->a:Lcn/sharesdk/youdao/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    invoke-static {v0}, Lcn/sharesdk/youdao/YouDao;->d(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 87
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    invoke-static {v0}, Lcn/sharesdk/youdao/YouDao;->e(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 89
    :cond_14
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const-string v0, "accessToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 78
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_12
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    invoke-static {v1}, Lcn/sharesdk/youdao/YouDao;->c(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao$1;->a:Lcn/sharesdk/youdao/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/youdao/a;->c(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/youdao/YouDao;->a(Lcn/sharesdk/youdao/YouDao;ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    invoke-static {v0}, Lcn/sharesdk/youdao/YouDao;->a(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 71
    iget-object v0, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    invoke-static {v0}, Lcn/sharesdk/youdao/YouDao;->b(Lcn/sharesdk/youdao/YouDao;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/youdao/YouDao$1;->b:Lcn/sharesdk/youdao/YouDao;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 73
    :cond_14
    return-void
.end method
