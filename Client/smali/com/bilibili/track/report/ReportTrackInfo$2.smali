.class Lcom/bilibili/track/report/ReportTrackInfo$2;
.super Lcom/bilibili/track/api/RequestCallbackImp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/report/ReportTrackInfo;->requestInfo(Lcom/bilibili/track/storage/database/BaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/report/ReportTrackInfo;


# direct methods
.method constructor <init>(Lcom/bilibili/track/report/ReportTrackInfo;Lcom/bilibili/track/api/HttpRequestHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/bilibili/track/report/ReportTrackInfo$2;->this$0:Lcom/bilibili/track/report/ReportTrackInfo;

    invoke-direct {p0, p2}, Lcom/bilibili/track/api/RequestCallbackImp;-><init>(Lcom/bilibili/track/api/HttpRequestHandler;)V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5

    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/track/report/ReportTrackInfo$2;->this$0:Lcom/bilibili/track/report/ReportTrackInfo;

    invoke-static {v1}, Lcom/bilibili/track/report/ReportTrackInfo;->access$000(Lcom/bilibili/track/report/ReportTrackInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/track/report/ReportTrackInfo$2;->this$0:Lcom/bilibili/track/report/ReportTrackInfo;

    invoke-static {v2}, Lcom/bilibili/track/report/ReportTrackInfo;->access$100(Lcom/bilibili/track/report/ReportTrackInfo;)Lcom/bilibili/track/storage/database/BaseBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/track/storage/database/DbDataHelper;->updateUploadState(Landroid/content/Context;Lcom/bilibili/track/storage/database/BaseBean;)V

    return-void
.end method
