.class public Lcn/sharesdk/meipai/c;
.super Lcn/sharesdk/framework/b;
.source "MeipeiHelper.java"


# static fields
.field private static volatile b:Lcn/sharesdk/meipai/c;


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 37
    return-void
.end method

.method private a(Landroid/os/Bundle;Lcn/sharesdk/meipai/entity/MeipaiBaseObject;ILjava/lang/String;)Landroid/os/Bundle;
    .registers 9

    .prologue
    .line 118
    const-string v0, "mp_command_type"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v0, "mp_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p1, p2, p4}, Lcn/sharesdk/meipai/c;->a(Landroid/os/Bundle;Lcn/sharesdk/meipai/entity/MeipaiBaseObject;Ljava/lang/String;)V

    .line 121
    const-string v0, "req_scene"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    return-object p1
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/meipai/c;
    .registers 4

    .prologue
    .line 40
    const-class v1, Lcn/sharesdk/meipai/c;

    monitor-enter v1

    .line 41
    :try_start_3
    sget-object v0, Lcn/sharesdk/meipai/c;->b:Lcn/sharesdk/meipai/c;

    if-nez v0, :cond_16

    .line 42
    const-class v2, Lcn/sharesdk/meipai/c;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 43
    :try_start_a
    sget-object v0, Lcn/sharesdk/meipai/c;->b:Lcn/sharesdk/meipai/c;

    if-nez v0, :cond_15

    .line 44
    new-instance v0, Lcn/sharesdk/meipai/c;

    invoke-direct {v0, p0}, Lcn/sharesdk/meipai/c;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/meipai/c;->b:Lcn/sharesdk/meipai/c;

    .line 46
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    .line 48
    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1d

    .line 49
    sget-object v0, Lcn/sharesdk/meipai/c;->b:Lcn/sharesdk/meipai/c;

    return-object v0

    .line 46
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0

    .line 48
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private a(Lcn/sharesdk/meipai/Meipai$ShareParams;)Lcn/sharesdk/meipai/entity/MeipaiBaseObject;
    .registers 4

    .prologue
    .line 105
    iget v0, p1, Lcn/sharesdk/meipai/Meipai$ShareParams;->type:I

    if-nez v0, :cond_e

    .line 106
    new-instance v0, Lcn/sharesdk/meipai/entity/MeipaiVideoObject;

    invoke-direct {v0}, Lcn/sharesdk/meipai/entity/MeipaiVideoObject;-><init>()V

    .line 107
    iget-object v1, p1, Lcn/sharesdk/meipai/Meipai$ShareParams;->videoPath:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/meipai/entity/MeipaiVideoObject;->videoPath:Ljava/lang/String;

    .line 114
    :goto_d
    return-object v0

    .line 109
    :cond_e
    iget v0, p1, Lcn/sharesdk/meipai/Meipai$ShareParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 110
    new-instance v0, Lcn/sharesdk/meipai/entity/MeipaiImageObject;

    invoke-direct {v0}, Lcn/sharesdk/meipai/entity/MeipaiImageObject;-><init>()V

    .line 111
    iget-object v1, p1, Lcn/sharesdk/meipai/Meipai$ShareParams;->imagePath:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/meipai/entity/MeipaiImageObject;->imagePath:Ljava/lang/String;

    goto :goto_d

    .line 114
    :cond_1d
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(Landroid/os/Bundle;Lcn/sharesdk/meipai/entity/MeipaiBaseObject;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 126
    const-string v0, "mp_message_text_plus"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz p2, :cond_19

    .line 128
    invoke-static {p2}, Lcn/sharesdk/meipai/b;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    .line 129
    const-string v1, "constatnt_media_type"

    invoke-virtual {p2}, Lcn/sharesdk/meipai/entity/MeipaiBaseObject;->getObjectType()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v1, "mp_message_media"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 132
    :cond_19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcn/sharesdk/meipai/c;->d:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public a()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 55
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.meitu.meipaimv"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_20

    .line 56
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "isMeipaiAppInstalled install false"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 67
    :goto_1f
    return v0

    .line 59
    :cond_20
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-boolean v2, p0, Lcn/sharesdk/meipai/c;->c:Z

    invoke-static {v1, v2}, Lcn/sharesdk/meipai/b;->a([Landroid/content/pm/Signature;Z)Z

    move-result v1

    .line 60
    if-nez v1, :cond_36

    .line 61
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "isMeipaiAppInstalled -- checkSignature is invalid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_36} :catch_38

    :cond_36
    move v0, v1

    .line 64
    goto :goto_1f

    .line 66
    :catch_38
    move-exception v1

    goto :goto_1f
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/meipai/Meipai$ShareParams;)Z
    .registers 9

    .prologue
    const/16 v4, 0x9

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0}, Lcn/sharesdk/meipai/c;->a()Z

    move-result v1

    if-nez v1, :cond_16

    .line 73
    iget-object v1, p0, Lcn/sharesdk/meipai/c;->a:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "isMeipaiAppInstalled install"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 100
    :goto_15
    return v0

    .line 76
    :cond_16
    if-nez p2, :cond_25

    .line 77
    iget-object v1, p0, Lcn/sharesdk/meipai/c;->a:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "isMeipaiAppInstalled install"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_15

    .line 80
    :cond_25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    invoke-direct {p0, p2}, Lcn/sharesdk/meipai/c;->a(Lcn/sharesdk/meipai/Meipai$ShareParams;)Lcn/sharesdk/meipai/entity/MeipaiBaseObject;

    move-result-object v2

    iget v3, p2, Lcn/sharesdk/meipai/Meipai$ShareParams;->type:I

    invoke-virtual {p2}, Lcn/sharesdk/meipai/Meipai$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcn/sharesdk/meipai/c;->a(Landroid/os/Bundle;Lcn/sharesdk/meipai/entity/MeipaiBaseObject;ILjava/lang/String;)Landroid/os/Bundle;

    .line 82
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 83
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    .line 84
    const-string v4, "3trd_package_name"

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v4, "3trd_app_name"

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "3trd_app_key"

    iget-object v4, p0, Lcn/sharesdk/meipai/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "meipai_sdk_version_name"

    const-string v4, "1.5.0"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "meipai_sdk_version_code"

    const/16 v4, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v3, "3trd_keystore_signature"

    invoke-static {}, Lcn/sharesdk/meipai/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "com.meitu.mp.sdk.action.ACTION_SHARE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v3, "com.meitu.meipaimv"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    new-instance v1, Lcn/sharesdk/meipai/ShareActivity;

    invoke-direct {v1}, Lcn/sharesdk/meipai/ShareActivity;-><init>()V

    .line 94
    iget-object v3, p0, Lcn/sharesdk/meipai/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, p1, v3, v2}, Lcn/sharesdk/meipai/ShareActivity;->a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Landroid/content/Intent;)V

    .line 96
    :try_start_8b
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcn/sharesdk/meipai/ShareActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_92
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8b .. :try_end_92} :catch_94

    .line 97
    const/4 v0, 0x1

    goto :goto_15

    .line 98
    :catch_94
    move-exception v1

    .line 99
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_15
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .registers 3
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method
