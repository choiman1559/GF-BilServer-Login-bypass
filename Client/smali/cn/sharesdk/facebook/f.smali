.class public Lcn/sharesdk/facebook/f;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Lcn/sharesdk/framework/PlatformActionListener;

.field private b:Lcn/sharesdk/framework/Platform;

.field private c:Lcn/sharesdk/framework/Platform$ShareParams;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v0, "com.facebook.katana"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v0, "DATA_FAILURES_FATAL"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string v0, "TITLE"

    iget-object v3, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 67
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    iget-object v3, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v3, "LINK"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "type"

    const-string v3, "LINK"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_4b
    :goto_4b
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const v3, 0x1339f47

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    const-string v4, "com.facebook.platform.action.request.FEED_DIALOG"

    .line 101
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v4, p0, Lcn/sharesdk/facebook/f;->d:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    const-string v3, "action_id"

    const-string v4, "cf61947c-a8fe-4fa3-aa7c-fbeb7f291352"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcn/sharesdk/facebook/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_92

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v3

    const-string v5, "none"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 109
    const-string v3, "app_name"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_92
    const-string v3, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    const-string v0, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    return-object v1

    .line 70
    :cond_9d
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    const-string v3, "VIDEO"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "type"

    const-string v3, "VIDEO"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "DESCRIPTION"

    iget-object v3, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "TITLE"

    iget-object v3, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 76
    :cond_e0
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4b

    .line 78
    :try_start_f1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v4, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_142

    .line 81
    :goto_103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_107
    :goto_107
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_14d

    .line 86
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mob/tools/utils/ResHelper;->pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_137} :catch_138

    goto :goto_107

    .line 95
    :catch_138
    move-exception v0

    .line 96
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .line 80
    :cond_142
    :try_start_142
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_103

    .line 88
    :cond_14d
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 92
    :cond_159
    const-string v0, "PHOTOS"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 93
    const-string v0, "DESCRIPTION"

    iget-object v3, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "NAME"

    iget-object v3, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catch Ljava/lang/Throwable; {:try_start_142 .. :try_end_174} :catch_138

    goto/16 :goto_4b
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 38
    iput-object p1, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 39
    iput-object p2, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    .line 40
    iput-object p3, p0, Lcn/sharesdk/facebook/f;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 41
    iput-object p4, p0, Lcn/sharesdk/facebook/f;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x9

    .line 117
    invoke-virtual {p0}, Lcn/sharesdk/facebook/f;->finish()V

    .line 118
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_35

    .line 132
    if-eqz p3, :cond_76

    .line 133
    const-string v0, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 135
    :goto_12
    if-eqz v0, :cond_58

    .line 136
    const-string v2, "completionGesture"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string v3, "didComplete"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 139
    const-string v0, "cancel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 140
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 155
    :cond_35
    :goto_35
    return-void

    .line 141
    :cond_36
    const-string v0, "post"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 142
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v2, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_35

    .line 144
    :cond_46
    if-eqz v0, :cond_50

    .line 145
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v2, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_35

    .line 147
    :cond_50
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_35

    .line 149
    :cond_58
    const v0, 0xface

    if-ne p1, v0, :cond_67

    if-nez p2, :cond_67

    .line 150
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v2, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_35

    .line 152
    :cond_67
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "share error!"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_35

    :cond_76
    move-object v0, v1

    goto :goto_12
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 45
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 47
    :try_start_3
    invoke-virtual {p0}, Lcn/sharesdk/facebook/f;->a()Landroid/content/Intent;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_15

    .line 49
    iget-object v0, p0, Lcn/sharesdk/facebook/f;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcn/sharesdk/facebook/f;->a()Landroid/content/Intent;

    move-result-object v1

    const v2, 0xface

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_15} :catch_16

    .line 55
    :cond_15
    :goto_15
    return-void

    .line 51
    :catch_16
    move-exception v0

    .line 52
    invoke-virtual {p0}, Lcn/sharesdk/facebook/f;->finish()V

    .line 53
    iget-object v1, p0, Lcn/sharesdk/facebook/f;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/facebook/f;->b:Lcn/sharesdk/framework/Platform;

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_15
.end method
