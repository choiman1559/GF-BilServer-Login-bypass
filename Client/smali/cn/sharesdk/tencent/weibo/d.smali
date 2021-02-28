.class public Lcn/sharesdk/tencent/weibo/d;
.super Lcn/sharesdk/framework/authorize/b;
.source "TencentWeiboAuthorizeWebviewClient.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/tencent/weibo/d;->a:I

    .line 17
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/e;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/tencent/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Z

    if-eqz v0, :cond_5

    .line 111
    :cond_4
    :goto_4
    return-void

    .line 68
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/tencent/weibo/d;->b:Z

    .line 70
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 71
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 72
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_4

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 79
    :cond_4c
    new-instance v1, Lcn/sharesdk/tencent/weibo/d$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/tencent/weibo/d$1;-><init>(Lcn/sharesdk/tencent/weibo/d;Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {v1}, Lcn/sharesdk/tencent/weibo/d$1;->start()V

    goto :goto_4
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 40
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 41
    invoke-virtual {p0, p2}, Lcn/sharesdk/tencent/weibo/d;->onComplete(Ljava/lang/String;)V

    .line 62
    :cond_17
    :goto_17
    return-void

    .line 43
    :cond_18
    const-string v0, "wtloginmqq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 44
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_use_login_button"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 45
    if-lez v0, :cond_17

    .line 46
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_17

    .line 49
    :cond_3d
    const-string v0, "omasflag="

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 50
    iget v0, p0, Lcn/sharesdk/tencent/weibo/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/tencent/weibo/d;->a:I

    .line 51
    iget v0, p0, Lcn/sharesdk/tencent/weibo/d;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_62

    .line 52
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 53
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 54
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_17

    .line 55
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_17

    .line 61
    :cond_62
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_17
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 20
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 22
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 23
    invoke-virtual {p0, p2}, Lcn/sharesdk/tencent/weibo/d;->onComplete(Ljava/lang/String;)V

    .line 34
    :cond_18
    :goto_18
    return v3

    .line 25
    :cond_19
    const-string v0, "wtloginmqq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 26
    iget-object v0, p0, Lcn/sharesdk/tencent/weibo/d;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_use_login_button"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 27
    if-lez v0, :cond_18

    .line 28
    iget-object v1, p0, Lcn/sharesdk/tencent/weibo/d;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 33
    :cond_3e
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_18
.end method
