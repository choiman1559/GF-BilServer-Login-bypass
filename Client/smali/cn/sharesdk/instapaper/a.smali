.class public Lcn/sharesdk/instapaper/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "InstapaperAuthorizeWebviewClient.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 17
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/instapaper/a;)Lcn/sharesdk/framework/authorize/e;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcn/sharesdk/instapaper/a;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/instapaper/a;)Lcn/sharesdk/framework/authorize/e;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcn/sharesdk/instapaper/a;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/instapaper/a;)Lcn/sharesdk/framework/authorize/e;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcn/sharesdk/instapaper/a;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/instapaper/a;)Lcn/sharesdk/framework/authorize/e;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcn/sharesdk/instapaper/a;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 60
    new-instance v0, Lcn/sharesdk/instapaper/a$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcn/sharesdk/instapaper/a$1;-><init>(Lcn/sharesdk/instapaper/a;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 85
    invoke-virtual {v0, v1}, Lcn/sharesdk/instapaper/a$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .registers 10
    .param p1, "verifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 35
    array-length v4, v2

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_2a

    aget-object v5, v2, v0

    .line 36
    if-nez v5, :cond_17

    .line 35
    :cond_14
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 40
    :cond_17
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 41
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_14

    .line 45
    aget-object v6, v5, v1

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 47
    :cond_2a
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v0

    if-gtz v0, :cond_3f

    .line 48
    iget-object v0, p0, Lcn/sharesdk/instapaper/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_3e

    .line 49
    iget-object v0, p0, Lcn/sharesdk/instapaper/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 57
    :cond_3e
    :goto_3e
    return-void

    .line 54
    :cond_3f
    iget-object v0, p0, Lcn/sharesdk/instapaper/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_3e

    .line 55
    iget-object v0, p0, Lcn/sharesdk/instapaper/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_3e
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "ID_SIGN=OWELJSFPWECSFEW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 22
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 23
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 24
    const-string v1, "u"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "p"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p0, p1, v1, v0}, Lcn/sharesdk/instapaper/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_1f
    return v0

    :cond_20
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1f
.end method
