.class public Lcom/bsgamesdk/android/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/bsgamesdk/android/dynamic/IConstant;

.field public static b:Lcom/bsgamesdk/android/dynamic/IUtils;

.field public static c:Lcom/bsgamesdk/android/api/k;

.field public static d:Lcom/bsgamesdk/android/helper/a;

.field public static e:Lcom/bsgamesdk/android/helper/d;

.field public static f:Lcom/bsgamesdk/android/api/b;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Lcom/bsgamesdk/android/c;

    invoke-direct {v0}, Lcom/bsgamesdk/android/c;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/b;->a:Lcom/bsgamesdk/android/dynamic/IConstant;

    new-instance v0, Lcom/bsgamesdk/android/utils/ab;

    invoke-direct {v0}, Lcom/bsgamesdk/android/utils/ab;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    new-instance v0, Lcom/bsgamesdk/android/api/e;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/e;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    invoke-static {}, Lcom/bsgamesdk/android/helper/d;->a()Lcom/bsgamesdk/android/helper/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/helper/d;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/helper/d;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/b;->e:Lcom/bsgamesdk/android/helper/d;

    invoke-static {}, Lcom/bsgamesdk/android/helper/a;->a()Lcom/bsgamesdk/android/helper/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/helper/a;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/helper/a;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/b;->f:Lcom/bsgamesdk/android/api/b;

    sget-object v0, Lcom/bsgamesdk/android/b;->f:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/api/b;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/bsgamesdk/android/b;->f:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/api/b;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/jars/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DExt.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "DExt.jar"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_84
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_95

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_95
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_b5

    const/16 v3, 0x400

    new-array v3, v3, [B

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_a4
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_b2

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_a4

    :catch_b0
    move-exception v0

    :goto_b1
    return-void

    :cond_b2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_b5} :catch_b0

    :cond_b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sdkCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_de

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_de
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ldalvik/system/DexClassLoader;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_eb
    const-string v0, "com.bsgamesdk.android.DConstant"

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/dynamic/IConstant;

    sput-object v0, Lcom/bsgamesdk/android/b;->a:Lcom/bsgamesdk/android/dynamic/IConstant;

    const-string v0, "com.bsgamesdk.android.utils.DUtils"

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/dynamic/IUtils;

    sput-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    const-string v0, "com.bsgamesdk.android.api.DBSGameSdkAuthApi"

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/k;

    sput-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;
    :try_end_115
    .catch Ljava/lang/ClassNotFoundException; {:try_start_eb .. :try_end_115} :catch_116
    .catch Ljava/lang/InstantiationException; {:try_start_eb .. :try_end_115} :catch_11a
    .catch Ljava/lang/IllegalAccessException; {:try_start_eb .. :try_end_115} :catch_118

    goto :goto_b1

    :catch_116
    move-exception v0

    goto :goto_b1

    :catch_118
    move-exception v0

    goto :goto_b1

    :catch_11a
    move-exception v0

    goto :goto_b1
.end method
