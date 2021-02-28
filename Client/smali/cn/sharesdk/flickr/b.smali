.class public Lcn/sharesdk/flickr/b;
.super Lcn/sharesdk/framework/authorize/b;
.source "FrlickrAuthorizeWebviewClient.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 20
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/flickr/b;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcn/sharesdk/flickr/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 72
    iget-boolean v0, p0, Lcn/sharesdk/flickr/b;->b:Z

    if-eqz v0, :cond_7

    .line 110
    :cond_6
    :goto_6
    return-void

    .line 75
    :cond_7
    iput-boolean v8, p0, Lcn/sharesdk/flickr/b;->b:Z

    .line 77
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/flickr/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/flickr/a;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcn/sharesdk/flickr/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_32

    .line 80
    :cond_23
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 81
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 86
    :cond_32
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 88
    array-length v4, v2

    move v0, v1

    :goto_43
    if-ge v0, v4, :cond_5e

    aget-object v5, v2, v0

    .line 89
    if-nez v5, :cond_4c

    .line 88
    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 93
    :cond_4c
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 94
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_49

    .line 98
    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 100
    :cond_5e
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v0

    if-gtz v0, :cond_75

    .line 101
    :cond_66
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 107
    :cond_75
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 108
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_6
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 59
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lcn/sharesdk/flickr/b$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/flickr/b$1;-><init>(Lcn/sharesdk/flickr/b;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Lcn/sharesdk/flickr/b$1;->start()V

    .line 69
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 35
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 36
    invoke-virtual {p0, p2}, Lcn/sharesdk/flickr/b;->onComplete(Ljava/lang/String;)V

    .line 40
    :goto_13
    return-void

    .line 39
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_13
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    iget v0, p0, Lcn/sharesdk/flickr/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/flickr/b;->a:I

    .line 45
    iget v0, p0, Lcn/sharesdk/flickr/b;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_5b

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 48
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/flickr/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 50
    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    :goto_5a
    return-void

    .line 54
    :cond_5b
    invoke-super {p0, p1, p2, p3, p4}, Lcn/sharesdk/framework/authorize/b;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 24
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 25
    iget-object v0, p0, Lcn/sharesdk/flickr/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 26
    invoke-virtual {p0, p2}, Lcn/sharesdk/flickr/b;->onComplete(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method
