.class public Lcom/bilibili/track/model/TrackModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private commonInfo:Lcom/bilibili/track/model/CommonInfo;

.field private event_id:Ljava/lang/String;

.field private extension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fullCommonInfo:Lcom/bilibili/track/model/FullCommonInfo;

.field private isForce:Z

.field private isWrite:Z

.field private logLevel:Ljava/lang/String;

.field private model_name:Ljava/lang/String;

.field private page_name:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/track/model/TrackModel;->type:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/track/model/TrackModel;->isWrite:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/track/model/TrackModel;->page_name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/track/model/TrackModel;->event_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/track/model/TrackModel;->trackType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/track/model/TrackModel;->logLevel:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/track/model/TrackModel;->model_name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/track/model/TrackModel;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/track/model/TrackModel;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommonInfo()Lcom/bilibili/track/model/CommonInfo;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->commonInfo:Lcom/bilibili/track/model/CommonInfo;

    return-object v0
.end method

.method public getEvent_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->event_id:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->extension:Ljava/util/Map;

    return-object v0
.end method

.method public getFullCommonInfo()Lcom/bilibili/track/model/FullCommonInfo;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->fullCommonInfo:Lcom/bilibili/track/model/FullCommonInfo;

    return-object v0
.end method

.method public getLogLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->logLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getModel_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->model_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPage_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->page_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->trackType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/TrackModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isForce()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/track/model/TrackModel;->isForce:Z

    return v0
.end method

.method public isWrite()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/track/model/TrackModel;->isWrite:Z

    return v0
.end method

.method public setCommonInfo(Lcom/bilibili/track/model/CommonInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->commonInfo:Lcom/bilibili/track/model/CommonInfo;

    return-void
.end method

.method public setEvent_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->event_id:Ljava/lang/String;

    return-void
.end method

.method public setExtension(Ljava/util/Map;)V
    .registers 2
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

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->extension:Ljava/util/Map;

    return-void
.end method

.method public setForce(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bilibili/track/model/TrackModel;->isForce:Z

    return-void
.end method

.method public setFullCommonInfo(Lcom/bilibili/track/model/FullCommonInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->fullCommonInfo:Lcom/bilibili/track/model/FullCommonInfo;

    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->logLevel:Ljava/lang/String;

    return-void
.end method

.method public setModel_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->model_name:Ljava/lang/String;

    return-void
.end method

.method public setPage_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->page_name:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setTrackType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->trackType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/TrackModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setWrite(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bilibili/track/model/TrackModel;->isWrite:Z

    return-void
.end method
