.class public Lcom/bilibili/track/model/ReportModelList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/model/ReportModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/track/model/ReportModelList;->logs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/model/ReportModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bilibili/track/model/ReportModelList;->logs:Ljava/util/List;

    return-object v0
.end method

.method public setLogs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/model/ReportModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bilibili/track/model/ReportModelList;->logs:Ljava/util/List;

    return-void
.end method
