.class Lcom/bilibili/track/report/ReportTrackInfo$1;
.super Lcom/bilibili/track/api/RequestCallbackImp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/report/ReportTrackInfo;->requestInfo(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/report/ReportTrackInfo;

.field final synthetic val$baseBeanList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bilibili/track/report/ReportTrackInfo;Lcom/bilibili/track/api/HttpRequestHandler;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/bilibili/track/report/ReportTrackInfo$1;->this$0:Lcom/bilibili/track/report/ReportTrackInfo;

    iput-object p3, p0, Lcom/bilibili/track/report/ReportTrackInfo$1;->val$baseBeanList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/bilibili/track/api/RequestCallbackImp;-><init>(Lcom/bilibili/track/api/HttpRequestHandler;)V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo$1;->this$0:Lcom/bilibili/track/report/ReportTrackInfo;

    invoke-virtual {v0}, Lcom/bilibili/track/report/ReportTrackInfo;->reportFailure()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/bilibili/track/report/ReportTrackInfo$1;->this$0:Lcom/bilibili/track/report/ReportTrackInfo;

    invoke-virtual {v0}, Lcom/bilibili/track/report/ReportTrackInfo;->reportSuccess()V

    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/report/ReportTrackInfo$1;->this$0:Lcom/bilibili/track/report/ReportTrackInfo;

    invoke-static {v1}, Lcom/bilibili/track/report/ReportTrackInfo;->access$000(Lcom/bilibili/track/report/ReportTrackInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/track/report/ReportTrackInfo$1;->val$baseBeanList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/track/storage/database/DbDataHelper;->updateUploadState(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
