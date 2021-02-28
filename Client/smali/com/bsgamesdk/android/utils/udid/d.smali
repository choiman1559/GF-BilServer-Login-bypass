.class public Lcom/bsgamesdk/android/utils/udid/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/bsgamesdk/android/utils/udid/d;

.field private static b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bsgamesdk/android/utils/udid/d;
    .registers 2

    const-class v1, Lcom/bsgamesdk/android/utils/udid/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bsgamesdk/android/utils/udid/d;->a:Lcom/bsgamesdk/android/utils/udid/d;

    if-nez v0, :cond_e

    new-instance v0, Lcom/bsgamesdk/android/utils/udid/d;

    invoke-direct {v0}, Lcom/bsgamesdk/android/utils/udid/d;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/utils/udid/d;->a:Lcom/bsgamesdk/android/utils/udid/d;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/d;->a:Lcom/bsgamesdk/android/utils/udid/d;

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

    invoke-static {p0}, Lcom/bsgamesdk/android/utils/udid/f;->a(Landroid/content/Context;)V

    sput-object p0, Lcom/bsgamesdk/android/utils/udid/d;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic c()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/utils/udid/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "|||"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/bsgamesdk/android/utils/udid/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*|\t|\r|\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    sget-object v0, Lcom/bsgamesdk/android/utils/udid/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;)Lcom/bsgamesdk/android/buvid/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/buvid/k;->d:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_30

    :catch_3a
    move-exception v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method


# virtual methods
.method public b()V
    .registers 4

    invoke-static {}, Lcom/bsgamesdk/android/utils/udid/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/udid/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/udid/f;->a(Ljava/lang/String;)V

    :cond_11
    new-instance v1, Lcom/bsgamesdk/android/utils/udid/c;

    invoke-direct {v1}, Lcom/bsgamesdk/android/utils/udid/c;-><init>()V

    iput-object v0, v1, Lcom/bsgamesdk/android/utils/udid/c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->getInstance()Lcom/qiniu/android/dns/util/RealTimeThreadPool;

    move-result-object v0

    new-instance v2, Lcom/bsgamesdk/android/utils/udid/d$1;

    invoke-direct {v2, p0, v1}, Lcom/bsgamesdk/android/utils/udid/d$1;-><init>(Lcom/bsgamesdk/android/utils/udid/d;Lcom/bsgamesdk/android/utils/udid/c;)V

    invoke-virtual {v0, v2}, Lcom/qiniu/android/dns/util/RealTimeThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
