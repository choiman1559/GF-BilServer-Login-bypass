.class public Lcom/mob/tools/utils/FileLocker;
.super Ljava/lang/Object;
.source "FileLocker.java"


# instance fields
.field private fos:Ljava/io/FileOutputStream;

.field private lock:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized lock(Ljava/lang/Runnable;Z)V
    .registers 4
    .param p1, "onLock"    # Ljava/lang/Runnable;
    .param p2, "block"    # Z

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/mob/tools/utils/FileLocker;->lock(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 84
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 86
    :cond_c
    monitor-exit p0

    return-void

    .line 83
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock(Z)Z
    .registers 5
    .param p1, "block"    # Z

    .prologue
    const/4 v1, 0x0

    .line 54
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_37

    if-nez v2, :cond_8

    .line 73
    :cond_6
    :goto_6
    monitor-exit p0

    return v1

    .line 59
    :cond_8
    if-eqz p1, :cond_1c

    .line 60
    :try_start_a
    iget-object v2, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_16} :catch_29
    .catchall {:try_start_a .. :try_end_16} :catchall_37

    .line 73
    :cond_16
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_37

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    .line 62
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_28} :catch_29
    .catchall {:try_start_1c .. :try_end_28} :catchall_37

    goto :goto_16

    .line 64
    :catch_29
    move-exception v0

    .line 65
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2a
    iget-object v2, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_37

    if-eqz v2, :cond_16

    .line 67
    :try_start_2e
    iget-object v2, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_3a
    .catchall {:try_start_2e .. :try_end_33} :catchall_37

    .line 69
    :goto_33
    const/4 v2, 0x0

    :try_start_34
    iput-object v2, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_37

    goto :goto_16

    .line 54
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1

    .line 68
    .restart local v0    # "t":Ljava/lang/Throwable;
    :catch_3a
    move-exception v2

    goto :goto_33
.end method

.method public declared-synchronized release()V
    .registers 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_7

    .line 110
    :goto_5
    monitor-exit p0

    return-void

    .line 104
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/mob/tools/utils/FileLocker;->unlock()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_15

    .line 107
    :try_start_a
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_12} :catch_13
    .catchall {:try_start_a .. :try_end_12} :catchall_15

    goto :goto_5

    .line 109
    :catch_13
    move-exception v0

    goto :goto_5

    .line 100
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLockFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a
    .catchall {:try_start_1 .. :try_end_8} :catchall_18

    .line 45
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 37
    :catch_a
    move-exception v0

    .line 38
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_b
    iget-object v1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_18

    if-eqz v1, :cond_8

    .line 40
    :try_start_f
    iget-object v1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_1b
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 42
    :goto_14
    const/4 v1, 0x0

    :try_start_15
    iput-object v1, p0, Lcom/mob/tools/utils/FileLocker;->fos:Ljava/io/FileOutputStream;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_18

    goto :goto_8

    .line 36
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1

    .line 41
    .restart local v0    # "t":Ljava/lang/Throwable;
    :catch_1b
    move-exception v1

    goto :goto_14
.end method

.method public declared-synchronized unlock()V
    .registers 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_7

    .line 97
    :goto_5
    monitor-exit p0

    return-void

    .line 94
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/utils/FileLocker;->lock:Ljava/nio/channels/FileLock;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_10
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    goto :goto_5

    .line 96
    :catch_10
    move-exception v0

    goto :goto_5

    .line 89
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
