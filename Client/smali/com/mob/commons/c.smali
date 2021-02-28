.class public Lcom/mob/commons/c;
.super Ljava/lang/Object;
.source "DeviceLevelTags.java"


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 14
    const-class v1, Lcom/mob/commons/c;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    move-result v0

    .line 19
    :goto_b
    monitor-exit v1

    return v0

    .line 16
    :catch_d
    move-exception v0

    .line 17
    :try_start_e
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_17

    .line 19
    const/4 v0, 0x1

    goto :goto_b

    .line 14
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 24
    const-class v1, Lcom/mob/commons/c;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_12
    .catchall {:try_start_3 .. :try_end_10} :catchall_1b

    .line 31
    :cond_10
    :goto_10
    monitor-exit v1

    return-void

    .line 28
    :catch_12
    move-exception v0

    .line 29
    :try_start_13
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_10

    .line 24
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 35
    const-class v1, Lcom/mob/commons/c;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_12
    .catchall {:try_start_3 .. :try_end_10} :catchall_1b

    .line 42
    :cond_10
    :goto_10
    monitor-exit v1

    return-void

    .line 39
    :catch_12
    move-exception v0

    .line 40
    :try_start_13
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_10

    .line 35
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
