.class public Lcom/mob/tools/MobHandlerThread;
.super Ljava/lang/Thread;
.source "MobHandlerThread.java"


# instance fields
.field private looper:Landroid/os/Looper;

.field private priority:I

.field private tid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->priority:I

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "priority"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    .line 22
    iput p1, p0, Lcom/mob/tools/MobHandlerThread;->priority:I

    .line 23
    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 54
    const/4 v0, 0x0

    .line 66
    :goto_7
    return-object v0

    .line 58
    :cond_8
    monitor-enter p0

    .line 59
    :goto_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mob/tools/MobHandlerThread;->looper:Landroid/os/Looper;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1d

    if-nez v0, :cond_19

    .line 61
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    goto :goto_9

    .line 62
    :catch_17
    move-exception v0

    goto :goto_9

    .line 65
    :cond_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1d

    .line 66
    iget-object v0, p0, Lcom/mob/tools/MobHandlerThread;->looper:Landroid/os/Looper;

    goto :goto_7

    .line 65
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getThreadId()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    return v0
.end method

.method protected onLooperPrepared()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public quit()Z
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 77
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_b

    .line 78
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 79
    const/4 v1, 0x1

    .line 81
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public run()V
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    .line 35
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 36
    monitor-enter p0

    .line 37
    :try_start_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/MobHandlerThread;->looper:Landroid/os/Looper;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_23

    .line 40
    iget v0, p0, Lcom/mob/tools/MobHandlerThread;->priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 41
    invoke-virtual {p0}, Lcom/mob/tools/MobHandlerThread;->onLooperPrepared()V

    .line 42
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/mob/tools/MobHandlerThread;->tid:I

    .line 44
    return-void

    .line 39
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method
