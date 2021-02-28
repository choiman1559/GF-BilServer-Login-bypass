.class public Lcom/mob/commons/d;
.super Ljava/lang/Object;
.source "Locks.java"


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 21
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 25
    :cond_1e
    return-object v0
.end method

.method public static final a(Ljava/io/File;Lcom/mob/commons/LockAction;)V
    .registers 4

    .prologue
    .line 30
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 36
    :cond_1a
    new-instance v0, Lcom/mob/tools/utils/FileLocker;

    invoke-direct {v0}, Lcom/mob/tools/utils/FileLocker;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/FileLocker;->setLockFile(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/FileLocker;->lock(Z)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 39
    invoke-interface {p1, v0}, Lcom/mob/commons/LockAction;->run(Lcom/mob/tools/utils/FileLocker;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 40
    invoke-virtual {v0}, Lcom/mob/tools/utils/FileLocker;->release()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_36} :catch_37

    .line 46
    :cond_36
    :goto_36
    return-void

    .line 43
    :catch_37
    move-exception v0

    .line 44
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_36
.end method
