.class public Lcom/bilibili/track/utils/TrackLooper;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/bilibili/track/utils/TrackLooper;


# instance fields
.field private isQuit:Z

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/track/utils/TrackLooper;->isQuit:Z

    return-void
.end method

.method public static getInstance()Lcom/bilibili/track/utils/TrackLooper;
    .registers 1

    sget-object v0, Lcom/bilibili/track/utils/TrackLooper;->instance:Lcom/bilibili/track/utils/TrackLooper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bilibili/track/utils/TrackLooper;

    invoke-direct {v0}, Lcom/bilibili/track/utils/TrackLooper;-><init>()V

    sput-object v0, Lcom/bilibili/track/utils/TrackLooper;->instance:Lcom/bilibili/track/utils/TrackLooper;

    :cond_b
    sget-object v0, Lcom/bilibili/track/utils/TrackLooper;->instance:Lcom/bilibili/track/utils/TrackLooper;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .registers 2

    iget-boolean v0, p0, Lcom/bilibili/track/utils/TrackLooper;->isQuit:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/track/utils/TrackLooper;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/track/utils/TrackLooper;->isQuit:Z

    iget-object v0, p0, Lcom/bilibili/track/utils/TrackLooper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_10
    return-void
.end method

.method public start()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/bilibili/track/utils/TrackLooper;->isQuit:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TrackLooper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/track/utils/TrackLooper;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/bilibili/track/utils/TrackLooper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/bilibili/track/utils/TrackLooper$1;

    iget-object v1, p0, Lcom/bilibili/track/utils/TrackLooper;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bilibili/track/utils/TrackLooper$1;-><init>(Lcom/bilibili/track/utils/TrackLooper;Landroid/os/Looper;)V

    const/4 v1, 0x0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    goto :goto_23
.end method
