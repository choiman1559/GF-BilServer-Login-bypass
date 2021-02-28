.class public Lcom/bsgamesdk/android/api/a;
.super Ljava/lang/Thread;


# instance fields
.field public a:Z

.field final b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bsgamesdk/android/api/a;->a:Z

    const-string v0, "collectApi_activate"

    iput-object v0, p0, Lcom/bsgamesdk/android/api/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/bsgamesdk/android/api/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-boolean v2, p0, Lcom/bsgamesdk/android/api/a;->a:Z

    if-eqz v2, :cond_26

    :try_start_6
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->J()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_12} :catch_27

    :goto_12
    iget-object v2, p0, Lcom/bsgamesdk/android/api/a;->c:Landroid/content/Context;

    const-string v3, "collectApi_activate"

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    iput-boolean v1, p0, Lcom/bsgamesdk/android/api/a;->a:Z

    :cond_22
    iget-boolean v2, p0, Lcom/bsgamesdk/android/api/a;->a:Z

    if-nez v2, :cond_2c

    :cond_26
    return-void

    :catch_27
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_12

    :cond_2c
    const-string v3, "1"

    :try_start_2e
    sget-object v2, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/a;->c:Landroid/content/Context;

    invoke-interface {v2, v4}, Lcom/bsgamesdk/android/api/k;->e(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/api/a;->c:Landroid/content/Context;

    const-string v4, "collectApi_activate"

    const-string v5, "activate"

    invoke-static {v2, v4, v5}, Lcom/bsgamesdk/android/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "0"
    :try_end_40
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_2e .. :try_end_40} :catch_4d
    .catch Lorg/apache/http/HttpException; {:try_start_2e .. :try_end_40} :catch_53
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_40} :catch_59

    :goto_40
    new-instance v3, Lcom/bsgamesdk/android/api/h;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/a;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/bsgamesdk/android/api/h;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_4d
    move-exception v2

    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object v2, v3

    goto :goto_40

    :catch_53
    move-exception v2

    :goto_54
    invoke-static {v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object v2, v3

    goto :goto_40

    :catch_59
    move-exception v2

    goto :goto_54
.end method
