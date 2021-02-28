.class public Lcn/sharesdk/tencent/qzone/ReceiveActivity;
.super Landroid/app/Activity;
.source "ReceiveActivity.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 25
    sput-object p0, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->a:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    :try_start_6
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_82

    sget-object v2, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 38
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->finish()V

    .line 41
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 42
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 44
    const-string v3, "shareToQQ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "shareToQzone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 45
    :cond_47
    const-string v2, "complete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 46
    sget-object v1, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_6e

    .line 47
    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 49
    sget-object v1, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 64
    :cond_6e
    :goto_6e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-class v1, Lcom/mob/tools/MobUIShell;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_82
    :goto_82
    return-void

    .line 51
    :cond_83
    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 52
    sget-object v1, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_6e

    .line 53
    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a6} :catch_a7

    goto :goto_6e

    .line 69
    :catch_a7
    move-exception v0

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 71
    sget-object v1, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_82

    .line 72
    sget-object v1, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, v5, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_82

    .line 58
    :cond_b9
    :try_start_b9
    sget-object v0, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_6e

    .line 59
    sget-object v0, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_c5} :catch_a7

    goto :goto_6e
.end method
