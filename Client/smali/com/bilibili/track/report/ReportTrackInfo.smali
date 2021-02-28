.class public Lcom/bilibili/track/report/ReportTrackInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/track/report/ReportStatus;
.implements Lcom/bilibili/track/report/ReportTrack;


# static fields
.field private static reportTrackInfor:Lcom/bilibili/track/report/ReportTrackInfo;


# instance fields
.field private baseBeans:Lcom/bilibili/track/storage/database/BaseBean;

.field private context:Landroid/content/Context;

.field private handler:Lcom/bilibili/track/api/HttpRequestHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-direct {v0}, Lcom/bilibili/track/api/HttpRequestHandler;-><init>()V

    iput-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->handler:Lcom/bilibili/track/api/HttpRequestHandler;

    iput-object p1, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    return-void
.end method

.method private JsonToMap(Ljava/util/Stack;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_9

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_31

    move-object v1, v2

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/track/report/ReportTrackInfo;->JsonToMap(Ljava/util/Stack;Ljava/util/Map;)V

    goto :goto_13

    :cond_31
    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method static synthetic access$000(Lcom/bilibili/track/report/ReportTrackInfo;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/track/report/ReportTrackInfo;)Lcom/bilibili/track/storage/database/BaseBean;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->baseBeans:Lcom/bilibili/track/storage/database/BaseBean;

    return-object v0
.end method

.method private checkLogelevel(Lcom/bilibili/track/config/TrackConfig;)I
    .registers 4

    if-nez p1, :cond_9

    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLog_level()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLog_level()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bilibili/track/constants/LogLevel;->full:Lcom/bilibili/track/constants/LogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "1000"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_22
    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getBatch_count()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getBatch_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_31
    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method private declared-synchronized fromateReortData(Lcom/bilibili/track/storage/database/BaseBean;)Lcom/bilibili/track/model/ReportModel;
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/bilibili/track/model/ReportModel;

    invoke-direct {v0}, Lcom/bilibili/track/model/ReportModel;-><init>()V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/ReportModel;->setLevel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/ReportModel;->setLog_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getTrace_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/ReportModel;->setTrace_id(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/ReportModel;->setTs(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_109

    :try_start_3c
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getDeviceInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v3, v1}, Lcom/bilibili/track/report/ReportTrackInfo;->JsonToMap(Ljava/util/Stack;Ljava/util/Map;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_50} :catch_10c
    .catchall {:try_start_3c .. :try_end_50} :catchall_109

    :goto_50
    :try_start_50
    const-string v2, "event_id"

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getEventId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "page_name"

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getPageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extensions"

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getTrackDetail()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "buvid"

    sget-object v3, Lcom/bilibili/track/Track;->buvid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_id"

    sget-object v3, Lcom/bilibili/track/Track;->appId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "udid"

    sget-object v3, Lcom/bilibili/track/Track;->udid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "server_id"

    sget-object v3, Lcom/bilibili/track/Track;->serverId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channel_id"

    sget-object v3, Lcom/bilibili/track/Track;->channelId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "merchant_id"

    sget-object v3, Lcom/bilibili/track/Track;->merchatId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdk_type"

    sget-object v3, Lcom/bilibili/track/Track;->sdkType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "model_name"

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getModel_name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sn"

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getTrackSn()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_focus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->isIs_focus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "log_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getLogType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "user_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bilibili/track/Track;->user_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bilibili/track/model/ReportModel;->setKvs(Ljava/util/Map;)V
    :try_end_107
    .catchall {:try_start_50 .. :try_end_107} :catchall_109

    monitor-exit p0

    return-object v0

    :catchall_109
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_10c
    move-exception v2

    goto/16 :goto_50
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bilibili/track/report/ReportTrackInfo;
    .registers 3

    sget-object v0, Lcom/bilibili/track/report/ReportTrackInfo;->reportTrackInfor:Lcom/bilibili/track/report/ReportTrackInfo;

    if-nez v0, :cond_13

    const-class v1, Lcom/bilibili/track/report/ReportTrackInfo;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bilibili/track/report/ReportTrackInfo;->reportTrackInfor:Lcom/bilibili/track/report/ReportTrackInfo;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bilibili/track/report/ReportTrackInfo;

    invoke-direct {v0, p0}, Lcom/bilibili/track/report/ReportTrackInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/track/report/ReportTrackInfo;->reportTrackInfor:Lcom/bilibili/track/report/ReportTrackInfo;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bilibili/track/report/ReportTrackInfo;->reportTrackInfor:Lcom/bilibili/track/report/ReportTrackInfo;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getReportData(Lcom/bilibili/track/config/TrackConfig;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/track/config/TrackConfig;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLog_level()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLog_level()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_64

    :cond_14
    :goto_14
    packed-switch v1, :pswitch_data_6e

    goto :goto_7

    :pswitch_18
    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    sget-object v2, Lcom/bilibili/track/constants/LogLevel;->dispensable:Lcom/bilibili/track/constants/LogLevel;

    invoke-virtual {v2}, Lcom/bilibili/track/constants/LogLevel;->getLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/bilibili/track/storage/database/DbDataHelper;->queryNormalCountBean(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :pswitch_29
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x0

    goto :goto_14

    :pswitch_33
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    goto :goto_14

    :pswitch_3d
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x2

    goto :goto_14

    :pswitch_47
    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/bilibili/track/storage/database/DbDataHelper;->queryCountBean(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :pswitch_52
    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    sget-object v2, Lcom/bilibili/track/constants/LogLevel;->important:Lcom/bilibili/track/constants/LogLevel;

    invoke-virtual {v2}, Lcom/bilibili/track/constants/LogLevel;->getLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/bilibili/track/storage/database/DbDataHelper;->queryCountBean(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_64
    .packed-switch 0x31
        :pswitch_33
        :pswitch_29
        :pswitch_3d
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_47
        :pswitch_52
    .end packed-switch
.end method

.method private prepareRequest(Lcom/bilibili/track/config/TrackConfig;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/track/config/TrackConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getWifi_only()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/track/utils/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    :cond_23
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private declared-synchronized requestInfo(Lcom/bilibili/track/storage/database/BaseBean;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/bilibili/track/report/ReportTrackInfo;->fromateReortData(Lcom/bilibili/track/storage/database/BaseBean;)Lcom/bilibili/track/model/ReportModel;

    move-result-object v0

    if-eqz p1, :cond_9

    iput-object p1, p0, Lcom/bilibili/track/report/ReportTrackInfo;->baseBeans:Lcom/bilibili/track/storage/database/BaseBean;

    :cond_9
    new-instance v1, Lcom/bilibili/track/model/ReportModelList;

    invoke-direct {v1}, Lcom/bilibili/track/model/ReportModelList;-><init>()V

    invoke-virtual {v1}, Lcom/bilibili/track/model/ReportModelList;->getLogs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/bilibili/track/model/ReportModelList;->getLogs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcopy/google/json/JSON;

    invoke-direct {v0}, Lcopy/google/json/JSON;-><init>()V

    invoke-virtual {v0, v1}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/utils/SingUtils;->signAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "L-EVENT-TRACING-SDK"

    const-string v3, "EVENT-LOG-TOPIC"

    new-instance v4, Lcom/bilibili/track/report/ReportTrackInfo$2;

    iget-object v5, p0, Lcom/bilibili/track/report/ReportTrackInfo;->handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-direct {v4, p0, v5}, Lcom/bilibili/track/report/ReportTrackInfo$2;-><init>(Lcom/bilibili/track/report/ReportTrackInfo;Lcom/bilibili/track/api/HttpRequestHandler;)V

    invoke-static {v2, v3, v1, v0, v4}, Lcom/bilibili/track/api/TrackApi;->reportInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/track/api/RequestCallbackImp;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized requestInfo(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4d

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d

    new-instance v2, Lcom/bilibili/track/model/ReportModelList;

    invoke-direct {v2}, Lcom/bilibili/track/model/ReportModelList;-><init>()V

    invoke-virtual {v2}, Lcom/bilibili/track/model/ReportModelList;->getLogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    invoke-virtual {v2}, Lcom/bilibili/track/model/ReportModelList;->getLogs()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/storage/database/BaseBean;

    invoke-direct {p0, v0}, Lcom/bilibili/track/report/ReportTrackInfo;->fromateReortData(Lcom/bilibili/track/storage/database/BaseBean;)Lcom/bilibili/track/model/ReportModel;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_32
    new-instance v0, Lcopy/google/json/JSON;

    invoke-direct {v0}, Lcopy/google/json/JSON;-><init>()V

    invoke-virtual {v0, v2}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/track/utils/SingUtils;->signAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "L-EVENT-TRACING-SDK"

    const-string v3, "EVENT-LOG-TOPIC"

    new-instance v4, Lcom/bilibili/track/report/ReportTrackInfo$1;

    iget-object v5, p0, Lcom/bilibili/track/report/ReportTrackInfo;->handler:Lcom/bilibili/track/api/HttpRequestHandler;

    invoke-direct {v4, p0, v5, p1}, Lcom/bilibili/track/report/ReportTrackInfo$1;-><init>(Lcom/bilibili/track/report/ReportTrackInfo;Lcom/bilibili/track/api/HttpRequestHandler;Ljava/util/List;)V

    invoke-static {v2, v3, v1, v0, v4}, Lcom/bilibili/track/api/TrackApi;->reportInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/track/api/RequestCallbackImp;)V
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4f

    :cond_4d
    monitor-exit p0

    return-void

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public reportFailure()V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/track/dispather/TrackActions;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/dispather/TrackActions;

    move-result-object v0

    const/16 v1, 0x1345

    invoke-virtual {v0, v1}, Lcom/bilibili/track/dispather/TrackActions;->resetReportState(I)V

    :cond_f
    return-void
.end method

.method public reportInitInfo(Lcom/bilibili/track/config/TrackConfig;)V
    .registers 4

    const-string v0, "false"

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLog_enable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0, p1}, Lcom/bilibili/track/report/ReportTrackInfo;->checkLogelevel(Lcom/bilibili/track/config/TrackConfig;)I

    move-result v0

    const-string v1, "1000"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2d

    const-string v0, "1000"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1f
    invoke-direct {p0, p1, v0}, Lcom/bilibili/track/report/ReportTrackInfo;->getReportData(Lcom/bilibili/track/config/TrackConfig;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/track/report/ReportTrackInfo;->prepareRequest(Lcom/bilibili/track/config/TrackConfig;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0, v0}, Lcom/bilibili/track/report/ReportTrackInfo;->requestInfo(Ljava/util/List;)V

    goto :goto_c

    :cond_2d
    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bilibili/track/report/ReportTrackHelper;->calculateSendCount(Landroid/content/Context;Lcom/bilibili/track/config/TrackConfig;)I

    move-result v0

    goto :goto_1f
.end method

.method public reportQuickInfo(Lcom/bilibili/track/storage/database/BaseBean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bilibili/track/report/ReportTrackInfo;->requestInfo(Lcom/bilibili/track/storage/database/BaseBean;)V

    return-void
.end method

.method public reportSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/track/dispather/TrackActions;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/dispather/TrackActions;

    move-result-object v0

    const/16 v1, 0x2487

    invoke-virtual {v0, v1}, Lcom/bilibili/track/dispather/TrackActions;->resetReportState(I)V

    :cond_f
    return-void
.end method

.method public reportTimerInfo(Lcom/bilibili/track/config/TrackConfig;)V
    .registers 4

    const-string v0, "false"

    invoke-virtual {p1}, Lcom/bilibili/track/config/TrackConfig;->getLog_enable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0, p1}, Lcom/bilibili/track/report/ReportTrackInfo;->checkLogelevel(Lcom/bilibili/track/config/TrackConfig;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/track/report/ReportTrackInfo;->getReportData(Lcom/bilibili/track/config/TrackConfig;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-direct {p0, v0}, Lcom/bilibili/track/report/ReportTrackInfo;->requestInfo(Ljava/util/List;)V

    goto :goto_c
.end method
