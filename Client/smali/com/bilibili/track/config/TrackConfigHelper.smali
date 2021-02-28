.class public Lcom/bilibili/track/config/TrackConfigHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static defaultConfig()Lcom/bilibili/track/config/TrackConfig;
    .registers 2

    new-instance v0, Lcom/bilibili/track/config/TrackConfig;

    invoke-direct {v0}, Lcom/bilibili/track/config/TrackConfig;-><init>()V

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setBatch_count(Ljava/lang/String;)V

    const-string v1, "40"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setCache_threshold(Ljava/lang/String;)V

    const-string v1, "30"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setInterval(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setLocal_factor(Ljava/lang/String;)V

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setLog_enable(Ljava/lang/String;)V

    const-string v1, "10000"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setLog_stale(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setLog_level(Ljava/lang/String;)V

    const-string v1, "300"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setMaxinterval(Ljava/lang/String;)V

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setWifi_only(Ljava/lang/String;)V

    const-string v1, "300000"

    invoke-virtual {v0, v1}, Lcom/bilibili/track/config/TrackConfig;->setLocal_max_count(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLocalConfig(Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)Lcom/bilibili/track/config/TrackConfig;
    .registers 2

    invoke-static {}, Lcom/bilibili/track/Track;->getTrackConfig()Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/track/config/TrackConfigHelper;->toJsonConfig(Ljava/lang/String;)Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-static {}, Lcom/bilibili/track/Track;->getTrackConfig()Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    goto :goto_10
.end method

.method public static getRemoteTrackConfig(Lcom/bilibili/track/config/TrackConfig;)Lcom/bilibili/track/config/TrackConfig;
    .registers 1

    if-nez p0, :cond_6

    invoke-static {}, Lcom/bilibili/track/config/TrackConfigHelper;->defaultConfig()Lcom/bilibili/track/config/TrackConfig;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static toJsonConfig(Ljava/lang/String;)Lcom/bilibili/track/config/TrackConfig;
    .registers 3

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Lcopy/google/json/JSON;

    invoke-direct {v0}, Lcopy/google/json/JSON;-><init>()V

    const-class v1, Lcom/bilibili/track/config/TrackConfig;

    invoke-virtual {v0, p0, v1}, Lcopy/google/json/JSON;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/config/TrackConfig;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    invoke-static {}, Lcom/bilibili/track/config/TrackConfigHelper;->defaultConfig()Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    goto :goto_13

    :cond_1a
    invoke-static {}, Lcom/bilibili/track/config/TrackConfigHelper;->defaultConfig()Lcom/bilibili/track/config/TrackConfig;

    move-result-object v0

    goto :goto_13
.end method

.method public static updateLocalConfig(Lcom/bilibili/track/config/TrackConfig;Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz p0, :cond_2

    new-instance v0, Lcopy/google/json/JSON;

    invoke-direct {v0}, Lcopy/google/json/JSON;-><init>()V

    invoke-virtual {v0, p0}, Lcopy/google/json/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bilibili/track/storage/presistent/RemoteSDKConfig;->commit(Ljava/lang/Object;)V

    goto :goto_2
.end method
