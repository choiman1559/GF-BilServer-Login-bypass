.class public Lcn/sharesdk/foursquare/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "FourSquareAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 38
    iget-boolean v1, p0, Lcn/sharesdk/foursquare/a;->a:Z

    if-eqz v1, :cond_7

    .line 70
    :cond_6
    :goto_6
    return-void

    .line 41
    :cond_7
    iput-boolean v2, p0, Lcn/sharesdk/foursquare/a;->a:Z

    .line 43
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 44
    iget-object v0, p0, Lcn/sharesdk/foursquare/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 45
    iget-object v0, p0, Lcn/sharesdk/foursquare/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 50
    :cond_20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    const/16 v2, 0x23

    :try_start_27
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    array-length v3, v2

    :goto_38
    if-ge v0, v3, :cond_62

    aget-object v4, v2, v0

    .line 55
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 56
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4f

    .line 57
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_4f} :catch_52

    .line 54
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 60
    :catch_52
    move-exception v0

    .line 61
    iget-object v0, p0, Lcn/sharesdk/foursquare/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 62
    iget-object v0, p0, Lcn/sharesdk/foursquare/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 66
    :cond_62
    iget-object v0, p0, Lcn/sharesdk/foursquare/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_6

    .line 67
    iget-object v0, p0, Lcn/sharesdk/foursquare/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/foursquare/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 17
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 18
    iget-object v0, p0, Lcn/sharesdk/foursquare/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 19
    invoke-virtual {p0, p2}, Lcn/sharesdk/foursquare/a;->onComplete(Ljava/lang/String;)V

    .line 24
    :goto_1b
    return-void

    .line 23
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1b
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/foursquare/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 28
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 29
    iget-object v0, p0, Lcn/sharesdk/foursquare/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 30
    invoke-virtual {p0, p2}, Lcn/sharesdk/foursquare/a;->onComplete(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    .line 34
    :goto_1c
    return v0

    :cond_1d
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1c
.end method
