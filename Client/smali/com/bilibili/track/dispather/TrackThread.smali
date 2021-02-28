.class public Lcom/bilibili/track/dispather/TrackThread;
.super Ljava/lang/Thread;


# instance fields
.field private context:Landroid/content/Context;

.field private mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsRun:Z

.field private mIsWorking:Z

.field private final sync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackThread;->sync:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/track/dispather/TrackThread;->mIsRun:Z

    iput-object p1, p0, Lcom/bilibili/track/dispather/TrackThread;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lcom/bilibili/track/dispather/TrackThread;->context:Landroid/content/Context;

    return-void
.end method

.method private doAction(Lcom/bilibili/track/storage/database/BaseBean;Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setGame_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->getIsWrite()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wirte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Lcom/bilibili/track/storage/database/BaseBean;->isIs_focus()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/bilibili/track/Track;->forceSn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setTrackSn(I)V

    invoke-static {p2}, Lcom/bilibili/track/report/ReportTrackInfo;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/report/ReportTrackInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/track/report/ReportTrackInfo;->reportQuickInfo(Lcom/bilibili/track/storage/database/BaseBean;)V

    :goto_30
    invoke-static {p2}, Lcom/bilibili/track/dispather/TrackActions;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/dispather/TrackActions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/track/dispather/TrackActions;->writeTrackInfo(Lcom/bilibili/track/storage/database/BaseBean;Landroid/content/Context;)V

    goto :goto_2

    :cond_38
    sget-object v0, Lcom/bilibili/track/Track;->unForceSn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bilibili/track/storage/database/BaseBean;->setTrackSn(I)V

    goto :goto_30

    :cond_42
    invoke-static {p2}, Lcom/bilibili/track/dispather/TrackActions;->getInstance(Landroid/content/Context;)Lcom/bilibili/track/dispather/TrackActions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bilibili/track/dispather/TrackActions;->readTrackInfo(Landroid/content/Context;)V

    goto :goto_2
.end method


# virtual methods
.method public notifyRun()V
    .registers 3

    iget-boolean v0, p0, Lcom/bilibili/track/dispather/TrackThread;->mIsWorking:Z

    if-nez v0, :cond_d

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackThread;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackThread;->sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :cond_d
    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public run()V
    .registers 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_3
    iget-boolean v0, p0, Lcom/bilibili/track/dispather/TrackThread;->mIsRun:Z

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/bilibili/track/dispather/TrackThread;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/bilibili/track/dispather/TrackThread;->mIsWorking:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_24

    :try_start_d
    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackThread;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/storage/database/BaseBean;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/track/dispather/TrackThread;->mIsWorking:Z

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackThread;->sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/track/dispather/TrackThread;->mIsWorking:Z
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_22} :catch_2d
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    :goto_22
    :try_start_22
    monitor-exit v1

    goto :goto_3

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/bilibili/track/dispather/TrackThread;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/bilibili/track/dispather/TrackThread;->doAction(Lcom/bilibili/track/storage/database/BaseBean;Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    goto :goto_22

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/track/dispather/TrackThread;->mIsWorking:Z
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_24

    goto :goto_22

    :cond_35
    return-void
.end method
