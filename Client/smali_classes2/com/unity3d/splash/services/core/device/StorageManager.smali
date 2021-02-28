.class public Lcom/unity3d/splash/services/core/device/StorageManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;
    }
.end annotation


# static fields
.field protected static final _storageFileMap:Ljava/util/Map;

.field protected static final _storages:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addStorageLocation(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/unity3d/splash/services/core/device/StorageManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Lcom/unity3d/splash/services/core/device/Storage;
    .registers 4

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storages:Ljava/util/List;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/device/Storage;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/device/Storage;->getType()Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static hasStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Z
    .registers 3

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storages:Ljava/util/List;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/device/Storage;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/device/Storage;->getType()Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static init(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getLocalStorageFilePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "public-data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/splash/services/core/device/StorageManager;->addStorageLocation(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    invoke-static {v2}, Lcom/unity3d/splash/services/core/device/StorageManager;->setupStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getLocalStorageFilePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "private-data.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unity3d/splash/services/core/device/StorageManager;->addStorageLocation(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;Ljava/lang/String;)V

    sget-object v1, Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    invoke-static {v1}, Lcom/unity3d/splash/services/core/device/StorageManager;->setupStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static initStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)V
    .registers 3

    invoke-static {p0}, Lcom/unity3d/splash/services/core/device/StorageManager;->hasStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/unity3d/splash/services/core/device/StorageManager;->getStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/device/Storage;->initStorage()Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v1, Lcom/unity3d/splash/services/core/device/Storage;

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Lcom/unity3d/splash/services/core/device/Storage;-><init>(Ljava/lang/String;Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)V

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/device/Storage;->initStorage()Z

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public static declared-synchronized removeStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)V
    .registers 4

    const-class v1, Lcom/unity3d/splash/services/core/device/StorageManager;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/unity3d/splash/services/core/device/StorageManager;->getStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storages:Ljava/util/List;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/device/StorageManager;->getStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_12
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setupStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Z
    .registers 3

    invoke-static {p0}, Lcom/unity3d/splash/services/core/device/StorageManager;->hasStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/unity3d/splash/services/core/device/StorageManager;->initStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)V

    invoke-static {p0}, Lcom/unity3d/splash/services/core/device/StorageManager;->getStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/device/Storage;->storageFileExists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/device/Storage;->writeStorage()Z

    :cond_18
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method
