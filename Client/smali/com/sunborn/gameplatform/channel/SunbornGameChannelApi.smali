.class public Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;


# static fields
.field public static final LOGIN_CANCEL:I = -0x2

.field public static final LOGIN_FAIL:I = -0x1

.field public static final LOGIN_NEED:I = 0x5

.field public static final LOGIN_QQ_NOT_INSTALL_OR_VERSION_TOO_LOW:I = 0x3

.field public static final LOGIN_QQ_SUCCESS:I = 0x1

.field public static final LOGIN_WX_NOT_INSTALL_OR_VERSION_TOO_LOW:I = 0x4

.field public static final LOGIN_WX_SUCCESS:I = 0x2

.field public static final PAY_CANCEL:I = -0x2

.field public static final PAY_FAIL:I = -0x1

.field public static final PAY_LocalTokenInvalid:I = -0x5

.field public static final PAY_SUCCESS:I

.field private static mContext:Landroid/app/Activity;


# instance fields
.field private app_id:Ljava/lang/String;

.field private app_key:Ljava/lang/String;

.field private gameSdk:Lcom/bsgamesdk/android/BSGameSdk;

.field private mChannelKey:Ljava/lang/String;

.field private merchant_id:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private server_id:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "1226"

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->merchant_id:Ljava/lang/String;

    .line 41
    const-string v0, "159"

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->app_id:Ljava/lang/String;

    .line 42
    const-string v0, "345"

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->server_id:Ljava/lang/String;

    .line 43
    const-string v0, "d63617abcda1445daeb4546a037ef0d4"

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->app_key:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->uid:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->userName:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->nickname:Ljava/lang/String;

    .line 49
    const-string v0, "Bili"

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mChannelKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->uid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->merchant_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->server_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Lcom/bsgamesdk/android/BSGameSdk;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->gameSdk:Lcom/bsgamesdk/android/BSGameSdk;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->nickname:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public attachBaseContextAppication(Landroid/content/Context;)V
    .registers 2
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 412
    return-void
.end method

.method public close()Z
    .registers 2

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public doLogin(Ljava/lang/String;)Z
    .registers 4
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 115
    sget-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;

    invoke-direct {v1, p0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$4;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public doPay(Lcom/sunborn/gameplatform/core/module/PayInfoModel;)Z
    .registers 4
    .param p1, "payInfo"    # Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    .prologue
    .line 256
    sget-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;

    invoke-direct {v1, p0, p1}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$6;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;Lcom/sunborn/gameplatform/core/module/PayInfoModel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public doSwitchAccount()Z
    .registers 3

    .prologue
    .line 205
    sget-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;

    invoke-direct {v1, p0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$5;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public hideToolBar()Z
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 382
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 406
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 418
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    sput-object p1, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    .line 70
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->merchant_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->app_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->server_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->app_key:Ljava/lang/String;

    new-instance v6, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$1;

    invoke-direct {v6, p0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$1;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)V

    new-instance v7, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$2;

    invoke-direct {v7, p0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$2;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)V

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/bsgamesdk/android/BSGameSdk;->initialize(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/InitCallbackListener;Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;)Lcom/bsgamesdk/android/BSGameSdk;

    .line 93
    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->gameSdk:Lcom/bsgamesdk/android/BSGameSdk;

    .line 95
    iget-object v0, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->gameSdk:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$3;

    invoke-direct {v1, p0}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$3;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->setAccountListener(Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;)V

    .line 103
    return-void
.end method

.method public onCreateApplication(Landroid/app/Application;)V
    .registers 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 341
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 362
    sget-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->appDestroy(Landroid/app/Activity;)V

    .line 363
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 353
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 373
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 357
    sget-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->appOnline(Landroid/app/Activity;)V

    .line 358
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 348
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 367
    sget-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bsgamesdk/android/BSGameSdk;->appOffline(Landroid/app/Activity;)V

    .line 368
    return-void
.end method

.method public open_user_center()Z
    .registers 2

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public showToolBar()Z
    .registers 2

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public submitRoleInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "Value"    # Ljava/lang/String;

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;

    invoke-direct {v1, p0, p1}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;-><init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method
