.class public Lcom/bsgamesdk/android/utils/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/utils/d;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    const-string v0, ""

    packed-switch p1, :pswitch_data_1c

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "p.biligame.com"

    invoke-static {v0, p0}, Lcom/bsgamesdk/android/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_d
    invoke-static {p0}, Lcom/bsgamesdk/android/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_12
    invoke-static {p0}, Lcom/bsgamesdk/android/utils/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_17
    invoke-static {p0}, Lcom/bsgamesdk/android/utils/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method

.method public static a()V
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/bsgamesdk/android/utils/BSJNIUtils;->httpDnsEnterprise()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    :try_start_5
    const-string v0, "bsutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/bsgamesdk/android/utils/BSJNIUtils;->httpDnsEnterprise()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_3

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static a(Ljava/lang/Throwable;)V
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

    sget-object v0, Lcom/bsgamesdk/android/utils/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/bsgamesdk/android/utils/d$1;

    invoke-direct {v2, p0, v1}, Lcom/bsgamesdk/android/utils/d$1;-><init>(Ljava/lang/Throwable;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    goto :goto_2

    :catch_28
    move-exception v0

    goto :goto_2
.end method
