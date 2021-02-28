.class public Lcn/sharesdk/pocket/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "PocketAuthorizeWebviewClient.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/pocket/a;->b:Z

    .line 21
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 76
    if-eqz p2, :cond_22

    iget-object v1, p0, Lcn/sharesdk/pocket/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcn/sharesdk/pocket/a;->b:Z

    if-nez v1, :cond_22

    .line 77
    iput-boolean v0, p0, Lcn/sharesdk/pocket/a;->b:Z

    .line 78
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 79
    iget-object v1, p0, Lcn/sharesdk/pocket/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 81
    new-instance v1, Lcn/sharesdk/pocket/a$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/pocket/a$1;-><init>(Lcn/sharesdk/pocket/a;)V

    .line 89
    invoke-virtual {v1}, Lcn/sharesdk/pocket/a$1;->start()V

    .line 92
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 25
    iget-boolean v0, p0, Lcn/sharesdk/pocket/a;->a:Z

    if-eqz v0, :cond_7

    .line 62
    :cond_6
    :goto_6
    return-void

    .line 28
    :cond_7
    iput-boolean v9, p0, Lcn/sharesdk/pocket/a;->a:Z

    .line 30
    iget-object v0, p0, Lcn/sharesdk/pocket/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/pocket/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/pocket/b;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcn/sharesdk/pocket/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 32
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_32

    .line 33
    :cond_23
    iget-object v0, p0, Lcn/sharesdk/pocket/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcn/sharesdk/pocket/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 38
    :cond_32
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 39
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 40
    array-length v5, v3

    move v0, v1

    :goto_3f
    if-ge v0, v5, :cond_5a

    aget-object v6, v3, v0

    .line 41
    if-nez v6, :cond_48

    .line 40
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 45
    :cond_48
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 46
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_45

    .line 50
    aget-object v7, v6, v1

    aget-object v6, v6, v9

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 52
    :cond_5a
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v0

    if-gtz v0, :cond_6f

    .line 53
    iget-object v0, p0, Lcn/sharesdk/pocket/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 54
    iget-object v0, p0, Lcn/sharesdk/pocket/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 59
    :cond_6f
    iget-object v0, p0, Lcn/sharesdk/pocket/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 60
    iget-object v0, p0, Lcn/sharesdk/pocket/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v4}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/pocket/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    :goto_6
    return-void

    .line 72
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/pocket/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
