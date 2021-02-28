.class public Lcom/unity3d/splash/services/core/cache/CacheDirectory;
.super Ljava/lang/Object;


# static fields
.field private static final TEST_FILE_NAME:Ljava/lang/String; = "UnityAdsTest.txt"


# instance fields
.field private _cacheDirName:Ljava/lang/String;

.field private _cacheDirectory:Ljava/io/File;

.field private _initialized:Z

.field private _type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_initialized:Z

    iput-object v1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    iput-object v1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    iput-object p1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    return-void
.end method

.method private createNoMediaFile(Ljava/io/File;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "Successfully created .nomedia file"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    const-string v0, "Using existing .nomedia file"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_12

    :catch_19
    move-exception v0

    const-string v1, "Failed to create .nomedia file"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12
.end method


# virtual methods
.method public createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_3
.end method

.method public getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_initialized:Z

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    :goto_7
    return-object v1

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_initialized:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v0, v2, :cond_5c

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    :try_start_1d
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_4f

    move-result-object v0

    :goto_27
    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->createNoMediaFile(Ljava/io/File;)V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;->EXTERNAL:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    iput-object v1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Ads is using external cache directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_7

    :catch_4f
    move-exception v0

    const-string v2, "Creating external cache directory failed"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_27

    :cond_57
    const-string v0, "External media not mounted"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_5c
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_85

    iput-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    sget-object v1, Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;->INTERNAL:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    iput-object v1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Ads is using internal cache directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_7

    :cond_85
    const-string v0, "Unity Ads failed to initialize cache directory"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public getType()Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    return-object v0
.end method

.method public testCacheDirectory(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    :try_start_a
    const-string v1, "test"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [B

    new-instance v3, Ljava/io/File;

    const-string v4, "UnityAdsTest.txt"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_7b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete testfile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_54} :catch_55

    goto :goto_9

    :catch_55
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unity Ads exception while testing cache directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_9

    :cond_7b
    :try_start_7b
    array-length v1, v2

    if-eq v4, v1, :cond_84

    const-string v1, "Read buffer size mismatch"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_9

    :cond_84
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    const/4 v0, 0x1

    goto/16 :goto_9

    :cond_96
    const-string v1, "Read buffer content mismatch"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_9b} :catch_55

    goto/16 :goto_9
.end method
