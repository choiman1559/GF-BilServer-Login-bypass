.class public Lcom/bsgamesdk/android/utils/udid/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/utils/udid/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/udid/i;->b(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public static a(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    :try_start_0
    invoke-static {p1, p2}, Lcom/bsgamesdk/android/utils/udid/g;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/udid/i;->b(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public static a(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-static {p0, p2}, Lcom/bsgamesdk/android/utils/udid/i;->a(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;)V

    invoke-static {p0, p1, p3}, Lcom/bsgamesdk/android/utils/udid/i;->a(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private static b(Lcom/bsgamesdk/android/utils/udid/c;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_21
    .catchall {:try_start_1 .. :try_end_14} :catchall_2a

    :try_start_14
    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/b;->a(Lcom/bsgamesdk/android/utils/udid/c;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1b} :catch_3a
    .catchall {:try_start_14 .. :try_end_1b} :catchall_38

    if-eqz v1, :cond_20

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_34

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v1

    :goto_22
    if-eqz v0, :cond_20

    :try_start_24
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_20

    :catch_28
    move-exception v0

    goto :goto_20

    :catchall_2a
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2e
    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_36

    :cond_33
    :goto_33
    throw v0

    :catch_34
    move-exception v0

    goto :goto_20

    :catch_36
    move-exception v1

    goto :goto_33

    :catchall_38
    move-exception v0

    goto :goto_2e

    :catch_3a
    move-exception v0

    move-object v0, v1

    goto :goto_22
.end method
