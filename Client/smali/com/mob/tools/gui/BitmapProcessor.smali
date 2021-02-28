.class public Lcom/mob/tools/gui/BitmapProcessor;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;,
        Lcom/mob/tools/gui/BitmapProcessor$ImageReq;,
        Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;,
        Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;,
        Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;,
        Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x3

.field private static final MAX_CACHE_SIZE:I = 0x32

.field private static final MAX_CACHE_TIME:I = 0xea60

.field private static final MAX_REQ_TIME:I = 0x4e20

.field private static final MAX_SIZE:I = 0x64

.field private static final OVERFLOW_SIZE:I = 0x78

.field private static final SCAN_INTERVAL:I = 0x4e20

.field private static cacheDir:Ljava/io/File;

.field private static cachePool:Lcom/mob/tools/gui/CachePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

.field private static netReqTPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/gui/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private static reqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/gui/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private static timeout:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

.field private static work:Z

.field private static workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 48
    .local v0, "timeout":Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    const/16 v1, 0x1388

    iput v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 49
    iget v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    rsub-int v1, v1, 0x4e20

    iput v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/ArrayList;

    .line 53
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    sput-object v1, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 54
    new-instance v1, Lcom/mob/tools/gui/CachePool;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/CachePool;-><init>(I)V

    sput-object v1, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/mob/tools/gui/CachePool;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    return v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/mob/tools/gui/BitmapProcessor;->getCacheKey(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Ljava/io/File;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->timeout:Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    return-object v0
.end method

.method public static deleteCachedFile(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/mob/tools/gui/BitmapProcessor;->removeBitmapFromRamCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)V

    .line 160
    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v0, "cachedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_12

    .line 164
    .end local v0    # "cachedFile":Ljava/io/File;
    :goto_11
    return-void

    .line 162
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapFromCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    .prologue
    .line 144
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    if-eqz v0, :cond_12

    if-eqz p0, :cond_12

    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    invoke-static {p0, p1}, Lcom/mob/tools/gui/BitmapProcessor;->getCacheKey(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 145
    :cond_12
    const/4 v0, 0x0

    .line 147
    :goto_13
    return-object v0

    :cond_14
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    invoke-static {p0, p1}, Lcom/mob/tools/gui/BitmapProcessor;->getCacheKey(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_13
.end method

.method private static getCacheKey(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    .prologue
    .line 136
    if-nez p1, :cond_3

    .end local p0    # "url":Ljava/lang/String;
    :goto_2
    return-object p0

    .restart local p0    # "url":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static declared-synchronized prepare(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-class v1, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getImageCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 59
    monitor-exit v1

    return-void

    .line 58
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .prologue
    .line 80
    const-class v0, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1, p1}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 81
    monitor-exit v0

    return-void

    .line 80
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .param p2, "callback"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .prologue
    .line 84
    const-class v0, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_6
    invoke-static {p0, v1, v2, v3, p2}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;ZZLcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    .line 85
    monitor-exit v0

    return-void

    .line 84
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;ZZJLcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    .registers 19
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .param p2, "useRamCache"    # Z
    .param p3, "useDiskCache"    # Z
    .param p4, "diskCacheTime"    # J
    .param p6, "callback"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .prologue
    const/4 v7, 0x0

    .line 94
    const-class v8, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v8

    if-nez p0, :cond_8

    .line 133
    :goto_6
    monitor-exit v8

    return-void

    .line 98
    :cond_8
    :try_start_8
    sget-object v9, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_61

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_c
    sget-object v10, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_12
    if-ge v2, v6, :cond_69

    .line 100
    sget-object v10, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 102
    .local v3, "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 103
    .local v5, "sameUrl":Z
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v10

    if-nez v10, :cond_2c

    if-eqz p1, :cond_3c

    .line 104
    :cond_2c
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v10

    if-eqz v10, :cond_64

    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    :cond_3c
    const/4 v4, 0x1

    .line 105
    .local v4, "sameOpt":Z
    :goto_3d
    if-eqz v5, :cond_66

    if-eqz v4, :cond_66

    .line 106
    if-eqz p6, :cond_59

    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_59

    .line 107
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_59
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->start()V

    .line 110
    monitor-exit v9

    goto :goto_6

    .line 113
    .end local v3    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .end local v4    # "sameOpt":Z
    .end local v5    # "sameUrl":Z
    .end local v6    # "size":I
    :catchall_5e
    move-exception v7

    monitor-exit v9
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_5e

    :try_start_60
    throw v7
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 94
    .end local v2    # "i":I
    :catchall_61
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v2    # "i":I
    .restart local v3    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .restart local v5    # "sameUrl":Z
    .restart local v6    # "size":I
    :cond_64
    move v4, v7

    .line 104
    goto :goto_3d

    .line 99
    .restart local v4    # "sameOpt":Z
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 113
    .end local v3    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .end local v4    # "sameOpt":Z
    .end local v5    # "sameUrl":Z
    :cond_69
    :try_start_69
    monitor-exit v9
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_5e

    .line 115
    :try_start_6a
    new-instance v3, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-direct {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;-><init>()V

    .line 116
    .restart local v3    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    invoke-static {v3, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$002(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-static {v3, p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$102(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    .line 118
    invoke-static {v3, p2}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$302(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Z)Z

    .line 119
    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;J)J

    .line 120
    invoke-static {v3, p3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$502(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Z)Z

    .line 121
    if-eqz p6, :cond_8b

    .line 122
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_8b
    sget-object v9, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_8e
    .catchall {:try_start_6a .. :try_end_8e} :catchall_61

    .line 125
    :try_start_8e
    sget-object v7, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v7, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v10, 0x78

    if-le v7, v10, :cond_b1

    .line 127
    :goto_9d
    sget-object v7, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v10, 0x64

    if-le v7, v10, :cond_b1

    .line 128
    sget-object v7, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9d

    .line 131
    :catchall_ae
    move-exception v7

    monitor-exit v9
    :try_end_b0
    .catchall {:try_start_8e .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v7
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_61

    :cond_b1
    :try_start_b1
    monitor-exit v9
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_ae

    .line 132
    :try_start_b2
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->start()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_61

    goto/16 :goto_6
.end method

.method public static declared-synchronized process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;ZZLcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    .registers 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .param p2, "useRamCache"    # Z
    .param p3, "useDiskCache"    # Z
    .param p4, "callback"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .prologue
    .line 89
    const-class v7, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v6, p4

    :try_start_a
    invoke-static/range {v0 .. v6}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;ZZJLcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 90
    monitor-exit v7

    return-void

    .line 89
    :catchall_f
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static removeBitmapFromRamCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    .prologue
    .line 152
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    if-eqz v0, :cond_e

    .line 153
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    invoke-static {p0, p1}, Lcom/mob/tools/gui/BitmapProcessor;->getCacheKey(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    :cond_e
    return-void
.end method

.method public static declared-synchronized start()V
    .registers 2

    .prologue
    .line 62
    const-class v1, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    if-nez v0, :cond_11

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    .line 64
    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-direct {v0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;-><init>()V

    sput-object v0, Lcom/mob/tools/gui/BitmapProcessor;->manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 66
    :cond_11
    monitor-exit v1

    return-void

    .line 62
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stop()V
    .registers 3

    .prologue
    .line 69
    const-class v1, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    if-eqz v0, :cond_1d

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    .line 71
    sget-object v2, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    .line 72
    :try_start_d
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    invoke-virtual {v0}, Lcom/mob/tools/gui/CachePool;->clear()V

    .line 74
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1f

    .line 75
    :try_start_18
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-virtual {v0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->quit()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_22

    .line 77
    :cond_1d
    monitor-exit v1

    return-void

    .line 74
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 69
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method
