.class public Lcom/alipay/euler/andfix/util/FileUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_30

    move-result-object v1

    :try_start_13
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_3d

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2a
    if-eqz v6, :cond_2f

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    move-object v1, v6

    :goto_32
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_37
    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3c
    throw v0

    :catchall_3d
    move-exception v0

    goto :goto_32
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_1e

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/alipay/euler/andfix/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_7
.end method
