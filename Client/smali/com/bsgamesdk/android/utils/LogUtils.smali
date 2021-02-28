.class public Lcom/bsgamesdk/android/utils/LogUtils;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z

.field private static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/LogUtils;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, "BSGameSdk"

    invoke-static {v0, p0}, Lcom/bsgamesdk/android/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "BSGameSdk"

    invoke-static {v0, p0}, Lcom/bsgamesdk/android/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    const-string v0, "BSGameSdk"

    invoke-static {v0, p0}, Lcom/bsgamesdk/android/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static printExceptionStackTrace(Ljava/lang/Exception;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bsgamesdk/android/utils/LogUtils;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/bsgamesdk/android/utils/LogUtils$1;

    invoke-direct {v2, p0, v1}, Lcom/bsgamesdk/android/utils/LogUtils$1;-><init>(Ljava/lang/Exception;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    goto :goto_2

    :catch_28
    move-exception v0

    goto :goto_2
.end method

.method public static printThrowableStackTrace(Ljava/lang/Throwable;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static printThrowableStackTrace(Ljava/lang/Throwable;Z)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bsgamesdk/android/utils/LogUtils;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/bsgamesdk/android/utils/LogUtils$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/bsgamesdk/android/utils/LogUtils$2;-><init>(Ljava/lang/Throwable;ZLandroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    goto :goto_2

    :catch_28
    move-exception v0

    goto :goto_2
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    const-string v0, "BSGameSdk"

    invoke-static {v0, p0}, Lcom/bsgamesdk/android/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    const-string v0, "BSGameSdk"

    invoke-static {v0, p0}, Lcom/bsgamesdk/android/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method
