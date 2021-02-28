.class public Lcom/tencent/tersafe2/TP2Sdk;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decTssInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/tencent/tp/TssSdk;->decTssInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(I)I
    .registers 2

    new-instance v0, Lcom/tencent/tp/TssSdkInitInfo;

    invoke-direct {v0}, Lcom/tencent/tp/TssSdkInitInfo;-><init>()V

    iput p0, v0, Lcom/tencent/tp/TssSdkInitInfo;->game_id:I

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->init(Lcom/tencent/tp/TssSdkInitInfo;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static initEx(ILjava/lang/String;)I
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vkk_fzt:"

    invoke-static {v1}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/tersafe2/TP2Sdk;->init(I)I

    move-result v0

    return v0
.end method

.method public static ioctl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/tencent/tp/TssSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onAppPause()I
    .registers 2

    new-instance v0, Lcom/tencent/tp/TssSdkGameStatusInfo;

    invoke-direct {v0}, Lcom/tencent/tp/TssSdkGameStatusInfo;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/tp/TssSdkGameStatusInfo;->game_status:I

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->setgamestatus(Lcom/tencent/tp/TssSdkGameStatusInfo;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static onAppResume()I
    .registers 2

    new-instance v0, Lcom/tencent/tp/TssSdkGameStatusInfo;

    invoke-direct {v0}, Lcom/tencent/tp/TssSdkGameStatusInfo;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/tp/TssSdkGameStatusInfo;->game_status:I

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->setgamestatus(Lcom/tencent/tp/TssSdkGameStatusInfo;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static onUserLogin(IILjava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v1, 0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/tp/TssSdkUserInfoEx;

    invoke-direct {v0}, Lcom/tencent/tp/TssSdkUserInfoEx;-><init>()V

    iput p0, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->entry_id:I

    iput v1, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->uin_type:I

    iput v2, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->uin_int:I

    iput-object p2, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->uin_str:Ljava/lang/String;

    iput v1, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->app_id_type:I

    iput v2, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->app_id_int:I

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->app_id_str:Ljava/lang/String;

    iput p1, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->world_id:I

    iput-object p3, v0, Lcom/tencent/tp/TssSdkUserInfoEx;->role_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->setuserinfoex(Lcom/tencent/tp/TssSdkUserInfoEx;)V

    return v2
.end method

.method public static registTssInfoReceiver(Lcom/tencent/tp/TssInfoPublisher$TssInfoReceiver;)V
    .registers 1

    invoke-static {p0}, Lcom/tencent/tp/TssSdk;->registTssInfoReceiver(Lcom/tencent/tp/TssInfoPublisher$TssInfoReceiver;)V

    return-void
.end method

.method public static setPopupOptions(I)I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method
