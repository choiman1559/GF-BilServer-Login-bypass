.class public Lcn/sharesdk/evernote/f;
.super Lcn/sharesdk/framework/authorize/b;
.source "EvernoteWebViewClient.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 20
    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/evernote/f;->a:Lcn/sharesdk/framework/Platform;

    .line 22
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/Platform;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/evernote/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 36
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 38
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_19

    .line 39
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 79
    :cond_19
    :goto_19
    return-void

    .line 44
    :cond_1a
    new-instance v1, Lcn/sharesdk/evernote/f$1;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/evernote/f$1;-><init>(Lcn/sharesdk/evernote/f;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lcn/sharesdk/evernote/f$1;->start()V

    goto :goto_19
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 27
    iget-object v0, p0, Lcn/sharesdk/evernote/f;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 28
    invoke-virtual {p0, p2}, Lcn/sharesdk/evernote/f;->onComplete(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method
