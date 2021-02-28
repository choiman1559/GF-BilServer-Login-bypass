.class public Lcn/sharesdk/youdao/b;
.super Lcn/sharesdk/framework/authorize/b;
.source "YoudaoAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 21
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/youdao/b;)Lcn/sharesdk/framework/authorize/e;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/youdao/b;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcn/sharesdk/youdao/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 88
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 89
    const-string v1, "accessToken"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 90
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_27

    .line 91
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 104
    :cond_27
    :goto_27
    return-void

    .line 96
    :cond_28
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 101
    :cond_53
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_27

    .line 102
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_27
.end method

.method static synthetic b(Lcn/sharesdk/youdao/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/youdao/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/sharesdk/youdao/b;->a:Z

    if-eqz v0, :cond_5

    .line 85
    :cond_4
    :goto_4
    return-void

    .line 52
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/youdao/b;->a:Z

    .line 54
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 55
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 56
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_4

    .line 58
    iget-object v1, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 63
    :cond_29
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 64
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 70
    :cond_40
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Lcn/sharesdk/youdao/b$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/youdao/b$1;-><init>(Lcn/sharesdk/youdao/b;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Lcn/sharesdk/youdao/b$1;->start()V

    goto :goto_4
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 26
    iget-object v0, p0, Lcn/sharesdk/youdao/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 27
    invoke-virtual {p0, p2}, Lcn/sharesdk/youdao/b;->onComplete(Ljava/lang/String;)V

    .line 33
    :cond_13
    :goto_13
    return-void

    .line 28
    :cond_14
    const-string v0, "https://note.youdao.com/oauth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_13
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 36
    iget-object v1, p0, Lcn/sharesdk/youdao/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 37
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 38
    iget-object v1, p0, Lcn/sharesdk/youdao/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 39
    invoke-virtual {p0, p2}, Lcn/sharesdk/youdao/b;->onComplete(Ljava/lang/String;)V

    .line 44
    :cond_18
    :goto_18
    return v0

    .line 41
    :cond_19
    const-string v1, "https://note.youdao.com/oauth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 42
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method
