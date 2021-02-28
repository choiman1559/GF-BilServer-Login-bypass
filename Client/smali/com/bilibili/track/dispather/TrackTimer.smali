.class public Lcom/bilibili/track/dispather/TrackTimer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;
    }
.end annotation


# static fields
.field private static instance:Lcom/bilibili/track/dispather/TrackTimer;


# instance fields
.field private callback:Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

.field private interval:J

.field private mHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->interval:J

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/track/dispather/TrackTimer;)Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->callback:Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/track/dispather/TrackTimer;)J
    .registers 3

    iget-wide v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->interval:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/bilibili/track/dispather/TrackTimer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/bilibili/track/dispather/TrackTimer;
    .registers 2

    sget-object v0, Lcom/bilibili/track/dispather/TrackTimer;->instance:Lcom/bilibili/track/dispather/TrackTimer;

    if-nez v0, :cond_13

    const-class v1, Lcom/bilibili/track/dispather/TrackTimer;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bilibili/track/dispather/TrackTimer;->instance:Lcom/bilibili/track/dispather/TrackTimer;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bilibili/track/dispather/TrackTimer;

    invoke-direct {v0}, Lcom/bilibili/track/dispather/TrackTimer;-><init>()V

    sput-object v0, Lcom/bilibili/track/dispather/TrackTimer;->instance:Lcom/bilibili/track/dispather/TrackTimer;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bilibili/track/dispather/TrackTimer;->instance:Lcom/bilibili/track/dispather/TrackTimer;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public quit()V
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_9
    return-void
.end method

.method public setCallback(Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;)Lcom/bilibili/track/dispather/TrackTimer;
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/dispather/TrackTimer;->callback:Lcom/bilibili/track/dispather/TrackTimer$TrackLooperCallback;

    return-object p0
.end method

.method public setInterval(J)Lcom/bilibili/track/dispather/TrackTimer;
    .registers 4

    iput-wide p1, p0, Lcom/bilibili/track/dispather/TrackTimer;->interval:J

    return-object p0
.end method

.method public start()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TrackLooper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/bilibili/track/dispather/TrackTimer$1;

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackTimer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bilibili/track/dispather/TrackTimer$1;-><init>(Lcom/bilibili/track/dispather/TrackTimer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_21
.end method
