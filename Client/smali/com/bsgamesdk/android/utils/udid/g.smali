.class Lcom/bsgamesdk/android/utils/udid/g;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    :cond_f
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bsgamesdk/android/utils/udid/g;->a()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/bsgamesdk/android/utils/udid/g;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/bsgamesdk/android/utils/udid/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p1}, Lcom/bsgamesdk/android/utils/udid/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bsgamesdk/android/utils/udid/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static a()Z
    .registers 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b()Ljava/io/File;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_d

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Documents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_c
.end method
