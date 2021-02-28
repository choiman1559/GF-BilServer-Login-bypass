.class public Lcom/bsgamesdk/android/BSGameSdk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/dynamic/IBSGameSdk;


# static fields
.field private static f:Lcom/bsgamesdk/android/BSGameSdk;

.field private static g:Z

.field private static h:Ljava/lang/Object;


# instance fields
.field a:Z

.field private b:Landroid/app/Activity;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field public mAccountCallBack:Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;

.field public mExitListener:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bsgamesdk/android/BSGameSdk;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/BSGameSdk;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)V
    .registers 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v1, "bsutils"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_92

    :goto_8
    sput-object p4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/bsgamesdk/android/utils/ab;->a(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/bsgamesdk/android/b;->a(Landroid/app/Activity;)V

    sget-object v1, Lcom/bsgamesdk/android/b;->a:Lcom/bsgamesdk/android/dynamic/IConstant;

    invoke-static {}, Lcom/bsgamesdk/android/utils/d;->a()V

    invoke-static {p2}, Lcom/bsgamesdk/android/buvid/a;->a(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/bsgamesdk/android/utils/udid/j;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk;->b:Landroid/app/Activity;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk;->mExitListener:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    invoke-interface {v1}, Lcom/bsgamesdk/android/dynamic/IConstant;->getSDK_NAME()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lcom/bsgamesdk/android/dynamic/IConstant;->getSDK_Version()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lcom/bsgamesdk/android/dynamic/IConstant;->isBiliSDK()Z

    move-result v8

    invoke-interface {v1}, Lcom/bsgamesdk/android/dynamic/IConstant;->getVersion()Ljava/lang/String;

    move-result-object v9

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v1 .. v9}, Lcom/bsgamesdk/android/model/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :try_start_3d
    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getTrackConfig(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getFingerprintConfig(Landroid/content/Context;)Z

    move-result v12

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {p2}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v4

    iget-object v4, v4, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    sget-object v6, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    sget-object v10, Lcom/bsgamesdk/android/model/c;->s:Ljava/lang/String;

    sget-object v11, Lcom/bsgamesdk/android/model/c;->l:Ljava/lang/String;

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p3

    invoke-virtual/range {v1 .. v12}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->initTrack(ZLandroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_6c} :catch_90

    :goto_6c
    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/bsgamesdk/android/helper/b;->g()V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/bsgamesdk/android/BSGameSdk;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk;->c:Landroid/os/Handler;

    new-instance v2, Lcom/bsgamesdk/android/BSGameSdk$1;

    move-object/from16 v0, p7

    invoke-direct {v2, p0, v0}, Lcom/bsgamesdk/android/BSGameSdk$1;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;)V

    const-string v3, "initConfig"

    invoke-virtual {v1, v2, v3}, Lcom/bsgamesdk/android/helper/b;->a(Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;Ljava/lang/String;)V

    return-void

    :catch_90
    move-exception v1

    goto :goto_6c

    :catch_92
    move-exception v1

    goto/16 :goto_8
.end method

.method static synthetic a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bsgamesdk/android/BSGameSdk;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk;->e:Lorg/json/JSONObject;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/dc/b;)V
    .registers 7

    new-instance v0, Lcom/android/data/sdk/domain/model/DataParamsModel;

    invoke-direct {v0}, Lcom/android/data/sdk/domain/model/DataParamsModel;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setUid(Ljava/lang/String;)V

    sget-object v1, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setServer_id(Ljava/lang/String;)V

    sget-object v1, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setApp_id(Ljava/lang/String;)V

    sget-object v1, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/domain/model/DataParamsModel;->setMerchant_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v1

    sget-object v2, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/bsgamesdk/android/dc/a;->a(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;Lcom/bsgamesdk/android/dc/b;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/BSGameSdk;Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/dc/b;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bsgamesdk/android/BSGameSdk;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/dc/b;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/bsgamesdk/android/BSGameSdk;->g:Z

    return p0
.end method

.method public static appDestroy(Landroid/app/Activity;)V
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/dc/a;->appDestroy(Landroid/app/Activity;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static appOffline(Landroid/app/Activity;)V
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/dc/a;->appOffline(Landroid/app/Activity;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static appOnline(Landroid/app/Activity;)V
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/dc/a;->appOnline(Landroid/app/Activity;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method static synthetic b(Lcom/bsgamesdk/android/BSGameSdk;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/bsgamesdk/android/BSGameSdk;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/bsgamesdk/android/BSGameSdk;)Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static floatDestroy(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_f

    :try_start_4
    const-string v0, "destroy"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p0, v1}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public static floatHide(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_f

    :try_start_4
    const-string v0, "hide"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p0, v1}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public static floatLogout(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_f

    :try_start_4
    const-string v0, "logout"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p0, v1}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public static floatShow(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_f

    :try_start_4
    const-string v0, "show"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p0, v1}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public static floatVersion(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_c

    :try_start_4
    const-string v0, "version"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public static getChannelId(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    const-string v0, "distributor.txt"

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/model/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "1"

    :cond_e
    return-object v0
.end method

.method public static getFreeUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 12

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/BSGameSdk$6;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getInstance()Lcom/bsgamesdk/android/BSGameSdk;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    return-object v0
.end method

.method public static getSdkDeviceId(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    const-string v1, "|||"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/bsgamesdk/android/model/c;->p:Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;

    goto :goto_14
.end method

.method public static getSdkType()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/model/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static initFloat(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    const-string v0, "register"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p0, v1}, Lcom/bsgamesdk/android/utils/ab;->a(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static initialize(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)Lcom/bsgamesdk/android/BSGameSdk;
    .registers 17

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/f;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bsgamesdk/android/BSGameSdk;-><init>(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)V

    sput-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    :cond_1b
    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 4

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$3;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$3;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createRole(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/BSGameSdk;->a:Z

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/bsgamesdk/android/BSGameSdk$5;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$5;->start()V

    return-void
.end method

.method public exit(Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$4;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$4;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$4;->start()V

    return-void
.end method

.method public getContext()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public getOrderResume(Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bsgamesdk/android/BSGameSdk$8;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$8;->start()V

    return-void
.end method

.method public getUserInfo(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$19;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$19;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$19;->start()V

    return-void
.end method

.method public isLogin(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$18;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$18;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$18;->start()V

    return-void
.end method

.method public isRealNameAuth(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$17;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$17;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$17;->start()V

    return-void
.end method

.method public login(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$13;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$13;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$13;->start()V

    return-void
.end method

.method public logout(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$14;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$14;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$14;->start()V

    return-void
.end method

.method public notifyZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/BSGameSdk$2;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$2;->start()V

    return-void
.end method

.method public pay(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V
    .registers 34

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk;->b:Landroid/app/Activity;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v5, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v6, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    sget-object v9, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v10, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v11, "3"

    invoke-direct/range {v2 .. v11}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/16 v11, 0x270f

    const-string v13, "startPay"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "-9999"

    const-string v17, ""

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p13

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v3, "result"

    const-string v4, "0"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "code"

    const-string v4, "9999"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "message"

    const-string v4, "startPay"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "total_fee"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "username"

    move-object/from16 v0, p3

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "out_trade_no"

    move-object/from16 v0, p8

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "subject"

    move-object/from16 v0, p9

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "role"

    move-object/from16 v0, p4

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "game_money"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "originMessage"

    const-string v4, ""

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "code"

    const-string v4, "9999"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "originCode"

    const-string v4, "-9999"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "order_sign"

    const-string v4, "order_sign"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, "pay_btn"

    const-string v7, ""

    const-string v8, "1"

    invoke-virtual/range {v3 .. v9}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportClickEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v3, Lcom/bsgamesdk/android/model/c;->n:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f4

    new-instance v3, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    const/16 v4, 0x1f41

    const/16 v5, 0x1f41

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p14

    move-object/from16 v1, p8

    invoke-interface {v0, v1, v3}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    const/4 v3, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/16 v11, 0x1f41

    const-string v13, "not_notify_zone"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "-9999"

    const-string v17, ""

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p13

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f3
    return-void

    :cond_f4
    new-instance v2, Lcom/bsgamesdk/android/BSGameSdk$15;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v2 .. v17}, Lcom/bsgamesdk/android/BSGameSdk$15;-><init>(Lcom/bsgamesdk/android/BSGameSdk;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V

    invoke-virtual {v2}, Lcom/bsgamesdk/android/BSGameSdk$15;->start()V

    goto :goto_f3
.end method

.method public payV2(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V
    .registers 27

    new-instance v2, Lcom/bsgamesdk/android/api/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/BSGameSdk;->b:Landroid/app/Activity;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v5, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v6, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    sget-object v9, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v10, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v11, "3"

    invoke-direct/range {v2 .. v11}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/16 v11, 0x270f

    const-string v12, ""

    const-string v13, "startPay"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "-9999"

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v17, p6

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v3, "result"

    const-string v4, "0"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "code"

    const-string v4, "9999"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "message"

    const-string v4, "startPay"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "total_fee"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "username"

    move-object/from16 v0, p3

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "role"

    move-object/from16 v0, p4

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "game_money"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "originMessage"

    const-string v4, ""

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "originCode"

    const-string v4, "-9999"

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "productId"

    move-object/from16 v0, p6

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, "pay"

    const-string v7, ""

    const-string v8, "1"

    invoke-virtual/range {v3 .. v9}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v3, Lcom/bsgamesdk/android/model/c;->n:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e5

    new-instance v3, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;

    const/16 v4, 0x1f41

    const/16 v5, 0x1f41

    invoke-static {v5}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-interface {v0, v1, v3}, Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;->onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/16 v11, 0x1f41

    const-string v12, ""

    const-string v13, "not_notify_zone"

    const-string v14, ""

    const-string v15, ""

    const-string v16, "-9999"

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v17, p6

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e4
    return-void

    :cond_e5
    new-instance v2, Lcom/bsgamesdk/android/BSGameSdk$16;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/bsgamesdk/android/BSGameSdk$16;-><init>(Lcom/bsgamesdk/android/BSGameSdk;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V

    invoke-virtual {v2}, Lcom/bsgamesdk/android/BSGameSdk$16;->start()V

    goto :goto_e4
.end method

.method public register(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$12;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$12;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$12;->start()V

    return-void
.end method

.method public reportLog(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/bsgamesdk/android/BSGameSdk$7;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$7;->start()V

    return-void
.end method

.method public sdkVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/b;->a:Lcom/bsgamesdk/android/dynamic/IConstant;

    invoke-interface {v0}, Lcom/bsgamesdk/android/dynamic/IConstant;->getSDK_Version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccountListener(Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk;->mAccountCallBack:Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;

    return-void
.end method

.method public showAgreementWithLicence(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$9;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$9;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$9;->start()V

    return-void
.end method

.method public showAgreementWithPrivacy(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$10;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$10;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$10;->start()V

    return-void
.end method

.method public showGeetestView(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/BSGameSdk$11;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/BSGameSdk$11;-><init>(Lcom/bsgamesdk/android/BSGameSdk;Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/BSGameSdk$11;->start()V

    return-void
.end method

.method public start(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/dc/a;->a(Landroid/app/Activity;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public stop(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/BSGameSdk;->f:Lcom/bsgamesdk/android/BSGameSdk;

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/dc/a;->stop(Landroid/app/Activity;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method
