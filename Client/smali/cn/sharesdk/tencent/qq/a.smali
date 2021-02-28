.class public Lcn/sharesdk/tencent/qq/a;
.super Lcn/sharesdk/framework/authorize/b;
.source "QQAuthorizeWebviewClient.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 20
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    const-string v2, "error"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    const-string v3, "error_description"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    const-string v4, "pf"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    const-string v5, "pfkey"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 69
    const-string v6, "pay_token"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c0

    .line 73
    :try_start_3e
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v2}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v2

    invoke-interface {v2}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-static {v2}, Lcn/sharesdk/tencent/qq/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/b;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v0}, Lcn/sharesdk/tencent/qq/b;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_58

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_67

    .line 76
    :cond_58
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_66

    .line 77
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 112
    :cond_66
    :goto_66
    return-void

    .line 82
    :cond_67
    const-string v3, "openid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 83
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_66

    .line 84
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_7d} :catch_7e

    goto :goto_66

    .line 99
    :catch_7e
    move-exception v0

    .line 100
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_66

    .line 101
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_66

    .line 89
    :cond_89
    :try_start_89
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v7, "access_token"

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "open_id"

    const-string v7, "openid"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "expires_in"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "pf"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "pfkey"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "pay_token"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_66

    .line 97
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, v3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_bf} :catch_7e

    goto :goto_66

    .line 104
    :cond_c0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_66

    .line 107
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_66

    .line 110
    :cond_f3
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_66
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 44
    .line 45
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 46
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 48
    .end local p1    # "url":Ljava/lang/String;
    :cond_16
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50
    array-length v5, v3

    move v1, v2

    :goto_23
    if-ge v1, v5, :cond_57

    aget-object v0, v3, v1

    .line 51
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    array-length v6, v0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_40

    .line 53
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_3c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 55
    :cond_40
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v0, v8

    if-nez v7, :cond_54

    const-string v0, ""

    .line 56
    :goto_4c
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_54
    aget-object v0, v0, v8

    goto :goto_4c

    .line 59
    :cond_57
    invoke-direct {p0, v4}, Lcn/sharesdk/tencent/qq/a;->a(Ljava/util/HashMap;)V

    .line 60
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "proceed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 120
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    .line 124
    :goto_17
    return-void

    .line 121
    :catch_18
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 23
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 24
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 26
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/a;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 27
    new-instance v0, Lcn/sharesdk/tencent/qq/a$1;

    invoke-direct {v0, p0, p2}, Lcn/sharesdk/tencent/qq/a$1;-><init>(Lcn/sharesdk/tencent/qq/a;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/a$1;->start()V

    .line 40
    :goto_1d
    return v1

    .line 39
    :cond_1e
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1d
.end method
