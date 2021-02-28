.class final Lokhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field final cleanFiles:[Ljava/io/File;

.field currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final dirtyFiles:[Ljava/io/File;

.field final key:Ljava/lang/String;

.field final lengths:[J

.field readable:Z

.field sequenceNumber:J

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 10

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget v0, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    iget v0, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    iget v0, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_29
    iget v3, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v3, :cond_59

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_59
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method setLengths([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-eq v0, v1, :cond_c

    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    const/4 v0, 0x0

    :goto_d
    :try_start_d
    array-length v1, p1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :catch_1d
    move-exception v0

    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_23
    return-void
.end method

.method snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v6, v1, [Lokio/Source;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    move v1, v0

    :goto_1e
    :try_start_1e
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v2, v2, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_35

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_35
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_40} :catch_5c

    :goto_40
    return-object v1

    :goto_41
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_53

    aget-object v1, v6, v0

    if-eqz v1, :cond_53

    aget-object v1, v6, v0

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_53
    :try_start_53
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0, p0}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_5a

    :goto_58
    const/4 v1, 0x0

    goto :goto_40

    :catch_5a
    move-exception v0

    goto :goto_58

    :catch_5c
    move-exception v1

    goto :goto_41
.end method

.method writeLengths(Lokio/BufferedSink;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_14

    aget-wide v4, v1, v0

    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method
