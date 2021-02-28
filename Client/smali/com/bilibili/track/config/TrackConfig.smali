.class public Lcom/bilibili/track/config/TrackConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private batchCount:Ljava/lang/String;

.field private cacheThreshold:Ljava/lang/String;

.field private interval:Ljava/lang/String;

.field private localFactor:Ljava/lang/String;

.field private localMaxCount:Ljava/lang/String;

.field private logEnable:Ljava/lang/String;

.field private logLevel:Ljava/lang/String;

.field private logStale:Ljava/lang/String;

.field private maxinterval:Ljava/lang/String;

.field private wifiOnly:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "false"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->logEnable:Ljava/lang/String;

    const-string v0, "false"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->wifiOnly:Ljava/lang/String;

    const-string v0, "30"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->interval:Ljava/lang/String;

    const-string v0, "300"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->maxinterval:Ljava/lang/String;

    const-string v0, "10"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->batchCount:Ljava/lang/String;

    const-string v0, "10000"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->logStale:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->logLevel:Ljava/lang/String;

    const-string v0, "40"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->cacheThreshold:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->localFactor:Ljava/lang/String;

    const-string v0, "300000"

    iput-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->localMaxCount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBatch_count()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->batchCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCache_threshold()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->cacheThreshold:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal_factor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->localFactor:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal_max_count()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->localMaxCount:Ljava/lang/String;

    return-object v0
.end method

.method public getLog_enable()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->logEnable:Ljava/lang/String;

    return-object v0
.end method

.method public getLog_level()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->logLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getLog_stale()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->logStale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxinterval()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->maxinterval:Ljava/lang/String;

    return-object v0
.end method

.method public getWifi_only()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/config/TrackConfig;->wifiOnly:Ljava/lang/String;

    return-object v0
.end method

.method public setBatch_count(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->batchCount:Ljava/lang/String;

    return-void
.end method

.method public setCache_threshold(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->cacheThreshold:Ljava/lang/String;

    return-void
.end method

.method public setInterval(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->interval:Ljava/lang/String;

    return-void
.end method

.method public setLocal_factor(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->localFactor:Ljava/lang/String;

    return-void
.end method

.method public setLocal_max_count(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->localMaxCount:Ljava/lang/String;

    return-void
.end method

.method public setLog_enable(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->logEnable:Ljava/lang/String;

    return-void
.end method

.method public setLog_level(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->logLevel:Ljava/lang/String;

    return-void
.end method

.method public setLog_stale(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->logStale:Ljava/lang/String;

    return-void
.end method

.method public setMaxinterval(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->maxinterval:Ljava/lang/String;

    return-void
.end method

.method public setWifi_only(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/config/TrackConfig;->wifiOnly:Ljava/lang/String;

    return-void
.end method
