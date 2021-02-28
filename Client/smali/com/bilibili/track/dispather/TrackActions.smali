.class public Lcom/bilibili/track/dispather/TrackActions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/track/dispather/TrackControlCenter;


# static fields
.field public static final STATE_FAILED:I = 0x1345

.field public static final STATE_SUCCESS:I = 0x2487

.field private static trackActions:Lcom/bilibili/track/dispather/TrackActions;


# instance fields
.field private baseBean:Lcom/bilibili/track/storage/database/BaseBean;

.field private callback:Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

.field private context:Landroid/content/Context;

.field private currentInterval:J

.field private initInterval:J

.field private interval:J

.field private mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private maxInterval:J

.field private timer:Ljava/lang/Runnable;

.field private trackConfig:Lcom/bilibili/track/config/TrackConfig;

.field private trackThread:Lcom/bilibili/track/dispather/TrackThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v0, "300"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->maxInterval:J

    const-string v0, "30"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->initInterval:J

    const-string v0, "30"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->currentInterval:J

    new-instance v0, Lcom/bilibili/track/dispather/TrackActions$1;

    invoke-direct {v0, p0}, Lcom/bilibili/track/dispather/TrackActions$1;-><init>(Lcom/bilibili/track/dispather/TrackActions;)V

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->callback:Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

    invoke-static {}, Lcom/bilibili/track/Track;->getRemoteSDKConfig()Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/config/TrackConfigHelper;->getLocalConfig(Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackThread:Lcom/bilibili/track/dispather/TrackThread;

    if-nez v0, :cond_4a

    new-instance v0, Lcom/bilibili/track/dispather/TrackThread;

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1, p1}, Lcom/bilibili/track/dispather/TrackThread;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackThread:Lcom/bilibili/track/dispather/TrackThread;

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackThread:Lcom/bilibili/track/dispather/TrackThread;

    invoke-virtual {v0}, Lcom/bilibili/track/dispather/TrackThread;->start()V

    :cond_4a
    :try_start_4a
    iput-object p1, p0, Lcom/bilibili/track/dispather/TrackActions;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0}, Lcom/bilibili/track/config/TrackConfig;->getInterval()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0}, Lcom/bilibili/track/config/TrackConfig;->getMaxinterval()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->maxInterval:J

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_d6

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->initInterval:J

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->initInterval:J

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->currentInterval:J

    invoke-static {}, Lcom/bilibili/track/dispather/TrackTimer;->getInstance()Lcom/bilibili/track/dispather/TrackTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->callback:Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

    invoke-virtual {v0, v1}, Lcom/bilibili/track/dispather/TrackTimer;->setCallback(Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;)Lcom/bilibili/track/dispather/TrackTimer;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/track/dispather/TrackTimer;->setInterval(J)Lcom/bilibili/track/dispather/TrackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/track/dispather/TrackTimer;->start()V

    :goto_88
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0}, Lcom/bilibili/track/config/TrackConfig;->getLocal_max_count()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0}, Lcom/bilibili/track/config/TrackConfig;->getLocal_max_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_a7

    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/track/storage/database/DbDataHelper;->deleteTrackInfo(Landroid/content/Context;Lcom/bilibili/track/config/TrackConfig;)V

    :cond_a7
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0}, Lcom/bilibili/track/config/TrackConfig;->getLog_stale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0}, Lcom/bilibili/track/config/TrackConfig;->getLog_stale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_cc

    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, p1, v0, v1}, Lcom/bilibili/track/storage/database/DbDataHelper;->updateOverData(Landroid/content/Context;J)V

    :cond_cc
    invoke-static {p1}, Lcom/bilibili/track/report/ReportTrackInfo;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/report/ReportTrackInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->trackConfig:Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0, v1}, Lcom/bilibili/track/report/ReportTrackInfo;->reportInitInfo(Lcom/bilibili/track/config/TrackConfig;)V

    :goto_d5
    return-void

    :cond_d6
    invoke-static {}, Lcom/bilibili/track/dispather/TrackTimer;->getInstance()Lcom/bilibili/track/dispather/TrackTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->callback:Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

    invoke-virtual {v0, v1}, Lcom/bilibili/track/dispather/TrackTimer;->setCallback(Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;)Lcom/bilibili/track/dispather/TrackTimer;

    move-result-object v0

    const-string v1, "30"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/track/dispather/TrackTimer;->setInterval(J)Lcom/bilibili/track/dispather/TrackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/track/dispather/TrackTimer;->start()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_f0} :catch_f1

    goto :goto_88

    :catch_f1
    move-exception v0

    goto :goto_d5
.end method

.method private declared-synchronized formatBaseBean(Lcom/bilibili/track/model/TrackModel;)Lcom/bilibili/track/storage/database/BaseBean;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    if-nez v0, :cond_c

    new-instance v0, Lcom/bilibili/track/storage/database/BaseBean;

    invoke-direct {v0}, Lcom/bilibili/track/storage/database/BaseBean;-><init>()V

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    :cond_c
    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeSend"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/bilibili/track/storage/database/BaseBean;

    invoke-direct {v0}, Lcom/bilibili/track/storage/database/BaseBean;-><init>()V

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setIsWrite(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setIs_focus(Z)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_108

    :goto_26
    monitor-exit p0

    return-object v0

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getLogLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setLogLevel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getPage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setPageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getEvent_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setEventId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getTrackType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setLogType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/track/storage/database/BaseBean;->setLogTime(J)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getTrackType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setLogType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    const-string v1, "wirte"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setIsWrite(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getModel_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setModel_name(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-static {}, Lcom/bilibili/track/utils/TrackidUtils;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setTrace_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->isForce()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/storage/database/BaseBean;->setIs_focus(Z)V

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    sget-object v0, Lcom/bilibili/track/Track;->user_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f5

    const-string v0, ""

    :goto_8c
    invoke-virtual {v1, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setUser_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getExtension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f8

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getExtension()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pressValue"

    sget-object v2, Lcom/bilibili/track/dispather/TrackWindowCallBack;->pressValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a0
    .catchall {:try_start_28 .. :try_end_a0} :catchall_108

    :goto_a0
    :try_start_a0
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getInstance(Landroid/content/Context;)Lcom/bilibili/deviceutils/helper/OritensionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getOrientation()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getExtension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_10b

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getExtension()Ljava/util/Map;

    move-result-object v0

    const-string v1, "orientation"

    iget-object v2, p0, Lcom/bilibili/track/dispather/TrackActions;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getInstance(Landroid/content/Context;)Lcom/bilibili/deviceutils/helper/OritensionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c2} :catch_123
    .catchall {:try_start_a0 .. :try_end_c2} :catchall_108

    :goto_c2
    :try_start_c2
    new-instance v0, Lcopy/google/json/JSON;

    invoke-direct {v0}, Lcopy/google/json/JSON;-><init>()V

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getExtension()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/track/storage/database/BaseBean;->setTrackDetail(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getTrackType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->SYSTEM:Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v2}, Lcom/bilibili/track/constants/TrackType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setDeviceInfo(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_f1} :catch_133
    .catchall {:try_start_c2 .. :try_end_f1} :catchall_108

    :goto_f1
    :try_start_f1
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    goto/16 :goto_26

    :cond_f5
    sget-object v0, Lcom/bilibili/track/Track;->user_id:Ljava/lang/String;

    goto :goto_8c

    :cond_f8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pressValue"

    sget-object v2, Lcom/bilibili/track/dispather/TrackWindowCallBack;->pressValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/bilibili/track/model/TrackModel;->setExtension(Ljava/util/Map;)V
    :try_end_107
    .catchall {:try_start_f1 .. :try_end_107} :catchall_108

    goto :goto_a0

    :catchall_108
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10b
    :try_start_10b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orientation"

    iget-object v2, p0, Lcom/bilibili/track/dispather/TrackActions;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getInstance(Landroid/content/Context;)Lcom/bilibili/deviceutils/helper/OritensionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/deviceutils/helper/OritensionHelper;->getOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/bilibili/track/model/TrackModel;->setExtension(Ljava/util/Map;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_122} :catch_123
    .catchall {:try_start_10b .. :try_end_122} :catchall_108

    goto :goto_c2

    :catch_123
    move-exception v0

    goto :goto_c2

    :cond_125
    :try_start_125
    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackActions;->baseBean:Lcom/bilibili/track/storage/database/BaseBean;

    invoke-virtual {p1}, Lcom/bilibili/track/model/TrackModel;->getCommonInfo()Lcom/bilibili/track/model/CommonInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setDeviceInfo(Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_132} :catch_133
    .catchall {:try_start_125 .. :try_end_132} :catchall_108

    goto :goto_f1

    :catch_133
    move-exception v0

    goto :goto_f1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bilibili/track/dispather/TrackActions;
    .registers 3

    sget-object v0, Lcom/bilibili/track/dispather/TrackActions;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    if-nez v0, :cond_13

    const-class v1, Lcom/bilibili/track/dispather/TrackActions;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bilibili/track/dispather/TrackActions;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bilibili/track/dispather/TrackActions;

    invoke-direct {v0, p0}, Lcom/bilibili/track/dispather/TrackActions;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/track/dispather/TrackActions;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bilibili/track/dispather/TrackActions;->trackActions:Lcom/bilibili/track/dispather/TrackActions;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private reportFailure()V
    .registers 7

    const-wide/16 v4, 0x0

    :try_start_2
    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->currentInterval:J

    iget-wide v2, p0, Lcom/bilibili/track/dispather/TrackActions;->maxInterval:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->maxInterval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iget-wide v4, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->currentInterval:J

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    iget-wide v2, p0, Lcom/bilibili/track/dispather/TrackActions;->maxInterval:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_40

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    iget-wide v2, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bilibili/track/dispather/TrackActions;->resetTimer(JJ)V

    goto :goto_a

    :catch_3e
    move-exception v0

    goto :goto_a

    :cond_40
    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->maxInterval:J

    iget-wide v2, p0, Lcom/bilibili/track/dispather/TrackActions;->maxInterval:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bilibili/track/dispather/TrackActions;->resetTimer(JJ)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_3e

    goto :goto_a
.end method

.method private reportSuccess()V
    .registers 5

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->currentInterval:J

    iget-wide v2, p0, Lcom/bilibili/track/dispather/TrackActions;->initInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->initInterval:J

    iget-wide v2, p0, Lcom/bilibili/track/dispather/TrackActions;->initInterval:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bilibili/track/dispather/TrackActions;->resetTimer(JJ)V

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->initInterval:J

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->currentInterval:J

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->initInterval:J

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackActions;->interval:J

    :cond_17
    return-void
.end method

.method private resetTimer(JJ)V
    .registers 10

    invoke-static {}, Lcom/bilibili/track/dispather/TrackTimer;->getInstance()Lcom/bilibili/track/dispather/TrackTimer;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/track/dispather/TrackTimer;->setInterval(J)Lcom/bilibili/track/dispather/TrackTimer;

    return-void
.end method


# virtual methods
.method public declared-synchronized acceptInfo(Lcom/bilibili/track/model/TrackModel;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_5

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-static {}, Lcom/bilibili/track/Track;->getRemoteSDKConfig()Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/config/TrackConfigHelper;->getLocalConfig(Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/bilibili/track/dispather/TrackActions;->formatBaseBean(Lcom/bilibili/track/model/TrackModel;)Lcom/bilibili/track/storage/database/BaseBean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/track/config/TrackConfig;->getCache_threshold()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/bilibili/track/config/TrackConfig;->getCache_threshold()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/bilibili/track/dispather/TrackActions;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackThread:Lcom/bilibili/track/dispather/TrackThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackActions;->trackThread:Lcom/bilibili/track/dispather/TrackThread;

    invoke-virtual {v0}, Lcom/bilibili/track/dispather/TrackThread;->notifyRun()V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    goto :goto_3

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTrackInfo(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/bilibili/track/Track;->getRemoteSDKConfig()Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/config/TrackConfigHelper;->getLocalConfig(Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    invoke-static {p1}, Lcom/bilibili/track/report/ReportTrackInfo;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/report/ReportTrackInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/track/report/ReportTrackInfo;->reportTimerInfo(Lcom/bilibili/track/config/TrackConfig;)V

    return-void
.end method

.method public declared-synchronized resetReportState(I)V
    .registers 3

    monitor-enter p0

    const/16 v0, 0x2487

    if-ne p1, v0, :cond_a

    :try_start_5
    invoke-direct {p0}, Lcom/bilibili/track/dispather/TrackActions;->reportSuccess()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    const/16 v0, 0x1345

    if-ne p1, v0, :cond_8

    :try_start_e
    invoke-direct {p0}, Lcom/bilibili/track/dispather/TrackActions;->reportFailure()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_8

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeTrackInfo(Lcom/bilibili/track/storage/database/BaseBean;Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/bilibili/track/storage/database/DbDataHelper;->insert(Landroid/content/Context;Lcom/bilibili/track/storage/database/BaseBean;)V

    return-void
.end method
