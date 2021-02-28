.class public Lcn/sharesdk/linkedin/b;
.super Lcn/sharesdk/framework/authorize/b;
.source "LinkedinAuthorizeWebviewClient.java"


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

.method static synthetic a(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/linkedin/b;Ljava/lang/String;Lcn/sharesdk/linkedin/a;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/linkedin/b;->a(Ljava/lang/String;Lcn/sharesdk/linkedin/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcn/sharesdk/linkedin/a;)V
    .registers 7

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p2, p1}, Lcn/sharesdk/linkedin/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1b

    .line 110
    :cond_c
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_1a

    .line 111
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 142
    :cond_1a
    :goto_1a
    return-void

    .line 116
    :cond_1b
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 117
    if-nez v0, :cond_40

    .line 118
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_1a

    .line 119
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_1a

    .line 137
    :catch_35
    move-exception v0

    .line 138
    iget-object v1, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_1a

    .line 139
    iget-object v1, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 124
    :cond_40
    :try_start_40
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 125
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_1a

    .line 126
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 131
    :cond_57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v2, "access_token"

    const-string v3, "access_token"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "expires_in"

    const-string v3, "expires_in"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_1a

    .line 135
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_83} :catch_35

    goto :goto_1a
.end method

.method static synthetic b(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/e;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->activity:Lcn/sharesdk/framework/authorize/e;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic k(Lcn/sharesdk/linkedin/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcn/sharesdk/linkedin/b;->a:Z

    if-eqz v0, :cond_5

    .line 104
    :goto_4
    return-void

    .line 48
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/linkedin/b;->a:Z

    .line 50
    new-instance v0, Lcn/sharesdk/linkedin/b$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/linkedin/b$1;-><init>(Lcn/sharesdk/linkedin/b;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcn/sharesdk/linkedin/b$1;->start()V

    goto :goto_4
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 37
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 38
    invoke-virtual {p0, p2}, Lcn/sharesdk/linkedin/b;->onComplete(Ljava/lang/String;)V

    .line 42
    :goto_13
    return-void

    .line 40
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_13
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 26
    iget-object v0, p0, Lcn/sharesdk/linkedin/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 27
    invoke-virtual {p0, p2}, Lcn/sharesdk/linkedin/b;->onComplete(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method
