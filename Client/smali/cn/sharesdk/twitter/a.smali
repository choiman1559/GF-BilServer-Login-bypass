.class public Lcn/sharesdk/twitter/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "TwitterAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .registers 11
    .param p1, "verifier"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 60
    iget-boolean v0, p0, Lcn/sharesdk/twitter/a;->a:Z

    if-eqz v0, :cond_7

    .line 98
    :cond_6
    :goto_6
    return-void

    .line 63
    :cond_7
    iput-boolean v8, p0, Lcn/sharesdk/twitter/a;->a:Z

    .line 65
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/twitter/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/b;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcn/sharesdk/twitter/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_32

    .line 68
    :cond_23
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 69
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 74
    :cond_32
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 76
    array-length v4, v2

    move v0, v1

    :goto_3f
    if-ge v0, v4, :cond_5a

    aget-object v5, v2, v0

    .line 77
    if-nez v5, :cond_48

    .line 76
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 81
    :cond_48
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 82
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_45

    .line 86
    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 88
    :cond_5a
    if-eqz v3, :cond_62

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v0

    if-gtz v0, :cond_71

    .line 89
    :cond_62
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 90
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 95
    :cond_71
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 96
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcn/sharesdk/twitter/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 41
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 42
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 44
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 45
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcn/sharesdk/twitter/a$2;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/twitter/a$2;-><init>(Lcn/sharesdk/twitter/a;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcn/sharesdk/twitter/a$2;->start()V

    .line 56
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 57
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcn/sharesdk/twitter/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 20
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 21
    iget-object v0, p0, Lcn/sharesdk/twitter/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 23
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 24
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Lcn/sharesdk/twitter/a$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/twitter/a$1;-><init>(Lcn/sharesdk/twitter/a;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lcn/sharesdk/twitter/a$1;->start()V

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_2b
    return v0

    :cond_2c
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2b
.end method
