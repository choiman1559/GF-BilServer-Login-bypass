.class Lokhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v3, v3, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-nez v3, :cond_14

    :goto_b
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_16

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_2f

    :goto_13
    return-void

    :cond_14
    move v0, v1

    goto :goto_b

    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_32
    .catchall {:try_start_16 .. :try_end_1b} :catchall_2f

    :goto_1b
    :try_start_1b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x0

    iput v1, v0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2d} :catch_39
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2f

    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit v2

    goto :goto_13

    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2f

    throw v0

    :catch_32
    move-exception v0

    :try_start_33
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    goto :goto_1b

    :catch_39
    move-exception v0

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_2f

    goto :goto_2d
.end method
