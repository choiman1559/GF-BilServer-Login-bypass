.class Lcn/sharesdk/sina/weibo/f$3;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/f;->b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic c:Lcn/sharesdk/sina/weibo/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 4

    .prologue
    .line 351
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/f$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput-object p3, p0, Lcn/sharesdk/sina/weibo/f$3;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 383
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_11

    .line 384
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/f;->j(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 386
    :cond_11
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 359
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1d

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 361
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f$3;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/f;->e(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 364
    :cond_1d
    if-eqz p1, :cond_6d

    .line 366
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    const-string v2, "expire_in"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 370
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v3, v1}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/sina/weibo/f;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/f;->g(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v3}, Lcn/sharesdk/sina/weibo/f;->f(Lcn/sharesdk/sina/weibo/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 373
    :cond_4f
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/f;->h(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 375
    :try_start_5c
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 376
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/f;->i(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_6d} :catch_6e

    .line 380
    :cond_6d
    :goto_6d
    return-void

    .line 377
    :catch_6e
    move-exception v0

    goto :goto_6d
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 353
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_11

    .line 354
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f$3;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f$3;->c:Lcn/sharesdk/sina/weibo/f;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/f;->d(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 356
    :cond_11
    return-void
.end method
