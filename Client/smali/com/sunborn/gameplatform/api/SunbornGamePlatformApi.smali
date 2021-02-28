.class public Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;
.super Ljava/lang/Object;
.source "SunbornGamePlatformApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;
    }
.end annotation


# static fields
.field public static final LOGIN_CANCEL:I = -0x2

.field public static final LOGIN_FAIL:I = -0x1

.field public static final LOGIN_SUCCESS:I = 0x0

.field public static final PAY_CANCEL:I = -0x2

.field public static final PAY_FAIL:I = -0x1

.field public static final PAY_SUCCESS:I

.field public static TAG:Ljava/lang/String;

.field private static mActivity:Landroid/app/Activity;

.field private static mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

.field private static mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

.field private static sInstance:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;


# instance fields
.field private cacheOpenId:Ljava/lang/String;

.field private createOrderAction:Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

.field public game_channel_id:Ljava/lang/String;

.field private httpCallBack:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;

.field private mLoadingDialog:Lcom/sunborn/gameplatform/core/view/LoadingDialog;

.field private mMsgDialog:Lcom/sunborn/gameplatform/core/view/MsgDialog;

.field protected payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

.field public platform_channel_id:Ljava/lang/String;

.field protected user:Lcom/sunborn/gameplatform/core/module/SunbornUser;

.field private verfyAction:Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "SunbornGamePlatform"

    sput-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-direct {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;-><init>()V

    sput-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->sInstance:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    .line 57
    sput-object v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    .line 64
    sput-object v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    .line 68
    sput-object v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->platform_channel_id:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->game_channel_id:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->cacheOpenId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;Lcom/sunborn/gameplatform/core/view/LoadingDialog;)Lcom/sunborn/gameplatform/core/view/LoadingDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;
    .param p1, "x1"    # Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mLoadingDialog:Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;Lcom/sunborn/gameplatform/core/view/MsgDialog;)Lcom/sunborn/gameplatform/core/view/MsgDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;
    .param p1, "x1"    # Lcom/sunborn/gameplatform/core/view/MsgDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mMsgDialog:Lcom/sunborn/gameplatform/core/view/MsgDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;)Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;
    .param p1, "x1"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->httpCallBack:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;)V
    .registers 1
    .param p0, "x0"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onActionBegin()V

    return-void
.end method

.method static synthetic access$600()Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;)V
    .registers 1
    .param p0, "x0"    # Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->onActionEnd()V

    return-void
.end method

.method public static getInstance()Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->sInstance:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    invoke-direct {v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;-><init>()V

    sput-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->sInstance:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    .line 55
    :cond_b
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->sInstance:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;

    return-object v0
.end method

.method public static hideToolBar()Z
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->hideToolBar()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private onActionBegin()V
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mLoadingDialog:Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mLoadingDialog:Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_19

    .line 279
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mLoadingDialog:Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->show()V

    .line 281
    :cond_19
    return-void
.end method

.method private onActionEnd()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mLoadingDialog:Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mLoadingDialog:Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_19

    .line 284
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mLoadingDialog:Lcom/sunborn/gameplatform/core/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/view/LoadingDialog;->dismiss()V

    .line 286
    :cond_19
    return-void
.end method

.method public static open_user_center(I)Z
    .registers 2
    .param p0, "index"    # I

    .prologue
    .line 140
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->open_user_center()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static showToolBar()Z
    .registers 1

    .prologue
    .line 143
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->showToolBar()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static submitRoleInfo(Ljava/lang/String;)V
    .registers 2
    .param p0, "infoJson"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 119
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p0}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->submitRoleInfo(Ljava/lang/String;)V

    .line 122
    :cond_9
    return-void
.end method

.method public static version()Ljava/lang/String;
    .registers 1

    .prologue
    .line 136
    const-string v0, "1.0"

    return-object v0
.end method


# virtual methods
.method public LoginResponseDirect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "result"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "openid"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "extenVal"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 202
    invoke-static {p3}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 203
    iput-object p3, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->cacheOpenId:Ljava/lang/String;

    .line 205
    :cond_40
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    if-eqz v0, :cond_4e

    .line 206
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;->onLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_4e
    return-void
.end method

.method public LogoutResponse()V
    .registers 2

    .prologue
    .line 214
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    if-eqz v0, :cond_9

    .line 215
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    invoke-interface {v0}, Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;->onLogout()V

    .line 217
    :cond_9
    return-void
.end method

.method public PayResponse(ILjava/lang/String;DLjava/lang/String;)V
    .registers 13
    .param p1, "state"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "money"    # D
    .param p5, "orderid"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    if-eqz v0, :cond_d

    .line 223
    sget-object v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;->onPay(ILjava/lang/String;DLjava/lang/String;)V

    .line 226
    :cond_d
    return-void
.end method

.method public SetThirdSDKListener(Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;)V
    .registers 2
    .param p1, "Listener"    # Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    .prologue
    .line 70
    sput-object p1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    .line 71
    return-void
.end method

.method public SetUserCenterCallback(Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;)V
    .registers 2
    .param p1, "Listener"    # Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    .prologue
    .line 73
    sput-object p1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    .line 74
    return-void
.end method

.method public attachBaseContextAppication(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 367
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->attachBaseContextAppication(Landroid/content/Context;)V

    .line 370
    :cond_9
    return-void
.end method

.method public close()Z
    .registers 2

    .prologue
    .line 150
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->close()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public doCreaterOrder(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->createOrderAction:Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    if-nez v0, :cond_b

    .line 181
    new-instance v0, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    invoke-direct {v0}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;-><init>()V

    iput-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->createOrderAction:Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    .line 182
    :cond_b
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->createOrderAction:Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->httpCallBack:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->setBaseActionResultCallBack(Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;)V

    .line 183
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->createOrderAction:Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;

    invoke-virtual {v0, p1}, Lcom/sunborn/gameplatform/core/action/SunbornCreateOrderAction;->submit(Ljava/util/HashMap;)V

    .line 184
    return-void
.end method

.method public doExit()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method public doLogin(Ljava/lang/String;)Z
    .registers 4
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-static {v0, p1, v1}, Lcom/smali/tools/SmaliTools;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public doLoginFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "result"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "openid"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "extenVal"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doLoginFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunborn/gameplatform/core/common/SLog;->e(Ljava/lang/String;)V

    .line 187
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->setCacheOpenId(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    if-eqz v0, :cond_51

    .line 189
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mUserCenterCallback:Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sunborn/gameplatform/core/listener/SunbornSDKCallback;->onLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_51
    return-void
.end method

.method public doLoginVerify(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->verfyAction:Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    if-nez v0, :cond_b

    .line 169
    new-instance v0, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    invoke-direct {v0}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;-><init>()V

    iput-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->verfyAction:Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    .line 170
    :cond_b
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->verfyAction:Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    iget-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->httpCallBack:Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$MyHttpCallBack;

    invoke-virtual {v0, v1}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->setBaseActionResultCallBack(Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;)V

    .line 171
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->verfyAction:Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    invoke-virtual {v0, p1}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->submit(Ljava/util/HashMap;)V

    .line 172
    return-void
.end method

.method public doPay(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 24
    .param p1, "money"    # D
    .param p3, "product_id"    # Ljava/lang/String;
    .param p4, "product_name"    # Ljava/lang/String;
    .param p5, "serverid"    # Ljava/lang/String;
    .param p6, "charid"    # Ljava/lang/String;
    .param p7, "accountid"    # Ljava/lang/String;
    .param p8, "order_id"    # Ljava/lang/String;
    .param p9, "order_sdk"    # Ljava/lang/String;
    .param p10, "payType"    # I

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_c

    invoke-static/range {p8 .. p8}, Lcom/sunborn/gameplatform/core/common/SUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 125
    :cond_c
    const/4 v0, 0x0

    .line 132
    :goto_d
    return v0

    .line 127
    :cond_e
    new-instance v1, Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/sunborn/gameplatform/core/module/PayInfoModel;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    .line 131
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->payInfo:Lcom/sunborn/gameplatform/core/module/PayInfoModel;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->getHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->doCreaterOrder(Ljava/util/HashMap;)V

    .line 132
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public doPlatformRealName()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method public doSwitchAccount()Z
    .registers 2

    .prologue
    .line 115
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->doSwitchAccount()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCacheOpenId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->cacheOpenId:Ljava/lang/String;

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    invoke-static {}, Lcom/sunborn/common/tool/MacUitl;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 262
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_7

    .line 263
    const-string v0, ""

    .line 265
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/sunborn/common/tool/TrackUitl;->getInstance()Lcom/sunborn/common/tool/TrackUitl;

    move-result-object v0

    sget-object v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sunborn/common/tool/TrackUitl;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 418
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 419
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 422
    :cond_9
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 432
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 433
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onBackPressed()V

    .line 436
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 439
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 440
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 443
    :cond_9
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 92
    sput-object p1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    .line 93
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_d

    .line 94
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    sget-object v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onCreate(Landroid/app/Activity;)V

    .line 96
    :cond_d
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lohanry/android/framework/service/FrameworkServiceManage;->init(Landroid/content/Context;)V

    .line 98
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;

    invoke-direct {v1, p0}, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi$1;-><init>(Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    const-string v1, "game_channelid"

    invoke-static {v0, v1}, Lcom/sunborn/gameplatform/core/common/SUtils;->getMataData(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->game_channel_id:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    const-string v1, "platform_channel_id"

    invoke-static {v0, v1}, Lcom/sunborn/gameplatform/core/common/SUtils;->getMataData(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->platform_channel_id:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public onCreateApplication(Landroid/app/Application;)V
    .registers 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 357
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_a

    .line 358
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onCreateApplication(Landroid/app/Application;)V

    .line 363
    :goto_9
    return-void

    .line 360
    :cond_a
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->TAG:Ljava/lang/String;

    const-string v1, "mThirdpartySDKListener not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->verfyAction:Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    if-eqz v0, :cond_9

    .line 402
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->verfyAction:Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/action/SunbornLoginVerfyAction;->release()V

    .line 403
    :cond_9
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_12

    .line 404
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onDestroy(Landroid/app/Activity;)V

    .line 407
    :cond_12
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 425
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 426
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onNewIntent(Landroid/content/Intent;)V

    .line 429
    :cond_9
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 387
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 388
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onPause(Landroid/app/Activity;)V

    .line 391
    :cond_9
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 410
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 411
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onRestart(Landroid/app/Activity;)V

    .line 414
    :cond_9
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 380
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 381
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onResume(Landroid/app/Activity;)V

    .line 384
    :cond_9
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 373
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_b

    .line 374
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    sget-object v1, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onStart(Landroid/app/Activity;)V

    .line 377
    :cond_b
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 394
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    if-eqz v0, :cond_9

    .line 395
    sget-object v0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mThirdpartySDKListener:Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;

    invoke-interface {v0, p1}, Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;->onStop(Landroid/app/Activity;)V

    .line 398
    :cond_9
    return-void
.end method

.method public setCacheOpenId(Ljava/lang/String;)V
    .registers 2
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->cacheOpenId:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setDebug(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 244
    invoke-static {p1}, Lcom/lohanry/android/framework/tools/Logger;->setLogLevel(I)V

    .line 245
    invoke-static {p1}, Lcom/sunborn/gameplatform/core/common/SLog;->setLogLevel(I)V

    .line 246
    return-void
.end method

.method public setSunbornSDKInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_30

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_3a

    .line 238
    :goto_b
    return-void

    .line 228
    :sswitch_c
    const-string v1, "PassportUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_16
    const-string v1, "PayCenterUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    .line 230
    :pswitch_20
    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->setHttpPassportDOMAINUrl(Ljava/lang/String;)V

    goto :goto_b

    .line 233
    :pswitch_28
    invoke-static {}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->getInstance()Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sunborn/gameplatform/core/config/SunbornPlatformConfig;->setHttpPayDOMAINUrl(Ljava/lang/String;)V

    goto :goto_b

    .line 228
    :sswitch_data_30
    .sparse-switch
        -0x66ba5ace -> :sswitch_16
        0x44d117dd -> :sswitch_c
    .end sparse-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_28
    .end packed-switch
.end method

.method public showMsgDialog(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mMsgDialog:Lcom/sunborn/gameplatform/core/view/MsgDialog;

    invoke-virtual {v0, p1}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->setMsg(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sunborn/gameplatform/api/SunbornGamePlatformApi;->mMsgDialog:Lcom/sunborn/gameplatform/core/view/MsgDialog;

    invoke-virtual {v0}, Lcom/sunborn/gameplatform/core/view/MsgDialog;->show()V

    .line 275
    return-void
.end method
