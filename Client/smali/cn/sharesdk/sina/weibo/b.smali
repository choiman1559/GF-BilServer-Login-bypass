.class public Lcn/sharesdk/sina/weibo/b;
.super Lcn/sharesdk/framework/authorize/b;
.source "SinaWeiboAuthorizeWebviewClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/e;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    .line 25
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    const-string v0, "sms_body"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    return-object v1
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method private a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 117
    new-instance v0, Lcn/sharesdk/sina/weibo/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/sina/weibo/b$1;-><init>(Lcn/sharesdk/sina/weibo/b;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/b$1;->start()V

    .line 146
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/b;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method


# virtual methods
.method protected onComplete(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcn/sharesdk/sina/weibo/b;->a:Z

    if-eqz v0, :cond_5

    .line 114
    :cond_4
    :goto_4
    return-void

    .line 85
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/sina/weibo/b;->a:Z

    .line 87
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 88
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v3, :cond_4

    .line 92
    if-nez v1, :cond_46

    if-nez v2, :cond_46

    .line 93
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 95
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Authorize code is empty"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 98
    :cond_38
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 99
    invoke-direct {p0, v1, v0}, Lcn/sharesdk/sina/weibo/b;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    goto :goto_4

    .line 100
    :cond_46
    const-string v0, "access_denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 102
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_4

    .line 104
    :cond_54
    const/4 v0, 0x0

    .line 106
    :try_start_55
    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_81

    move-result v0

    .line 110
    :goto_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 111
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 107
    :catch_81
    move-exception v2

    .line 108
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->redirectUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 57
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 58
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 59
    invoke-virtual {p0, p2}, Lcn/sharesdk/sina/weibo/b;->onComplete(Ljava/lang/String;)V

    .line 79
    :cond_1b
    :goto_1b
    return-void

    .line 60
    :cond_1c
    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 61
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    :try_start_29
    invoke-direct {p0, v0}, Lcn/sharesdk/sina/weibo/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 64
    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_39} :catch_3a

    goto :goto_1b

    .line 66
    :catch_3a
    move-exception v1

    .line 68
    :try_start_3b
    invoke-direct {p0, v0}, Lcn/sharesdk/sina/weibo/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_1b

    .line 70
    :catch_47
    move-exception v0

    .line 71
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_1b

    .line 72
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 77
    :cond_52
    invoke-super {p0, p1, p2, p3}, Lcn/sharesdk/framework/authorize/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1b
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 29
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b;->redirectUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b;->redirectUri:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 30
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 31
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/b;->activity:Lcn/sharesdk/framework/authorize/e;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/e;->finish()V

    .line 32
    invoke-virtual {p0, p2}, Lcn/sharesdk/sina/weibo/b;->onComplete(Ljava/lang/String;)V

    .line 52
    :cond_1c
    :goto_1c
    return v0

    .line 34
    :cond_1d
    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 35
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    :try_start_2a
    invoke-direct {p0, v1}, Lcn/sharesdk/sina/weibo/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 38
    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_3a} :catch_3b

    goto :goto_1c

    .line 40
    :catch_3b
    move-exception v2

    .line 42
    :try_start_3c
    invoke-direct {p0, v1}, Lcn/sharesdk/sina/weibo/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_47} :catch_48

    goto :goto_1c

    .line 44
    :catch_48
    move-exception v1

    .line 45
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_1c

    .line 46
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/b;->listener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v2, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 52
    :cond_53
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1c
.end method
