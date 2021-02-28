.class public Lcom/bsgamesdk/android/utils/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_1a
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    move-result-object v0

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V

    :goto_19
    return-object v0

    :catch_1a
    move-exception v2

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V

    goto :goto_19

    :catchall_1f
    move-exception v0

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_15
    .catchall {:try_start_2 .. :try_end_5} :catchall_1a

    move-result-object v0

    :try_start_6
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_15
    .catchall {:try_start_6 .. :try_end_11} :catchall_22

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V

    :goto_14
    return-void

    :catch_15
    move-exception v1

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V

    goto :goto_14

    :catchall_1a
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1e
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V

    throw v0

    :catchall_22
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1e
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 2

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_d
    move-exception v0

    goto :goto_2

    :cond_f
    instance-of v0, p0, Ljava/io/OutputStream;

    if-eqz v0, :cond_19

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_19
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_23

    check-cast p0, Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    goto :goto_2

    :cond_23
    instance-of v0, p0, Ljava/io/Reader;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2c} :catch_d

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v1, ""

    :try_start_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_49

    :cond_f
    const/4 v2, 0x0

    :try_start_10
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_22
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_27} :catch_3b
    .catchall {:try_start_10 .. :try_end_27} :catchall_44

    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_37} :catch_56
    .catchall {:try_start_27 .. :try_end_37} :catchall_53

    :try_start_37
    invoke-static {v3}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_51

    :goto_3a
    return-object v0

    :catch_3b
    move-exception v0

    :goto_3c
    :try_start_3c
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_44

    :try_start_3f
    invoke-static {v2}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_3a

    :catchall_44
    move-exception v0

    :goto_45
    invoke-static {v2}, Lcom/bsgamesdk/android/utils/l;->a(Ljava/lang/Object;)V

    throw v0
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4d
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3a

    :catch_51
    move-exception v1

    goto :goto_4d

    :catchall_53
    move-exception v0

    move-object v2, v3

    goto :goto_45

    :catch_56
    move-exception v0

    move-object v2, v3

    goto :goto_3c
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    const-string v2, "collectApi_params_cache"

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v2, 0x0

    :try_start_12
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_19} :catch_22

    int-to-long v2, v1

    :goto_1a
    const-wide/32 v8, 0x500000

    cmp-long v1, v2, v8

    if-lez v1, :cond_27

    :cond_21
    :goto_21
    return v0

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1a

    :cond_27
    :try_start_27
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_38} :catch_42

    move-result v1

    int-to-long v8, v1

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_21

    :goto_40
    const/4 v0, 0x1

    goto :goto_21

    :catch_42
    move-exception v0

    goto :goto_40
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_16
    array-length v2, v3

    if-ge v0, v2, :cond_36

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    :try_start_25
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2e} :catch_31

    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :catch_31
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_36
    move-object v0, v1

    goto :goto_b
.end method
