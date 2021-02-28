.class Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
.super Ljava/lang/Thread;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

.field private localType:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/BitmapProcessor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$1;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/io/InputStream;Ljava/io/File;)V
    .registers 3
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->saveFile(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .param p1, "x1"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .param p1, "x1"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z

    return p1
.end method

.method private doLocalTask()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v4, 0x0

    .line 243
    .local v4, "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 244
    :try_start_6
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1d

    .line 245
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    move-object v4, v0

    .line 247
    :cond_1d
    monitor-exit v6
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_4d

    .line 249
    if-eqz v4, :cond_c0

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 252
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object v5

    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 253
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez v3, :cond_50

    const/4 v2, 0x0

    .line 255
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_40
    :goto_40
    if-eqz v2, :cond_58

    .line 256
    iput-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 257
    iget-object v5, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v5, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 258
    invoke-static {v4, v2}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 282
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :goto_4c
    return-void

    .line 247
    :catchall_4d
    move-exception v5

    :try_start_4e
    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v5

    .line 253
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_50
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object v2, v5

    goto :goto_40

    .line 260
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_58
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_7f

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v6

    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 261
    invoke-direct {p0, v4}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    goto :goto_4c

    .line 264
    :cond_7f
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 265
    :try_start_84
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v7, 0x64

    if-le v5, v7, :cond_b7

    .line 266
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_95
    .catchall {:try_start_84 .. :try_end_95} :catchall_ab

    .line 267
    :goto_95
    :try_start_95
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ae

    .line 268
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_95

    .line 270
    :catchall_a8
    move-exception v5

    monitor-exit v7
    :try_end_aa
    .catchall {:try_start_95 .. :try_end_aa} :catchall_a8

    :try_start_aa
    throw v5

    .line 273
    :catchall_ab
    move-exception v5

    monitor-exit v6
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ab

    throw v5

    .line 270
    :cond_ae
    :try_start_ae
    monitor-exit v7
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_a8

    .line 271
    :try_start_af
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    :cond_b7
    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_ab

    .line 274
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 279
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_c0
    const-wide/16 v6, 0x1e

    :try_start_c2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_4c

    .line 280
    :catch_c6
    move-exception v5

    goto :goto_4c
.end method

.method private doNetworkTask()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v4, 0x0

    .line 288
    .local v4, "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 289
    :try_start_6
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1d

    .line 290
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1700()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    move-object v4, v0

    .line 292
    :cond_1d
    monitor-exit v6
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_6c

    .line 295
    if-nez v4, :cond_3d

    .line 296
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 297
    :try_start_25
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3c

    .line 298
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1100()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    move-object v4, v0

    .line 300
    :cond_3c
    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_6f

    .line 303
    :cond_3d
    if-eqz v4, :cond_7e

    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 306
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object v5

    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 307
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez v3, :cond_72

    const/4 v2, 0x0

    .line 309
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_5f
    :goto_5f
    if-eqz v2, :cond_7a

    .line 310
    iput-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 311
    iget-object v5, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-static {v5, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 312
    invoke-static {v4, v2}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 321
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :goto_6b
    return-void

    .line 292
    :catchall_6c
    move-exception v5

    :try_start_6d
    monitor-exit v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v5

    .line 300
    :catchall_6f
    move-exception v5

    :try_start_70
    monitor-exit v6
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v5

    .line 307
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_72
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object v2, v5

    goto :goto_5f

    .line 314
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_7a
    invoke-direct {p0, v4}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    goto :goto_6b

    .line 318
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_7e
    const-wide/16 v6, 0x1e

    :try_start_80
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_6b

    .line 319
    :catch_84
    move-exception v5

    goto :goto_6b
.end method

.method private doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    .registers 19
    .param p1, "req"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .line 328
    const/4 v8, 0x0

    .line 329
    .local v8, "bm":Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 330
    .local v13, "md5":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v2

    invoke-direct {v9, v2, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v9, "cacheFile":Ljava/io/File;
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$400(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4b

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 333
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 334
    .local v14, "lastModified":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 335
    .local v10, "currentTime":J
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$400(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)J

    move-result-wide v2

    add-long/2addr v2, v14

    cmp-long v2, v2, v10

    if-gez v2, :cond_4b

    .line 337
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 340
    .end local v10    # "currentTime":J
    .end local v14    # "lastModified":J
    :cond_4b
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_e3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 341
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v2

    if-eqz v2, :cond_6f

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 342
    :cond_6f
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 347
    :goto_77
    if-eqz v8, :cond_cc

    .line 348
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 349
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1000()Lcom/mob/tools/gui/CachePool;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    :cond_97
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 355
    :goto_9c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .line 400
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v13    # "md5":Ljava/lang/String;
    :goto_a1
    return-void

    .line 344
    .restart local v8    # "bm":Landroid/graphics/Bitmap;
    .restart local v9    # "cacheFile":Ljava/io/File;
    .restart local v13    # "md5":Ljava/lang/String;
    :cond_a2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1600()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v3

    iget v3, v3, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    .line 345
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v4

    iget v4, v4, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v5

    iget v5, v5, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v6

    iget-wide v6, v6, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    .line 344
    invoke-static/range {v2 .. v7}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressQuality(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_77

    .line 353
    :cond_cc
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1800(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_cf} :catch_d0

    goto :goto_9c

    .line 395
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v13    # "md5":Ljava/lang/String;
    :catch_d0
    move-exception v16

    .line 396
    .local v16, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 397
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1800(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    .line 398
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    goto :goto_a1

    .line 358
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v8    # "bm":Landroid/graphics/Bitmap;
    .restart local v9    # "cacheFile":Ljava/io/File;
    .restart local v13    # "md5":Ljava/lang/String;
    :cond_e3
    :try_start_e3
    new-instance v12, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v12}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 359
    .local v12, "helper":Lcom/mob/tools/network/NetworkHelper;
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v13, v1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;-><init>(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    .line 393
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$2100()Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    move-result-object v4

    .line 359
    invoke-virtual {v12, v2, v3, v4}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_e3 .. :try_end_fc} :catch_d0

    goto :goto_a1
.end method

.method private saveFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 10
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 406
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 408
    :cond_a
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 409
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 411
    :cond_1b
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 412
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_23} :catch_44
    .catchall {:try_start_1 .. :try_end_23} :catchall_57

    .line 413
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/16 v5, 0x100

    :try_start_25
    new-array v4, v5, [B

    .line 414
    .local v4, "tmp":[B
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 415
    .local v2, "len":I
    :goto_2b
    if-lez v2, :cond_36

    .line 416
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 417
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_2b

    .line 419
    :cond_36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_39} :catch_64
    .catchall {:try_start_25 .. :try_end_39} :catchall_61

    .line 426
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 427
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3f} :catch_41

    move-object v0, v1

    .line 431
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "len":I
    .end local v4    # "tmp":[B
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_40
    return-void

    .line 428
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "len":I
    .restart local v4    # "tmp":[B
    :catch_41
    move-exception v5

    move-object v0, v1

    .line 430
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_40

    .line 420
    .end local v2    # "len":I
    .end local v4    # "tmp":[B
    :catch_44
    move-exception v3

    .line 421
    .local v3, "t":Ljava/lang/Throwable;
    :goto_45
    :try_start_45
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 422
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_57

    .line 426
    :cond_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 427
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_54} :catch_55

    goto :goto_40

    .line 428
    :catch_55
    move-exception v5

    goto :goto_40

    .line 425
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_57
    move-exception v5

    .line 426
    :goto_58
    :try_start_58
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 427
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5e} :catch_5f

    .line 429
    :goto_5e
    throw v5

    .line 428
    :catch_5f
    move-exception v6

    goto :goto_5e

    .line 425
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_61
    move-exception v5

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_58

    .line 420
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_64
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_45
.end method


# virtual methods
.method public interrupt()V
    .registers 2

    .prologue
    .line 435
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 437
    :goto_3
    return-void

    .line 436
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public run()V
    .registers 3

    .prologue
    .line 227
    :goto_0
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 229
    :try_start_6
    iget-boolean v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z

    if-eqz v1, :cond_17

    .line 230
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doLocalTask()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_0

    .line 234
    :catch_e
    move-exception v0

    .line 235
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doNetworkTask()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_e

    goto :goto_0

    .line 238
    :cond_1b
    return-void
.end method
