.class public Lcn/sharesdk/facebook/e;
.super Lcom/mob/tools/FakeActivity;
.source "InviteActivity.java"


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Lcn/sharesdk/framework/Platform;

.field private c:Ljava/lang/String;

.field private d:Lcn/sharesdk/framework/Platform$ShareParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v2, "app_link_url"

    iget-object v3, p0, Lcn/sharesdk/facebook/e;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "preview_image_url"

    iget-object v3, p0, Lcn/sharesdk/facebook/e;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const v3, 0x1339f47

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    const-string v4, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v4, p0, Lcn/sharesdk/facebook/e;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v3, "action_id"

    const-string v4, "cf61947c-a8fe-4fa3-aa7c-fbeb7f291352"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v3

    const-string v5, "none"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 64
    const-string v3, "app_name"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_73
    const-string v3, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    const-string v2, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .registers 4

    .prologue
    .line 24
    iput-object p1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 25
    iput-object p2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    .line 26
    iput-object p3, p0, Lcn/sharesdk/facebook/e;->d:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcn/sharesdk/facebook/e;->c:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x9

    .line 72
    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->finish()V

    .line 73
    if-eqz p3, :cond_c9

    .line 74
    const-string v0, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_8f

    .line 76
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    const-string v4, "error"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 79
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 80
    if-eqz v0, :cond_8e

    .line 81
    const-string v1, ""

    .line 82
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 84
    goto :goto_3f

    .line 85
    :cond_72
    const-string v0, "UserCanceled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_82

    .line 86
    iget-object v0, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 88
    :cond_82
    iget-object v0, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 111
    :cond_8e
    :goto_8e
    return-void

    .line 94
    :cond_8f
    const-string v0, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_8e

    .line 96
    const-string v0, "didComplete"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_bc

    move v0, v1

    .line 97
    :goto_a0
    const-string v1, "completionGesture"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_be

    .line 99
    const-string v0, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 100
    iget-object v0, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_8e

    .line 96
    :cond_bc
    const/4 v0, 0x0

    goto :goto_a0

    .line 102
    :cond_be
    if-eqz v0, :cond_8e

    .line 103
    iget-object v0, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_8e

    .line 106
    :cond_c9
    const v0, 0xface

    if-ne p1, v0, :cond_d8

    if-nez p2, :cond_d8

    .line 107
    iget-object v0, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_8e

    .line 109
    :cond_d8
    iget-object v0, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "share error!"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_8e
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 34
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 36
    :try_start_3
    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->a()Landroid/content/Intent;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_15

    .line 38
    iget-object v0, p0, Lcn/sharesdk/facebook/e;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->a()Landroid/content/Intent;

    move-result-object v1

    const v2, 0xface

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_15} :catch_16

    .line 44
    :cond_15
    :goto_15
    return-void

    .line 40
    :catch_16
    move-exception v0

    .line 41
    invoke-virtual {p0}, Lcn/sharesdk/facebook/e;->finish()V

    .line 42
    iget-object v1, p0, Lcn/sharesdk/facebook/e;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/facebook/e;->b:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_15
.end method
