.class public Lcn/sharesdk/mingdao/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "MingdaoAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 26
    return-void
.end method

.method private a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 89
    invoke-static {p1}, Lcn/sharesdk/mingdao/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/mingdao/b;

    move-result-object v0

    .line 92
    :try_start_4
    invoke-virtual {v0, p2}, Lcn/sharesdk/mingdao/b;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_17

    move-result-object v0

    .line 98
    :goto_8
    if-nez v0, :cond_1f

    .line 99
    iget-object v0, p0, Lcn/sharesdk/mingdao/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 114
    :goto_16
    return-void

    .line 93
    :catch_17
    move-exception v0

    .line 94
    iget-object v1, p0, Lcn/sharesdk/mingdao/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 95
    const/4 v0, 0x0

    goto :goto_8

    .line 103
    :cond_1f
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 104
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 105
    iget-object v1, p0, Lcn/sharesdk/mingdao/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 109
    :cond_3b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v2, "access_token"

    const-string v3, "access_token"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "expires_in"

    const-string v3, "expires_in"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "refresh_token"

    const-string v3, "refresh_token"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcn/sharesdk/mingdao/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_16
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-boolean v1, p0, Lcn/sharesdk/mingdao/a;->a:Z

    if-eqz v1, :cond_6

    .line 86
    :cond_5
    :goto_5
    return-void

    .line 56
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/sharesdk/mingdao/a;->a:Z

    .line 57
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 58
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 59
    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "error_code"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    iget-object v4, p0, Lcn/sharesdk/mingdao/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v4, :cond_5

    .line 63
    if-nez v2, :cond_63

    if-nez v3, :cond_63

    .line 64
    const-string v0, "code"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 66
    iget-object v1, p0, Lcn/sharesdk/mingdao/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Authorize code is empty"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 69
    :cond_55
    iget-object v1, p0, Lcn/sharesdk/mingdao/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 70
    invoke-direct {p0, v1, v0}, Lcn/sharesdk/mingdao/a;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    goto :goto_5

    .line 72
    :cond_63
    const-string v1, "access_denied"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 74
    iget-object v0, p0, Lcn/sharesdk/mingdao/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_5

    .line 78
    :cond_71
    :try_start_71
    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_9e

    move-result v0

    .line 82
    :goto_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcn/sharesdk/mingdao/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 79
    :catch_9e
    move-exception v1

    .line 80
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_75
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 29
    iget-object v0, p0, Lcn/sharesdk/mingdao/a;->redirectUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcn/sharesdk/mingdao/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "code="

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 31
    const-string v0, "code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    array-length v0, v0

    if-le v0, v1, :cond_37

    .line 33
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 34
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 35
    iget-object v0, p0, Lcn/sharesdk/mingdao/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 36
    new-instance v0, Lcn/sharesdk/mingdao/a$1;

    invoke-direct {v0, p0, p2}, Lcn/sharesdk/mingdao/a$1;-><init>(Lcn/sharesdk/mingdao/a;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcn/sharesdk/mingdao/a$1;->start()V

    .line 49
    :goto_36
    return v1

    .line 48
    :cond_37
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_36
.end method
