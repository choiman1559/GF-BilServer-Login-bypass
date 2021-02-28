.class Lcom/bsgamesdk/android/buvid/j;
.super Ljava/lang/Object;


# direct methods
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
    invoke-static {}, Lcom/bsgamesdk/android/buvid/j;->a()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/bsgamesdk/android/buvid/j;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/bsgamesdk/android/buvid/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bsgamesdk/android/buvid/j;->a()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/bsgamesdk/android/buvid/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/bsgamesdk/android/buvid/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    move-object v0, v1

    goto :goto_7

    :catch_1d
    move-exception v1

    goto :goto_7
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

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/bsgamesdk/android/buvid/j;->b()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/bsgamesdk/android/buvid/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/bsgamesdk/android/buvid/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
