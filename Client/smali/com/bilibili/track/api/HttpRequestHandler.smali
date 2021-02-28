.class public Lcom/bilibili/track/api/HttpRequestHandler;
.super Landroid/os/Handler;


# static fields
.field protected static final ON_FAILED:I = 0x3

.field protected static final ON_FINISHED:I = 0x4

.field protected static final ON_START:I = 0x1

.field protected static final ON_SUCCESS:I = 0x2


# instance fields
.field private callback:Lcom/bilibili/track/api/RequestCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bilibili/track/api/RequestCallback;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/bilibili/track/api/RequestCallback;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    invoke-interface {v0}, Lcom/bilibili/track/api/RequestCallback;->onStart()V

    goto :goto_8

    :catch_f
    move-exception v0

    goto :goto_8

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    const-string v1, "\u6570\u636e\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/bilibili/track/api/RequestCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_8

    :cond_1d
    iget-object v0, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/bilibili/track/api/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    const-string v1, "\u6570\u636e\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/bilibili/track/api/RequestCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_8

    :cond_31
    iget-object v0, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bilibili/track/api/RequestCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_3d
    iget-object v0, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    invoke-interface {v0}, Lcom/bilibili/track/api/RequestCallback;->onFinished()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_f

    goto :goto_8

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_9
        :pswitch_11
        :pswitch_25
        :pswitch_3d
    .end packed-switch
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/bilibili/track/api/HttpRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bilibili/track/api/HttpRequestHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFinished()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bilibili/track/api/HttpRequestHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStart()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bilibili/track/api/HttpRequestHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lcom/bilibili/track/api/HttpRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bilibili/track/api/HttpRequestHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCallback(Lcom/bilibili/track/api/RequestCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/api/HttpRequestHandler;->callback:Lcom/bilibili/track/api/RequestCallback;

    return-void
.end method
