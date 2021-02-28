.class public Lcn/sharesdk/tencent/qq/ReceiveActivity;
.super Landroid/app/Activity;
.source "ReceiveActivity.java"


# static fields
.field private static listener:Lcn/sharesdk/framework/PlatformActionListener;

.field private static uriScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 1
    .param p0, "actionListener"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 23
    sput-object p0, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    .line 24
    return-void
.end method

.method public static setUriScheme(Ljava/lang/String;)V
    .registers 1
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 19
    sput-object p0, Lcn/sharesdk/tencent/qq/ReceiveActivity;->uriScheme:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    :try_start_6
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/ReceiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/ReceiveActivity;->finish()V

    .line 32
    if-eqz v1, :cond_82

    sget-object v2, Lcn/sharesdk/tencent/qq/ReceiveActivity;->uriScheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 33
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 34
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "shareToQQ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "shareToQzone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 37
    :cond_47
    const-string v2, "complete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 38
    sget-object v1, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_6e

    .line 39
    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 41
    sget-object v1, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 56
    :cond_6e
    :goto_6e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    const-class v1, Lcom/mob/tools/MobUIShell;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qq/ReceiveActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    :cond_82
    :goto_82
    return-void

    .line 43
    :cond_83
    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 44
    sget-object v1, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_6e

    .line 45
    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a6} :catch_a7

    goto :goto_6e

    .line 61
    :catch_a7
    move-exception v0

    .line 62
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 63
    sget-object v1, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_82

    .line 64
    sget-object v1, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, v5, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_82

    .line 50
    :cond_b9
    :try_start_b9
    sget-object v0, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_6e

    .line 51
    sget-object v0, Lcn/sharesdk/tencent/qq/ReceiveActivity;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_c5} :catch_a7

    goto :goto_6e
.end method
