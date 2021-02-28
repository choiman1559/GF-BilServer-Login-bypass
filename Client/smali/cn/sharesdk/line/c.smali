.class public Lcn/sharesdk/line/c;
.super Lcn/sharesdk/framework/authorize/d;
.source "LineSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/c;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/d;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method private a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 106
    new-instance v0, Lcn/sharesdk/line/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/line/c$1;-><init>(Lcn/sharesdk/line/c;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Lcn/sharesdk/line/c$1;->start()V

    .line 137
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "line."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/line/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_52

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/line/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/authorize/c;->registerExecutor(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_52
    return-void
.end method

.method private b(Landroid/content/Intent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 72
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_b

    .line 73
    :cond_9
    const/4 v0, 0x0

    .line 102
    :cond_a
    :goto_a
    return v0

    .line 76
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    .line 78
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 81
    :try_start_1d
    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_26} :catch_3f

    move-result v3

    .line 88
    const-string v4, "requestToken"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    packed-switch v3, :pswitch_data_62

    .line 97
    iget-object v2, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v3, Ljava/lang/Throwable;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 82
    :catch_3f
    move-exception v1

    .line 83
    iget-object v2, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v2, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_a

    .line 91
    :pswitch_4d
    iget-object v1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->a()Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    goto :goto_a

    .line 94
    :pswitch_5b
    iget-object v1, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    goto :goto_a

    .line 89
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_5b
    .end packed-switch
.end method

.method static synthetic c(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/line/c;)Lcn/sharesdk/framework/authorize/SSOListener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 33
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/line/c;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 34
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    .line 60
    :goto_17
    return-void

    .line 38
    :cond_18
    iget-object v0, p0, Lcn/sharesdk/line/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 39
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    goto :goto_17

    .line 44
    :cond_26
    :try_start_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jp.naver.line.android.intent.action.APPAUTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v1, "channelId"

    iget-object v2, p0, Lcn/sharesdk/line/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "otpId"

    iget-object v2, p0, Lcn/sharesdk/line/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "appPackage"

    iget-object v2, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v2}, Lcn/sharesdk/framework/authorize/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "authScheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/line/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/authorize/c;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-direct {p0}, Lcn/sharesdk/line/c;->b()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_71} :catch_77
    .catchall {:try_start_26 .. :try_end_71} :catchall_8e

    .line 58
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    goto :goto_17

    .line 52
    :catch_77
    move-exception v0

    .line 53
    :try_start_78
    iget-object v1, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_81

    .line 54
    iget-object v1, p0, Lcn/sharesdk/line/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 56
    :cond_81
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_8e

    .line 58
    iget-object v0, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/c;->finish()V

    goto :goto_17

    :catchall_8e
    move-exception v0

    iget-object v1, p0, Lcn/sharesdk/line/c;->a:Lcn/sharesdk/framework/authorize/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/c;->finish()V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcn/sharesdk/line/c;->d:Ljava/lang/String;

    .line 28
    return-void
.end method
