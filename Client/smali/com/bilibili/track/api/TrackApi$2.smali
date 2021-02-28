.class final Lcom/bilibili/track/api/TrackApi$2;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/api/TrackApi;->reportInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/track/api/RequestCallbackImp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/bilibili/track/api/RequestCallbackImp;


# direct methods
.method constructor <init>(Lcom/bilibili/track/api/RequestCallbackImp;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v0}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v1}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "TrackingData"

    const-string v1, "ReportFailure==============================================="

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/DeviceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v0}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "200"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "TrackingData"

    const-string v2, "ReportSuccess==============================================="

    invoke-static {v1, v2}, Lcom/bilibili/deviceutils/DeviceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v1}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_64
    .catchall {:try_start_1 .. :try_end_2a} :catchall_89

    :goto_2a
    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v0}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_33
    return-void

    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v0}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v1}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_63} :catch_64
    .catchall {:try_start_34 .. :try_end_63} :catchall_89

    goto :goto_2a

    :catch_64
    move-exception v0

    :try_start_65
    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v0}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "\u6570\u636e\u7c7b\u578b\u9519\u8bef"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v1}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_89

    iget-object v0, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v0}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_33

    :catchall_89
    move-exception v0

    iget-object v1, p0, Lcom/bilibili/track/api/TrackApi$2;->val$callback:Lcom/bilibili/track/api/RequestCallbackImp;

    invoke-virtual {v1}, Lcom/bilibili/track/api/RequestCallbackImp;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v0
.end method
