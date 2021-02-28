.class public Lcom/bsgamesdk/android/api/m;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/bsgamesdk/android/api/m;->b:J

    iput-object p1, p0, Lcom/bsgamesdk/android/api/m;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x5

    if-ge v1, v0, :cond_11

    :try_start_5
    iget-wide v2, p0, Lcom/bsgamesdk/android/api/m;->b:J

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/m;->a:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;)V
    :try_end_11
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_5 .. :try_end_11} :catch_1a
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_11} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_1c

    :cond_11
    return-void

    :catch_12
    move-exception v0

    :goto_13
    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_1a
    move-exception v0

    goto :goto_13

    :catch_1c
    move-exception v0

    goto :goto_13
.end method
