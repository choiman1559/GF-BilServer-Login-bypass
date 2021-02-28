.class public Lcom/bsgamesdk/android/dc/buvid/file/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/bsgamesdk/android/dc/buvid/file/e;

.field private static b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bsgamesdk/android/dc/buvid/file/e;
    .registers 2

    const-class v1, Lcom/bsgamesdk/android/dc/buvid/file/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/e;->a:Lcom/bsgamesdk/android/dc/buvid/file/e;

    if-nez v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/dc/buvid/file/e;

    invoke-direct {v0}, Lcom/bsgamesdk/android/dc/buvid/file/e;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/dc/buvid/file/e;->a:Lcom/bsgamesdk/android/dc/buvid/file/e;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/e;->a:Lcom/bsgamesdk/android/dc/buvid/file/e;

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

    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/g;->a()V

    sput-object p0, Lcom/bsgamesdk/android/dc/buvid/file/e;->b:Landroid/content/Context;

    return-void
.end method

.method private c()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/dc/buvid/file/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/buvid/b;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/dc/buvid/file/j;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/a;->a()Lcom/bsgamesdk/android/dc/buvid/file/a;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/dc/buvid/file/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/e;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/dc/buvid/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/g;->b()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/bsgamesdk/android/dc/buvid/file/e;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/dc/buvid/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/bsgamesdk/android/dc/buvid/file/e;->c()V

    goto :goto_19
.end method
