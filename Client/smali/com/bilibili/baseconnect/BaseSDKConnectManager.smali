.class public Lcom/bilibili/baseconnect/BaseSDKConnectManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/baseconnect/BaseSDKConnect;


# static fields
.field private static baseSDKConnectImp:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

.field private static callback:Lcom/bilibili/baseconnect/OaidCallback;

.field private static trackClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static trackObject:Ljava/lang/Object;


# instance fields
.field androidPercent:I

.field appId:Ljava/lang/String;

.field buvid:Ljava/lang/String;

.field channelId:Ljava/lang/String;

.field context:Landroid/app/Application;

.field fingerprint:Ljava/lang/String;

.field private isOpen:Z

.field isOpenFingerPrint:Z

.field logState:Ljava/lang/String;

.field merchatId:Ljava/lang/String;

.field sdkType:Ljava/lang/String;

.field sdkVer:Ljava/lang/String;

.field serverId:Ljava/lang/String;

.field strategy:Lorg/json/JSONArray;

.field udid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->logState:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->androidPercent:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->fingerprint:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->strategy:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/baseconnect/BaseSDKConnectManager;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getStrategies(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;
    .registers 2

    const-class v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->baseSDKConnectImp:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    if-nez v0, :cond_14

    new-instance v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    invoke-direct {v0}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;-><init>()V

    sput-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->baseSDKConnectImp:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->baseSDKConnectImp:Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private getStrategies(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/baseconnect/StrategyInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_34

    :try_start_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_34

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v3, Lcom/bilibili/baseconnect/StrategyInfo;

    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/bilibili/baseconnect/StrategyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_33

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :catch_33
    move-exception v0

    :cond_34
    return-object v2
.end method

.method private static gettrackClazz()Ljava/lang/Object;
    .registers 2

    :try_start_0
    const-class v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1a

    :try_start_3
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "com.bilibili.track.Track"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_17

    :try_start_10
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1a

    move-result-object v0

    :goto_16
    return-object v0

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    :try_start_19
    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public getBsDeviceInfo(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_c
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v2, "getBsGameDeviceInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v2, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    move-object v0, v1

    goto :goto_2a
.end method

.method public getFingerprintConfig(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConstant;->FIGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/bilibili/baseconnect/SPUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3
.end method

.method public getOaid(Landroid/content/Context;Lcom/bilibili/baseconnect/OaidCallback;)V
    .registers 8

    if-eqz p2, :cond_4

    sput-object p2, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->callback:Lcom/bilibili/baseconnect/OaidCallback;

    :cond_4
    :try_start_4
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_b
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "getOaid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_26
.end method

.method public getOaidCallBack(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->callback:Lcom/bilibili/baseconnect/OaidCallback;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->callback:Lcom/bilibili/baseconnect/OaidCallback;

    invoke-interface {v0, p1}, Lcom/bilibili/baseconnect/OaidCallback;->callback(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public getTrackConfig(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConstant;->TRACKOPEN:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/bilibili/baseconnect/SPUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3
.end method

.method public initTrack(ZLandroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    :try_start_0
    iput-object p2, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->context:Landroid/app/Application;

    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_9
    iput-boolean p1, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->isOpen:Z

    iput-object p2, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->context:Landroid/app/Application;

    iput-object p3, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->buvid:Ljava/lang/String;

    iput-object p4, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->udid:Ljava/lang/String;

    iput-object p6, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->serverId:Ljava/lang/String;

    iput-object p7, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->channelId:Ljava/lang/String;

    iput-object p8, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->merchatId:Ljava/lang/String;

    iput-object p9, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->sdkType:Ljava/lang/String;

    iput-object p10, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->sdkVer:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->isOpenFingerPrint:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method public onConfigSuccess(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/baseconnect/StrategyInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_df

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-ge v2, p3, :cond_df

    move v2, v0

    :goto_1a
    if-eqz p4, :cond_25

    const-string v3, "1"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v1, v0

    :cond_25
    if-eqz p5, :cond_46

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/baseconnect/StrategyInfo;

    iget-object v4, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->sdkVer:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bilibili/baseconnect/StrategyInfo;->needInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    :goto_45
    return-void

    :cond_46
    :try_start_46
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_4d

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_4d
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v3, "init"

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/app/Application;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v3, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->context:Landroid/app/Application;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->buvid:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->appId:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->udid:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->serverId:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->channelId:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->merchatId:Ljava/lang/String;

    aput-object v5, v4, v2

    const/16 v2, 0x8

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->sdkType:Ljava/lang/String;

    aput-object v5, v4, v2

    const/16 v2, 0x9

    iget-object v5, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->sdkVer:Ljava/lang/String;

    aput-object v5, v4, v2

    const/16 v2, 0xa

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_da} :catch_dc

    goto/16 :goto_45

    :catch_dc
    move-exception v0

    goto/16 :goto_45

    :cond_df
    move v2, v1

    goto/16 :goto_1a
.end method

.method public reportClickEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportClickEvent"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_4e
.end method

.method public reportClickH5Event(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportClickH5Event"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_4e
.end method

.method public reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportCustomEvent"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_4e
.end method

.method public reportExposureEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportExposureEvent"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Long;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Long;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    :goto_68
    return-void

    :catch_69
    move-exception v0

    goto :goto_68
.end method

.method public reportExposureH5Event(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportExposureH5Event"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-class v4, Ljava/lang/Long;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-class v4, Ljava/lang/Long;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    const/4 v3, 0x7

    aput-object p8, v2, v3

    const/16 v3, 0x8

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    :goto_7c
    return-void

    :catch_7d
    move-exception v0

    goto :goto_7c
.end method

.method public reportFlutterEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportFlutterEvent"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_4e
.end method

.method public reportPageViewEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportPageViewEvent"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_4e
.end method

.method public reportPageViewH5Event(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportPageViewH5Event"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p8, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_4e
.end method

.method public reportSystemEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "reportSystemEvent"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_4e
.end method

.method public saveFingerprintConfig(Landroid/content/Context;Z)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConstant;->FIGERPRINT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bilibili/baseconnect/SPUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public saveTrackConfig(Landroid/content/Context;Z)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConstant;->TRACKOPEN:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bilibili/baseconnect/SPUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public setTrackConfig(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "baseCmptConfigNew"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->fingerprint:Ljava/lang/String;

    const-string v1, "trackData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "logState"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->logState:Ljava/lang/String;

    const-string v0, "androidPercent"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->androidPercent:I

    const-string v0, "strategy"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->strategy:Lorg/json/JSONArray;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_46

    :goto_36
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/baseconnect/BaseSDKConnectManager$1;-><init>(Lcom/bilibili/baseconnect/BaseSDKConnectManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_45
    return-void

    :catch_46
    move-exception v0

    goto :goto_36
.end method

.method public trackLogin(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->gettrackClazz()Ljava/lang/Object;

    :cond_7
    sget-object v0, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackClazz:Ljava/lang/Class;

    const-string v1, "trackLogin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->trackObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    goto :goto_22
.end method
