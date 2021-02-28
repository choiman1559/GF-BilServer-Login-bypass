.class public Lcom/bilibili/track/Track;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/track/dispather/BaseAPI;


# static fields
.field private static final SWITCH_WHAT:I = 0x378

.field public static appId:Ljava/lang/String;

.field private static appStartTime:Ljava/lang/String;

.field public static buvid:Ljava/lang/String;

.field public static channelId:Ljava/lang/String;

.field private static commonInfo:Lcom/bilibili/track/model/CommonInfo;

.field public static forceSn:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static fullCommonInfo:Lcom/bilibili/track/model/FullCommonInfo;

.field private static handler:Lcom/bilibili/track/api/HttpRequestHandler;

.field private static isInit:Z

.field private static isOpenLocal:Z

.field private static isOpenRiskLocal:Z

.field private static mContext:Landroid/app/Application;

.field public static merchatId:Ljava/lang/String;

.field private static remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

.field public static sdkType:Ljava/lang/String;

.field public static sdkVer:Ljava/lang/String;

.field public static serverId:Ljava/lang/String;

.field private static track:Lcom/bilibili/track/Track;

.field private static trackActions:Lcom/bilibili/track/dispather/TrackActions;

.field private static trackClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static trackConfig:Lcom/bilibili/track/config/TrackConfig;

.field public static track_id:Ljava/lang/String;

.field public static udid:Ljava/lang/String;

.field public static unForceSn:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static user_id:Ljava/lang/String;


# instance fields
.field private loginId:Lcom/bilibili/track/storage/presistent/LoginId;

.field oaidUtil:Lcom/bilibili/deviceutils/utils/OaidUtil;

.field object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/bilibili/track/Track;->isInit:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/track/Track;->remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    sput-boolean v1, Lcom/bilibili/track/Track;->isOpenLocal:Z

    sput-boolean v1, Lcom/bilibili/track/Track;->isOpenRiskLocal:Z

    const-string v0, "0"

    sput-object v0, Lcom/bilibili/track/Track;->user_id:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bilibili/track/Track;->track_id:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bilibili/track/Track;->appStartTime:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bilibili/track/Track;->forceSn:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bilibili/track/Track;->unForceSn:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-direct {v0}, Lcom/bilibili/track/api/HttpRequestHandler;-><init>()V

    sput-object v0, Lcom/bilibili/track/Track;->handler:Lcom/bilibili/track/api/HttpRequestHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/bilibili/track/config/TrackConfig;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    return-object v0
.end method

.method static synthetic access$002(Lcom/bilibili/track/config/TrackConfig;)Lcom/bilibili/track/config/TrackConfig;
    .registers 1

    sput-object p0, Lcom/bilibili/track/Track;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bilibili/track/config/TrackConfig;)V
    .registers 1

    invoke-static {p0}, Lcom/bilibili/track/Track;->setTrackConfig(Lcom/bilibili/track/config/TrackConfig;)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/Map;)V
    .registers 1

    invoke-static {p0}, Lcom/bilibili/track/Track;->setFullDevice(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/bilibili/track/model/TrackModel;
    .registers 7

    invoke-static/range {p0 .. p5}, Lcom/bilibili/track/Track;->formatData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/bilibili/track/model/TrackModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/bilibili/track/dispather/TrackActions;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->trackClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/bilibili/track/Track;->getOaidCallbackClazz()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static addFultterDevice(Lcom/bilibili/track/model/CommonInfo;)V
    .registers 3

    invoke-static {}, Lcom/bilibili/track/utils/FlutterDeviceInfo;->getCpuFreq()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/track/model/CommonInfo;->setCpuRate(Ljava/lang/String;)V

    sget-object v0, Lcom/bilibili/track/Track;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/bilibili/track/utils/FlutterDeviceInfo;->getAppMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/track/model/CommonInfo;->setAppMemory(Ljava/lang/String;)V

    sget-object v0, Lcom/bilibili/track/Track;->appStartTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bilibili/track/model/CommonInfo;->setAppStart(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized formatData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/bilibili/track/model/TrackModel;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bilibili/track/model/TrackModel;"
        }
    .end annotation

    const-class v1, Lcom/bilibili/track/Track;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/bilibili/track/model/TrackModel;

    invoke-direct {v0}, Lcom/bilibili/track/model/TrackModel;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bilibili/track/model/TrackModel;->setForce(Z)V

    invoke-virtual {v0, p2}, Lcom/bilibili/track/model/TrackModel;->setEvent_id(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/bilibili/track/model/TrackModel;->setExtension(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/bilibili/track/model/TrackModel;->setPage_name(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/bilibili/track/model/TrackModel;->setTrackType(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/bilibili/track/model/TrackModel;->setLogLevel(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/track/model/TrackModel;->setCommonInfo(Lcom/bilibili/track/model/CommonInfo;)V

    const-string v2, "flutter"

    invoke-virtual {p5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/bilibili/track/Track;->addFultterDevice(Lcom/bilibili/track/model/CommonInfo;)V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    :cond_30
    monitor-exit v1

    return-object v0

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAppStartTime()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->appStartTime:Ljava/lang/String;

    return-object v0
.end method

.method private static getCommonInfo()Lcom/bilibili/track/model/CommonInfo;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->commonInfo:Lcom/bilibili/track/model/CommonInfo;

    return-object v0
.end method

.method private static getDeviceInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDevice;->getInstance()Lcom/bilibili/deviceutils/BilibiliDevice;

    move-result-object v8

    new-instance v0, Lcom/bilibili/track/Track$2;

    const/4 v1, 0x2

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track$2;-><init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->getDeviceInfoAsync(Lcom/bilibili/deviceutils/interfaces/BilibiliDeviceCallBack;)V

    return-void
.end method

.method public static getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->fullCommonInfo:Lcom/bilibili/track/model/FullCommonInfo;

    return-object v0
.end method

.method public static getInstance()Lcom/bilibili/track/Track;
    .registers 2

    sget-object v0, Lcom/bilibili/track/Track;->track:Lcom/bilibili/track/Track;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/bilibili/track/Track;->track:Lcom/bilibili/track/Track;

    :goto_6
    return-object v0

    :cond_7
    const-class v1, Lcom/bilibili/track/Track;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lcom/bilibili/track/Track;->track:Lcom/bilibili/track/Track;

    if-nez v0, :cond_15

    new-instance v0, Lcom/bilibili/track/Track;

    invoke-direct {v0}, Lcom/bilibili/track/Track;-><init>()V

    sput-object v0, Lcom/bilibili/track/Track;->track:Lcom/bilibili/track/Track;

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    sget-object v0, Lcom/bilibili/track/Track;->track:Lcom/bilibili/track/Track;

    goto :goto_6

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static getOaidCallbackClazz()Ljava/lang/Object;
    .registers 2

    :try_start_0
    const-class v1, Lcom/bilibili/track/Track;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1a

    :try_start_3
    sget-object v0, Lcom/bilibili/track/Track;->trackClazz:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "com.bilibili.baseconnect.BaseSDKConnectManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bilibili/track/Track;->trackClazz:Ljava/lang/Class;

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_17

    :try_start_10
    sget-object v0, Lcom/bilibili/track/Track;->trackClazz:Ljava/lang/Class;

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

.method public static getRemoteSDKConfig()Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    return-object v0
.end method

.method public static getTrackConfig()Lcom/bilibili/track/config/TrackConfig;
    .registers 1

    sget-object v0, Lcom/bilibili/track/Track;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    return-object v0
.end method

.method private static getTrackConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)V
    .registers 16

    const-string v4, ""

    const-string v0, "LOGINID"

    invoke-static {v0}, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/storage/presistent/LoginId;

    invoke-virtual {v0}, Lcom/bilibili/track/storage/presistent/LoginId;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/bilibili/track/storage/presistent/LoginId;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/bilibili/track/Track$1;

    sget-object v0, Lcom/bilibili/track/Track;->handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-direct {v8, v0, p6}, Lcom/bilibili/track/Track$1;-><init>(Lcom/bilibili/track/api/HttpRequestHandler;Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p4

    invoke-static/range {v0 .. v8}, Lcom/bilibili/track/api/TrackApi;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/track/api/RequestCallback;)V

    return-void
.end method

.method public static init(ZLandroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 18

    invoke-static {p1}, Lcom/bilibili/track/Track;->initCheck(Landroid/app/Application;)V

    sput-object p1, Lcom/bilibili/track/Track;->mContext:Landroid/app/Application;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p2, ""

    :cond_d
    sput-object p2, Lcom/bilibili/track/Track;->buvid:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p3, ""

    :cond_17
    sput-object p3, Lcom/bilibili/track/Track;->appId:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p4, ""

    :cond_21
    sput-object p4, Lcom/bilibili/track/Track;->udid:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p5, ""

    :cond_2b
    sput-object p5, Lcom/bilibili/track/Track;->serverId:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string p6, ""

    :cond_35
    sput-object p6, Lcom/bilibili/track/Track;->channelId:Ljava/lang/String;

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string p7, ""

    :cond_3f
    sput-object p7, Lcom/bilibili/track/Track;->merchatId:Ljava/lang/String;

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p8, ""

    :cond_49
    sput-object p8, Lcom/bilibili/track/Track;->sdkType:Ljava/lang/String;

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string p9, ""

    :cond_53
    sput-object p9, Lcom/bilibili/track/Track;->sdkVer:Ljava/lang/String;

    :try_start_55
    sput-boolean p10, Lcom/bilibili/track/Track;->isOpenRiskLocal:Z

    if-eqz p10, :cond_67

    sget-object v1, Lcom/bilibili/track/Track;->sdkVer:Ljava/lang/String;

    sget-object v2, Lcom/bilibili/track/Track;->user_id:Ljava/lang/String;

    sget-object v3, Lcom/bilibili/track/Track;->appId:Ljava/lang/String;

    sget-object v4, Lcom/bilibili/track/Track;->buvid:Ljava/lang/String;

    sget-object v5, Lcom/bilibili/track/Track;->udid:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_67} :catch_15b

    :cond_67
    :goto_67
    sput-boolean p0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez p0, :cond_6c

    :goto_6b
    return-void

    :cond_6c
    :try_start_6c
    invoke-static {}, Lcom/bilibili/deviceutils/BilibiliDevice;->getInstance()Lcom/bilibili/deviceutils/BilibiliDevice;

    move-result-object v0

    sget-object v1, Lcom/bilibili/track/Track;->sdkVer:Ljava/lang/String;

    sget-object v2, Lcom/bilibili/track/Track;->udid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bilibili/deviceutils/BilibiliDevice;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_77} :catch_158

    :goto_77
    new-instance v0, Lcom/bilibili/track/model/CommonInfo;

    invoke-direct {v0}, Lcom/bilibili/track/model/CommonInfo;-><init>()V

    sput-object v0, Lcom/bilibili/track/Track;->commonInfo:Lcom/bilibili/track/model/CommonInfo;

    new-instance v0, Lcom/bilibili/track/model/FullCommonInfo;

    invoke-direct {v0}, Lcom/bilibili/track/model/FullCommonInfo;-><init>()V

    sput-object v0, Lcom/bilibili/track/Track;->fullCommonInfo:Lcom/bilibili/track/model/FullCommonInfo;

    new-instance v0, Lcom/bilibili/track/config/TrackConfig;

    invoke-direct {v0}, Lcom/bilibili/track/config/TrackConfig;-><init>()V

    sput-object v0, Lcom/bilibili/track/Track;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-static {}, Lcom/bilibili/track/utils/TrackidUtils;->buildTrackId()V

    sget-object v0, Lcom/bilibili/track/Track;->commonInfo:Lcom/bilibili/track/model/CommonInfo;

    invoke-static {v0}, Lcom/bilibili/track/Track;->setCommonInfo(Lcom/bilibili/track/model/CommonInfo;)V

    invoke-static {p1}, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->initLoader(Landroid/content/Context;)Lcom/bilibili/track/storage/presistent/config/PersistentLoader;

    const-string v0, "TRACK_CONFIG"

    invoke-static {v0}, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    sput-object v0, Lcom/bilibili/track/Track;->remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    sget-object v0, Lcom/bilibili/track/Track;->remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    invoke-virtual {v0}, Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/track/config/TrackConfigHelper;->toJsonConfig(Ljava/lang/String;)Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/Track;->setTrackConfig(Lcom/bilibili/track/config/TrackConfig;)V

    :try_start_b0
    sget-object v0, Lcom/bilibili/track/Track;->sdkType:Ljava/lang/String;

    const-string v1, ""

    sget-object v2, Lcom/bilibili/track/Track;->appId:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lcom/bilibili/track/Track;->buvid:Ljava/lang/String;

    sget-object v5, Lcom/bilibili/track/Track;->udid:Ljava/lang/String;

    sget-object v6, Lcom/bilibili/track/Track;->remoteSDKConfig:Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    invoke-static/range {v0 .. v6}, Lcom/bilibili/track/Track;->getTrackConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c1} :catch_155

    :goto_c1
    sget-object v0, Lcom/bilibili/track/Track;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/bilibili/track/dispather/TrackActions;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/dispather/TrackActions;

    move-result-object v0

    sput-object v0, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    new-instance v0, Lcom/bilibili/track/dispather/TrackLifecycle;

    invoke-direct {v0}, Lcom/bilibili/track/dispather/TrackLifecycle;-><init>()V

    sget-object v1, Lcom/bilibili/track/Track;->mContext:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getInstance()Lcom/bilibili/track/Track;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "init"

    const-string v4, ""

    sget-object v5, Lcom/bilibili/track/constants/LogLevel;->important:Lcom/bilibili/track/constants/LogLevel;

    invoke-virtual {v5}, Lcom/bilibili/track/constants/LogLevel;->getLevel()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/track/Track;->reportSystemEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :try_start_e8
    new-instance v0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    sget-object v1, Lcom/bilibili/track/Track;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAndroId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/track/model/CommonInfo;->setAndroid_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppVc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/track/model/CommonInfo;->setApp_ver(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getBid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/track/model/CommonInfo;->setBid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/track/model/CommonInfo;->setNet_type(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getWifiMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/track/model/CommonInfo;->setMac(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/track/model/CommonInfo;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getModle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/track/model/CommonInfo;->setModel(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getOsApi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/CommonInfo;->setOsapi(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v0

    sget-object v1, Lcom/bilibili/track/Track;->sdkVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/CommonInfo;->setSdkVer(Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_150} :catch_152

    goto/16 :goto_6b

    :catch_152
    move-exception v0

    goto/16 :goto_6b

    :catch_155
    move-exception v0

    goto/16 :goto_c1

    :catch_158
    move-exception v0

    goto/16 :goto_77

    :catch_15b
    move-exception v0

    goto/16 :goto_67
.end method

.method private static initCheck(Landroid/app/Application;)V
    .registers 1

    if-nez p0, :cond_2

    :cond_2
    return-void
.end method

.method public static setAppStartTime(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/bilibili/track/Track;->appStartTime:Ljava/lang/String;

    return-void
.end method

.method private static setCommonInfo(Lcom/bilibili/track/model/CommonInfo;)V
    .registers 1

    sput-object p0, Lcom/bilibili/track/Track;->commonInfo:Lcom/bilibili/track/model/CommonInfo;

    return-void
.end method

.method private static setFullDevice(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "imei"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "oa_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setOaid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "android_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setAndroid_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "icc_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setIcc_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "gad_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setGad_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "bid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "bt_mac"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBt_mac(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "mac"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setMac(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "broad"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBroad(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "brand"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBrand(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "host"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setHost(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "device"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setDevice(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "manufacturer"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setManufacturer(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "display_name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setDisplay_name(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "pf_ver"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setPf_ver(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "os"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setOs(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "incremental"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setIncremental(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "code_name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCode_name(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "serial"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setSerial(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "model"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setModel(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "osapi"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setOsapi(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "build_time"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBuild_time(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "sensor"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setSensor(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "camzoom"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCamzoom(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "camCnt"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCam_cnt(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "cam_light"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCam_light(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "cam_px"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCam_px(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "cam_pa"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCam_pa(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "brighiness"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBrighiness(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "available_system"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setAvailable_system(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "available_sm"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setAvailable_sm(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "sd_memory"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setSd_memory(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "total_storage"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setTotal_storage(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "total_memory"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setTotal_memory(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "dp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setDp(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "cpu_info"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCpu_info(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "abis"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setAbis(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "cpu_freq"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCpu_freq(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "cpu_cnt"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCpu_cnt(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "battery_temp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBattery_temp(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "battery_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBattery_level(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "battery_health"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBattery_health(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "net_type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setNet_type(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "operator"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setOperator(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "sim_state"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setSim_state(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "ssid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setSsid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "bssid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBssid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "wifi_list"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setWifi_list(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "orientation"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setOrientation(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "boot_time "

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBoot_time(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "times_tamp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setTimes_tamp(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "appName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setAppName(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "app_ver"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setApp_ver(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "app_code"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setApp_code(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "install_time"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setInstall_time(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "pkg_name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setPkg_name(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "user_agent"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setUser_agent(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "input"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setInput(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "sign"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setSign(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "iso"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setIso(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "local_ip"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setLocal_ip(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "loc"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setLoc(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "is_debug"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setIs_debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "is_root"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setIs_root(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "is_emu"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setIs_emu(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "is_axposed"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setIs_axposed(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "sdkver"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setSdkver(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "chid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setChid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "fts"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setFts(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "net"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setNet(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "band"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setBand(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "cpuVendor"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCpuVendor(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "cell"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setCell(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "maps"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setMaps(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "files"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setFiles(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "virtual"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setVirtual(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "virtualproc"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setVirtualproc(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "apps"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setApps(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "guid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setGuid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "uid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setUid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "udid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setUdid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "vaid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setVaid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "aaid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setAaid(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "screen_inch"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setScreen_inch(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "kernel_ver"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setKernel_ver(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "time_zone"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setTime_zone(Ljava/lang/String;)V

    invoke-static {}, Lcom/bilibili/track/Track;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v1

    const-string v0, "lang"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bilibili/track/model/FullCommonInfo;->setLang(Ljava/lang/String;)V

    return-void
.end method

.method private static setTrackConfig(Lcom/bilibili/track/config/TrackConfig;)V
    .registers 1

    sput-object p0, Lcom/bilibili/track/Track;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    return-void
.end method

.method private toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bilibili/track/dispather/TrackActions;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p6, :cond_3

    :goto_2
    return-void

    :cond_3
    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/bilibili/track/Track;->formatData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/bilibili/track/model/TrackModel;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/bilibili/track/dispather/TrackActions;->acceptInfo(Lcom/bilibili/track/model/TrackModel;)V

    goto :goto_2
.end method

.method private toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;JJ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bilibili/track/dispather/TrackActions;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    if-nez p6, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_d

    invoke-interface {v6, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d
    const-string v2, "start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "end"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p7

    invoke-static/range {v2 .. v7}, Lcom/bilibili/track/Track;->formatData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/bilibili/track/model/TrackModel;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/bilibili/track/dispather/TrackActions;->acceptInfo(Lcom/bilibili/track/model/TrackModel;)V

    goto :goto_2
.end method

.method private toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bilibili/track/dispather/TrackActions;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p6, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_d

    invoke-interface {v6, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d
    const-string v2, "start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "end"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "url"

    move-object/from16 v0, p13

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title"

    move-object/from16 v0, p12

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p7

    invoke-static/range {v2 .. v7}, Lcom/bilibili/track/Track;->formatData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/bilibili/track/model/TrackModel;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/bilibili/track/model/TrackModel;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/bilibili/track/model/TrackModel;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p6, v2}, Lcom/bilibili/track/dispather/TrackActions;->acceptInfo(Lcom/bilibili/track/model/TrackModel;)V

    goto :goto_2
.end method

.method private toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bilibili/track/dispather/TrackActions;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p6, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_d

    invoke-interface {v4, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d
    const-string v0, "url"

    invoke-interface {v4, v0, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title"

    invoke-interface {v4, v0, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/bilibili/track/Track;->formatData(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/bilibili/track/model/TrackModel;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/bilibili/track/model/TrackModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p9}, Lcom/bilibili/track/model/TrackModel;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p6, v0}, Lcom/bilibili/track/dispather/TrackActions;->acceptInfo(Lcom/bilibili/track/model/TrackModel;)V

    goto :goto_2
.end method


# virtual methods
.method public autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method public getBsGameDeviceInfo(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenRiskLocal:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/bilibili/track/Track;->user_id:Ljava/lang/String;

    sget-object v1, Lcom/bilibili/track/Track;->appId:Ljava/lang/String;

    sget-object v2, Lcom/bilibili/track/Track;->buvid:Ljava/lang/String;

    sget-object v3, Lcom/bilibili/track/Track;->udid:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->getBsGameDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getOaid(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/bilibili/deviceutils/utils/OaidUtil;

    invoke-direct {v0}, Lcom/bilibili/deviceutils/utils/OaidUtil;-><init>()V

    iput-object v0, p0, Lcom/bilibili/track/Track;->oaidUtil:Lcom/bilibili/deviceutils/utils/OaidUtil;

    iget-object v0, p0, Lcom/bilibili/track/Track;->oaidUtil:Lcom/bilibili/deviceutils/utils/OaidUtil;

    invoke-virtual {v0, p1}, Lcom/bilibili/deviceutils/utils/OaidUtil;->getAllID(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bilibili/track/Track;->oaidUtil:Lcom/bilibili/deviceutils/utils/OaidUtil;

    new-instance v1, Lcom/bilibili/track/Track$3;

    invoke-direct {v1, p0}, Lcom/bilibili/track/Track$3;-><init>(Lcom/bilibili/track/Track;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/deviceutils/utils/OaidUtil;->getOaid(Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public isAutoTrackEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public reportClickEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x1

    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->CLICK:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportClickH5Event(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->H5CLICK:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->CUSTOM:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportExposureEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJ)V
    .registers 24
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;JJ)V

    goto :goto_4
.end method

.method public reportExposureH5Event(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJ)V
    .registers 28
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->H5EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportFlutterClickEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_CLICK:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportFlutterCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_CUSTOM:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportFlutterExposureEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JJ)V
    .registers 24
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;JJ)V

    goto :goto_4
.end method

.method public reportFlutterPvEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_PV:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportFlutterSystemEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_SYSTEM:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportPageViewEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->PV:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportPageViewH5Event(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 19
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v6, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->H5PV:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/bilibili/track/Track;->toTrack(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/bilibili/track/dispather/TrackActions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reportSystemEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
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

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/bilibili/track/Track;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->SYSTEM:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v5

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/bilibili/track/Track;->getDeviceInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public trackLogin(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/bilibili/track/Track;->isOpenLocal:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sput-object p1, Lcom/bilibili/track/Track;->user_id:Ljava/lang/String;

    const-string v0, "LOGINID"

    invoke-static {v0}, Lcom/bilibili/track/storage/presistent/config/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/bilibili/track/storage/presistent/config/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/storage/presistent/LoginId;

    iput-object v0, p0, Lcom/bilibili/track/Track;->loginId:Lcom/bilibili/track/storage/presistent/LoginId;

    iget-object v0, p0, Lcom/bilibili/track/Track;->loginId:Lcom/bilibili/track/storage/presistent/LoginId;

    invoke-virtual {v0, p1}, Lcom/bilibili/track/storage/presistent/LoginId;->commit(Ljava/lang/Object;)V

    goto :goto_4
.end method
