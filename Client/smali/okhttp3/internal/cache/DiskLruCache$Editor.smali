.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .registers 4

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v0, p2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-void

    :cond_f
    iget v0, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Z

    goto :goto_c
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 4

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    if-ne v0, p0, :cond_13

    :try_start_d
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_18
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    :cond_13
    :goto_13
    :try_start_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0

    :catch_18
    move-exception v0

    goto :goto_13
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    return-void
.end method

.method detach()V
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_22

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_1d

    :try_start_d
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_23

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    :cond_22
    return-void

    :catch_23
    move-exception v1

    goto :goto_1a
.end method

.method public newSink(I)Lokio/Sink;
    .registers 5

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v0, p0, :cond_1c

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v0

    monitor-exit v1

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    :cond_27
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v0, v0, p1
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_d

    :try_start_2d
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v2, v0}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_34} :catch_3c
    .catchall {:try_start_2d .. :try_end_34} :catchall_d

    move-result-object v2

    :try_start_35
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v1

    goto :goto_1b

    :catch_3c
    move-exception v0

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_d

    goto :goto_1b
.end method

.method public newSource(I)Lokio/Source;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-eqz v2, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v2, p0, :cond_1f

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_e

    :goto_1e
    return-object v0

    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2c} :catch_2f
    .catchall {:try_start_1f .. :try_end_2c} :catchall_e

    move-result-object v0

    :try_start_2d
    monitor-exit v1

    goto :goto_1e

    :catch_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_e

    goto :goto_1e
.end method
