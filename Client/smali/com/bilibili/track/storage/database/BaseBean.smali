.class public Lcom/bilibili/track/storage/database/BaseBean;
.super Ljava/lang/Object;


# instance fields
.field public Uploaded:Z

.field public app_id:Ljava/lang/String;

.field public deviceInfo:Ljava/lang/String;

.field public eventId:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public isWrite:Ljava/lang/String;

.field public is_focus:Z

.field public logLevel:Ljava/lang/String;

.field public logTime:J

.field public logType:Ljava/lang/String;

.field public logid:I

.field public model_name:Ljava/lang/String;

.field public pageName:Ljava/lang/String;

.field public sdk_ver:Ljava/lang/String;

.field public server_id:Ljava/lang/String;

.field public trace_id:Ljava/lang/String;

.field public trackDetail:Ljava/lang/String;

.field public trackSn:I

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->is_focus:Z

    iput-boolean v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->Uploaded:Z

    const-string v0, "wirte"

    iput-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->isWrite:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->deviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsWrite()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->isWrite:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->logLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTime()J
    .registers 3

    iget-wide v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->logTime:J

    return-wide v0
.end method

.method public getLogType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->logType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogid()I
    .registers 2

    iget v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->logid:I

    return v0
.end method

.method public getModel_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->model_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_ver()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->sdk_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->server_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTrace_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->trace_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackDetail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->trackDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackSn()I
    .registers 2

    iget v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->trackSn:I

    return v0
.end method

.method public getUser_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_focus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->is_focus:Z

    return v0
.end method

.method public isUploaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/track/storage/database/BaseBean;->Uploaded:Z

    return v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->deviceInfo:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setIsWrite(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->isWrite:Ljava/lang/String;

    return-void
.end method

.method public setIs_focus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->is_focus:Z

    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->logLevel:Ljava/lang/String;

    return-void
.end method

.method public setLogTime(J)V
    .registers 4

    iput-wide p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->logTime:J

    return-void
.end method

.method public setLogType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->logType:Ljava/lang/String;

    return-void
.end method

.method public setLogid(I)V
    .registers 2

    iput p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->logid:I

    return-void
.end method

.method public setModel_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->model_name:Ljava/lang/String;

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->pageName:Ljava/lang/String;

    return-void
.end method

.method public setSdk_ver(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->sdk_ver:Ljava/lang/String;

    return-void
.end method

.method public setServer_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->server_id:Ljava/lang/String;

    return-void
.end method

.method public setTrace_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->trace_id:Ljava/lang/String;

    return-void
.end method

.method public setTrackDetail(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->trackDetail:Ljava/lang/String;

    return-void
.end method

.method public setTrackSn(I)V
    .registers 2

    iput p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->trackSn:I

    return-void
.end method

.method public setUploaded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->Uploaded:Z

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/storage/database/BaseBean;->user_id:Ljava/lang/String;

    return-void
.end method
