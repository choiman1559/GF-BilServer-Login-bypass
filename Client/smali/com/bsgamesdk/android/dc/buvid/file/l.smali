.class public Lcom/bsgamesdk/android/dc/buvid/file/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/bsgamesdk/android/dc/buvid/file/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-static {v1}, Lcom/bsgamesdk/android/dc/buvid/file/l;->c(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read public env from common path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/data/sdk/utils/LogUtils;->v(Ljava/lang/String;)V

    :cond_23
    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 9

    const/4 v0, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_10} :catch_23
    .catchall {:try_start_6 .. :try_end_10} :catchall_58

    :try_start_10
    invoke-static {v2, v3}, Lcom/bsgamesdk/android/dc/buvid/file/l;->a(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bsgamesdk/android/dc/buvid/file/c;->a([BI)Lcom/bsgamesdk/android/dc/buvid/file/j;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_6a
    .catchall {:try_start_10 .. :try_end_17} :catchall_68

    move-result-object v0

    if-eqz v2, :cond_1d

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1d
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_22} :catch_6c

    :cond_22
    :goto_22
    return-object v0

    :catch_23
    move-exception v1

    move-object v2, v0

    :goto_25
    :try_start_25
    const-string v4, "biliid.reader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error read from path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_68

    if-eqz v2, :cond_50

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_50
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_22

    :catch_56
    move-exception v1

    goto :goto_22

    :catchall_58
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5b
    if-eqz v2, :cond_60

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_60
    if-eqz v3, :cond_65

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_65} :catch_66

    :cond_65
    :goto_65
    throw v0

    :catch_66
    move-exception v1

    goto :goto_65

    :catchall_68
    move-exception v0

    goto :goto_5b

    :catch_6a
    move-exception v1

    goto :goto_25

    :catch_6c
    move-exception v1

    goto :goto_22
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/bsgamesdk/android/dc/buvid/file/l;->a(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_19

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/bsgamesdk/android/dc/buvid/file/l;->a(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_1b

    move-result-object v0

    :goto_c
    if-nez v0, :cond_7

    :try_start_e
    invoke-static {p1}, Lcom/bsgamesdk/android/dc/buvid/file/l;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_1d

    move-result-object v0

    :goto_12
    if-nez v0, :cond_7

    :try_start_14
    invoke-static {p0}, Lcom/bsgamesdk/android/dc/buvid/file/l;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_1f

    move-result-object v0

    goto :goto_7

    :catch_19
    move-exception v1

    goto :goto_5

    :catch_1b
    move-exception v1

    goto :goto_c

    :catch_1d
    move-exception v1

    goto :goto_12

    :catch_1f
    move-exception v1

    goto :goto_7
.end method

.method private static a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "[\"tv.danmaku.bili\",\"com.bilibili.qing\",\"com.bilibili.comic\"]"

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/api/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    :goto_10
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v4, 0x5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v2, v0, :cond_3d

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c

    :cond_34
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->e()Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3f

    move-result-object v0

    goto :goto_10

    :cond_3d
    move-object v0, v1

    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3e
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)[B
    .registers 5

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_4
    const/4 v1, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_10

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 5

    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/l;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/bsgamesdk/android/dc/buvid/file/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/file/l;->c(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v1

    if-eqz v1, :cond_55

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read public env from relatives path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/bsgamesdk/android/dc/buvid/file/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->v(Ljava/lang/String;)V

    :cond_54
    return-object v1

    :cond_55
    move-object v0, v1

    goto :goto_20

    :cond_57
    move-object v0, v1

    :cond_58
    move-object v1, v0

    goto :goto_9
.end method

.method private static c(Ljava/lang/String;)Lcom/bsgamesdk/android/dc/buvid/file/j;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/dc/buvid/file/l;->a(Ljava/lang/String;I)Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v0

    return-object v0
.end method
