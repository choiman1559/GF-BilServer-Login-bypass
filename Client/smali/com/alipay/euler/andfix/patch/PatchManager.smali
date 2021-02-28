.class public Lcom/alipay/euler/andfix/patch/PatchManager;
.super Ljava/lang/Object;


# static fields
.field private static final DIR:Ljava/lang/String; = "apatch"

.field private static final SP_NAME:Ljava/lang/String; = "_andfix_"

.field private static final SP_VERSION:Ljava/lang/String; = "version"

.field private static final SUFFIX:Ljava/lang/String; = ".apatch"

.field private static final TAG:Ljava/lang/String; = "PatchManager"


# instance fields
.field private final mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

.field private final mContext:Landroid/content/Context;

.field private final mLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatchDir:Ljava/io/File;

.field private final mPatchs:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/alipay/euler/andfix/patch/Patch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/alipay/euler/andfix/AndFixManager;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/euler/andfix/AndFixManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "apatch"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchs:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    return-void
.end method

.method private addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".apatch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_d
    new-instance v0, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-direct {v0, p1}, Lcom/alipay/euler/andfix/patch/Patch;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_18

    :try_start_12
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchs:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_20

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1c
    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_17

    :catch_20
    move-exception v1

    goto :goto_1c

    :cond_22
    move-object v0, v1

    goto :goto_17
.end method

.method private cleanPatch()V
    .registers 6

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_1a

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {v4, v3}, Lcom/alipay/euler/andfix/AndFixManager;->removeOptFile(Ljava/io/File;)V

    invoke-static {v3}, Lcom/alipay/euler/andfix/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method private initPatchs()V
    .registers 5

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method private loadPatch(Lcom/alipay/euler/andfix/patch/Patch;)V
    .registers 7

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    const-string v3, "*"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_24
    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_8

    :cond_34
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    goto :goto_24

    :cond_3d
    return-void
.end method


# virtual methods
.method public addPatch(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-direct {p0, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->loadPatch(Lcom/alipay/euler/andfix/patch/Patch;)V

    goto :goto_22
.end method

.method public init(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_10

    :cond_1f
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    const-string v1, "_andfix_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    :cond_37
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatch()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_10

    :cond_48
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->initPatchs()V

    goto :goto_10
.end method

.method public loadPatch()V
    .registers 8

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    const-string v1, "*"

    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchs:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_27

    :cond_47
    return-void
.end method

.method public loadPatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 7

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchs:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, p1}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0, p2, v2}, Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_b

    :cond_2f
    return-void
.end method

.method public removeAllPatch()V
    .registers 4

    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatch()V

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    const-string v1, "_andfix_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
