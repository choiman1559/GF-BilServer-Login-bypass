.class public Lcom/bsgamesdk/android/utils/udid/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/udid/h;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;

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

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->v(Ljava/lang/String;)V

    :cond_23
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/bsgamesdk/android/utils/udid/c;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/bsgamesdk/android/utils/udid/g;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/udid/h;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;

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

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->v(Ljava/lang/String;)V

    :cond_23
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/bsgamesdk/android/utils/udid/c;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/bsgamesdk/android/utils/udid/h;->a(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_f

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {p0, p2}, Lcom/bsgamesdk/android/utils/udid/h;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bsgamesdk/android/utils/udid/c;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_11

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_7

    goto :goto_7

    :catch_f
    move-exception v1

    goto :goto_5

    :catch_11
    move-exception v1

    goto :goto_c
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

.method private static b(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;
    .registers 2

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/h;->c(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lcom/bsgamesdk/android/utils/udid/c;
    .registers 8

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
    invoke-static {v2, v3}, Lcom/bsgamesdk/android/utils/udid/h;->a(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/udid/a;->a([B)Lcom/bsgamesdk/android/utils/udid/c;
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
    const-string v4, "udid.reader"

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

    invoke-static {v4, v1}, Lcom/bsgamesdk/android/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
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
