.class public Lcom/alipay/euler/andfix/AndFixManager;
.super Ljava/lang/Object;


# static fields
.field private static final DIR:Ljava/lang/String; = "apatch_opt"

.field private static final TAG:Ljava/lang/String; = "AndFixManager"

.field private static mFixedClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOptDir:Ljava/io/File;

.field private mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

.field private mSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/euler/andfix/AndFixManager;->mFixedClass:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    iput-object p1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    iget-boolean v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    if-eqz v0, :cond_3c

    new-instance v0, Lcom/alipay/euler/andfix/security/SecurityChecker;

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/euler/andfix/security/SecurityChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "apatch_opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3d

    iput-boolean v3, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-boolean v3, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    goto :goto_3c
.end method

.method private fixClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_31

    aget-object v4, v2, v1

    const-class v0, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    if-nez v0, :cond_19

    :cond_15
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_19
    invoke-interface {v0}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->clazz()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/alipay/euler/andfix/AndFixManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-static {v0}, Lcom/alipay/euler/andfix/AndFixManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-direct {p0, p2, v5, v0, v4}, Lcom/alipay/euler/andfix/AndFixManager;->replaceMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_15

    :cond_31
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private replaceMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .registers 8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/alipay/euler/andfix/AndFixManager;->mFixedClass:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_2d

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/euler/andfix/AndFix;->initTargetClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_2d
    if-eqz v0, :cond_3f

    sget-object v2, Lcom/alipay/euler/andfix/AndFixManager;->mFixedClass:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/alipay/euler/andfix/AndFix;->addReplaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    return-void

    :catch_40
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_3f
.end method


# virtual methods
.method public declared-synchronized fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6f

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    invoke-virtual {v1, p1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->verifyApk(Ljava/io/File;)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_6f

    move-result v1

    if-eqz v1, :cond_6

    :try_start_10
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    invoke-virtual {v3, v2}, Lcom/alipay/euler/andfix/security/SecurityChecker;->verifyOpt(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_67

    :goto_2a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v1

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    invoke-virtual {v0, v2}, Lcom/alipay/euler/andfix/security/SecurityChecker;->saveOptSig(Ljava/io/File;)V

    :cond_3e
    new-instance v2, Lcom/alipay/euler/andfix/AndFixManager$1;

    invoke-direct {v2, p0, p2, v1}, Lcom/alipay/euler/andfix/AndFixManager$1;-><init>(Lcom/alipay/euler/andfix/AndFixManager;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V

    invoke-virtual {v1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :cond_47
    :goto_47
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_5b

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    :cond_5b
    invoke-virtual {v1, v0, v2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-direct {p0, v0, p2}, Lcom/alipay/euler/andfix/AndFixManager;->fixClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    goto :goto_47

    :catch_65
    move-exception v0

    goto :goto_6

    :cond_67
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_6a} :catch_65
    .catchall {:try_start_10 .. :try_end_6a} :catchall_6f

    move-result v0

    if-eqz v0, :cond_6

    :cond_6d
    move v0, v1

    goto :goto_2a

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fix(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeOptFile(Ljava/io/File;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    move-result v0

    if-nez v0, :cond_18

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
