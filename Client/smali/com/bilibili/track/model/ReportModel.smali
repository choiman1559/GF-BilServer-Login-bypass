.class public Lcom/bilibili/track/model/ReportModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field kvs:Ljava/util/Map;
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

.field level:Ljava/lang/String;

.field log_id:Ljava/lang/String;

.field trace_id:Ljava/lang/String;

.field ts:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKvs()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bilibili/track/model/ReportModel;->kvs:Ljava/util/Map;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/ReportModel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLog_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/ReportModel;->log_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTrace_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/ReportModel;->trace_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/model/ReportModel;->ts:Ljava/lang/String;

    return-object v0
.end method

.method public setKvs(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/bilibili/track/model/ReportModel;->kvs:Ljava/util/Map;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/ReportModel;->level:Ljava/lang/String;

    return-void
.end method

.method public setLog_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/ReportModel;->log_id:Ljava/lang/String;

    return-void
.end method

.method public setTrace_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/ReportModel;->trace_id:Ljava/lang/String;

    return-void
.end method

.method public setTs(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/model/ReportModel;->ts:Ljava/lang/String;

    return-void
.end method
