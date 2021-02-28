.class public Lcom/bilibili/track/storage/database/DbDataHelper;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/bilibili/track/storage/database/DbDataHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;
    .registers 2

    sget-object v0, Lcom/bilibili/track/storage/database/DbDataHelper;->INSTANCE:Lcom/bilibili/track/storage/database/DbDataHelper;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/bilibili/track/storage/database/DbDataHelper;->INSTANCE:Lcom/bilibili/track/storage/database/DbDataHelper;

    :goto_6
    return-object v0

    :cond_7
    const-class v1, Lcom/bilibili/track/storage/database/DbDataHelper;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lcom/bilibili/track/storage/database/DbDataHelper;->INSTANCE:Lcom/bilibili/track/storage/database/DbDataHelper;

    if-nez v0, :cond_15

    new-instance v0, Lcom/bilibili/track/storage/database/DbDataHelper;

    invoke-direct {v0}, Lcom/bilibili/track/storage/database/DbDataHelper;-><init>()V

    sput-object v0, Lcom/bilibili/track/storage/database/DbDataHelper;->INSTANCE:Lcom/bilibili/track/storage/database/DbDataHelper;

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    sget-object v0, Lcom/bilibili/track/storage/database/DbDataHelper;->INSTANCE:Lcom/bilibili/track/storage/database/DbDataHelper;

    goto :goto_6

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private queryCount(Landroid/content/Context;)I
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/bilibili/track/utils/FutureThreadPool;->getInstance()Lcom/bilibili/track/utils/FutureThreadPool;

    move-result-object v0

    new-instance v2, Lcom/bilibili/track/storage/database/DbDataHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/track/storage/database/DbDataHelper$2;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/track/utils/FutureThreadPool;->executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    :try_start_e
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_19

    move-result v0

    :goto_18
    return v0

    :catch_19
    move-exception v0

    move v0, v1

    goto :goto_18
.end method


# virtual methods
.method public deleteExpiredData(Landroid/content/Context;I)V
    .registers 5

    invoke-static {}, Lcom/bilibili/track/utils/ThreadMangaer;->getInstance()Lcom/bilibili/track/utils/ThreadMangaer;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/storage/database/DbDataHelper$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/bilibili/track/storage/database/DbDataHelper$7;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/bilibili/track/utils/ThreadMangaer;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteTrackInfo(Landroid/content/Context;Lcom/bilibili/track/config/TrackConfig;)V
    .registers 5

    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/bilibili/track/storage/database/DbDataHelper;->queryCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p2}, Lcom/bilibili/track/config/TrackConfig;->getLocal_max_count()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bilibili/track/utils/CommonUtils;->safeParseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_a

    invoke-static {}, Lcom/bilibili/track/storage/database/DbDataHelper;->getInstance()Lcom/bilibili/track/storage/database/DbDataHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/bilibili/track/storage/database/DbDataHelper;->deleteExpiredData(Landroid/content/Context;I)V

    goto :goto_a
.end method

.method public insert(Landroid/content/Context;Lcom/bilibili/track/storage/database/BaseBean;)V
    .registers 5

    invoke-static {}, Lcom/bilibili/track/utils/ThreadMangaer;->getInstance()Lcom/bilibili/track/utils/ThreadMangaer;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/storage/database/DbDataHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bilibili/track/storage/database/DbDataHelper$1;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;Lcom/bilibili/track/storage/database/BaseBean;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/track/utils/ThreadMangaer;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryCountBean(Landroid/content/Context;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/bilibili/track/utils/FutureThreadPool;->getInstance()Lcom/bilibili/track/utils/FutureThreadPool;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/storage/database/DbDataHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/bilibili/track/storage/database/DbDataHelper$5;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/bilibili/track/utils/FutureThreadPool;->executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public queryCountBean(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/bilibili/track/utils/FutureThreadPool;->getInstance()Lcom/bilibili/track/utils/FutureThreadPool;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/storage/database/DbDataHelper$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/bilibili/track/storage/database/DbDataHelper$4;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/track/utils/FutureThreadPool;->executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public queryNormalCountBean(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/bilibili/track/utils/FutureThreadPool;->getInstance()Lcom/bilibili/track/utils/FutureThreadPool;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/storage/database/DbDataHelper$6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/bilibili/track/storage/database/DbDataHelper$6;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/track/utils/FutureThreadPool;->executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public queryUnUploadCount(Landroid/content/Context;)I
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/bilibili/track/utils/FutureThreadPool;->getInstance()Lcom/bilibili/track/utils/FutureThreadPool;

    move-result-object v0

    new-instance v2, Lcom/bilibili/track/storage/database/DbDataHelper$3;

    invoke-direct {v2, p0, p1}, Lcom/bilibili/track/storage/database/DbDataHelper$3;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/track/utils/FutureThreadPool;->executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    :try_start_e
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_19

    move-result v0

    :goto_18
    return v0

    :catch_19
    move-exception v0

    move v0, v1

    goto :goto_18
.end method

.method public updateOverData(Landroid/content/Context;J)V
    .registers 6

    invoke-static {}, Lcom/bilibili/track/utils/ThreadMangaer;->getInstance()Lcom/bilibili/track/utils/ThreadMangaer;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/storage/database/DbDataHelper$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bilibili/track/storage/database/DbDataHelper$10;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Lcom/bilibili/track/utils/ThreadMangaer;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateUploadState(Landroid/content/Context;Lcom/bilibili/track/storage/database/BaseBean;)V
    .registers 5

    invoke-static {}, Lcom/bilibili/track/utils/ThreadMangaer;->getInstance()Lcom/bilibili/track/utils/ThreadMangaer;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/storage/database/DbDataHelper$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/bilibili/track/storage/database/DbDataHelper$9;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;Lcom/bilibili/track/storage/database/BaseBean;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/track/utils/ThreadMangaer;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateUploadState(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/track/storage/database/BaseBean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bilibili/track/utils/ThreadMangaer;->getInstance()Lcom/bilibili/track/utils/ThreadMangaer;

    move-result-object v0

    new-instance v1, Lcom/bilibili/track/storage/database/DbDataHelper$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/bilibili/track/storage/database/DbDataHelper$8;-><init>(Lcom/bilibili/track/storage/database/DbDataHelper;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/track/utils/ThreadMangaer;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method
