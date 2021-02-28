.class public Lcn/sharesdk/douban/b;
.super Lcn/sharesdk/framework/authorize/b;
.source "DoubanWebViewClient.java"


# instance fields
.field private a:Z

.field private b:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 23
    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douban/b;->b:Lcn/sharesdk/framework/Platform;

    .line 25
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/douban/b;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/douban/b;->b:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/douban/b;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/sharesdk/douban/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 79
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 80
    const-string v0, "code"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 81
    const-string v0, "msg"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    const-string v3, "request"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v3, :cond_5a

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 107
    :cond_5a
    :goto_5a
    return-void

    .line 92
    :cond_5b
    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 93
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_5a

    .line 94
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 99
    :cond_72
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 100
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 104
    :cond_9d
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_5a

    .line 105
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_5a
.end method

.method static synthetic b(Lcn/sharesdk/douban/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/douban/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcn/sharesdk/douban/b;->a:Z

    if-eqz v0, :cond_5

    .line 76
    :cond_4
    :goto_4
    return-void

    .line 41
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/douban/b;->a:Z

    .line 42
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 43
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 44
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "access_denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 46
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_4

    .line 49
    :cond_2c
    iget-object v1, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_4

    .line 50
    iget-object v1, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 55
    :cond_3b
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 56
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcn/sharesdk/douban/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 62
    :cond_52
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Lcn/sharesdk/douban/b$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/douban/b$1;-><init>(Lcn/sharesdk/douban/b;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcn/sharesdk/douban/b$1;->start()V

    goto :goto_4
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/douban/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 30
    iget-object v0, p0, Lcn/sharesdk/douban/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 31
    invoke-virtual {p0, p2}, Lcn/sharesdk/douban/b;->onComplete(Ljava/lang/String;)V

    .line 35
    :goto_13
    return-void

    .line 33
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_13
.end method
