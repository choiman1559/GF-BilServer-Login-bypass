.class public Lcom/bsgamesdk/android/buvid/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/bsgamesdk/android/buvid/e;

.field private static b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bsgamesdk/android/buvid/e;
    .registers 2

    const-class v1, Lcom/bsgamesdk/android/buvid/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bsgamesdk/android/buvid/e;->a:Lcom/bsgamesdk/android/buvid/e;

    if-nez v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/buvid/e;

    invoke-direct {v0}, Lcom/bsgamesdk/android/buvid/e;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/buvid/e;->a:Lcom/bsgamesdk/android/buvid/e;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/bsgamesdk/android/buvid/e;->a:Lcom/bsgamesdk/android/buvid/e;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    invoke-static {}, Lcom/bsgamesdk/android/buvid/g;->a()V

    sput-object p0, Lcom/bsgamesdk/android/buvid/e;->b:Landroid/content/Context;

    return-void
.end method

.method private c()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/bsgamesdk/android/buvid/b;->a()Lcom/bsgamesdk/android/buvid/b;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/buvid/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/buvid/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Lcom/bsgamesdk/android/buvid/e;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/buvid/o;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-static {}, Lcom/bsgamesdk/android/buvid/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/bsgamesdk/android/buvid/g;->b()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/bsgamesdk/android/buvid/e;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/buvid/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/bsgamesdk/android/buvid/e;->c()V

    goto :goto_19
.end method
