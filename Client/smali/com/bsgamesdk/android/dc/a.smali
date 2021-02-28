.class public Lcom/bsgamesdk/android/dc/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/data/sdk/domain/interfaces/ILifeCycle;


# static fields
.field private static c:Lcom/bsgamesdk/android/dc/a;


# instance fields
.field public a:Lcom/bsgamesdk/android/dc/b;

.field public b:Lcom/android/data/sdk/domain/model/DataParamsModel;

.field private d:Lcom/android/data/sdk/Main;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bsgamesdk/android/dc/a;
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/dc/a;->c:Lcom/bsgamesdk/android/dc/a;

    if-nez v0, :cond_17

    const-class v1, Lcom/bsgamesdk/android/dc/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bsgamesdk/android/dc/a;->c:Lcom/bsgamesdk/android/dc/a;

    if-nez v0, :cond_16

    const-class v2, Lcom/bsgamesdk/android/dc/a;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1d

    :try_start_e
    new-instance v0, Lcom/bsgamesdk/android/dc/a;

    invoke-direct {v0}, Lcom/bsgamesdk/android/dc/a;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/dc/a;->c:Lcom/bsgamesdk/android/dc/a;

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1d

    :cond_17
    sget-object v0, Lcom/bsgamesdk/android/dc/a;->c:Lcom/bsgamesdk/android/dc/a;

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private a(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;Z)V
    .registers 7

    :try_start_0
    const-string v0, "onExit"

    invoke-static {p1, v0}, Lcom/bsgamesdk/android/dc/buvid/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_2d

    :goto_5
    :try_start_5
    invoke-static {p1}, Lcom/bsgamesdk/android/dc/buvid/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/bsgamesdk/android/dc/buvid/file/e;->a()Lcom/bsgamesdk/android/dc/buvid/file/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/dc/buvid/file/e;->b()V

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/dc/a;->b(Landroid/app/Activity;)Lcom/android/data/sdk/PreDefined;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/dc/a$2;

    invoke-direct {v1, p0, v0}, Lcom/bsgamesdk/android/dc/a$2;-><init>(Lcom/bsgamesdk/android/dc/a;Lcom/android/data/sdk/PreDefined;)V

    iput-object v1, p0, Lcom/bsgamesdk/android/dc/a;->d:Lcom/android/data/sdk/Main;

    if-eqz p4, :cond_22

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/a;->d:Lcom/android/data/sdk/Main;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/data/sdk/Main;->dCInit(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/a;->d:Lcom/android/data/sdk/Main;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/data/sdk/Main;->dCInitV2(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_21

    :catch_28
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_21

    :catch_2d
    move-exception v0

    goto :goto_5
.end method

.method private b(Landroid/app/Activity;)Lcom/android/data/sdk/PreDefined;
    .registers 3

    new-instance v0, Lcom/bsgamesdk/android/dc/a$1;

    invoke-direct {v0, p0, p1}, Lcom/bsgamesdk/android/dc/a$1;-><init>(Lcom/bsgamesdk/android/dc/a;Landroid/app/Activity;)V

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/bsgamesdk/android/dc/a;->c:Lcom/bsgamesdk/android/dc/a;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/a;->d:Lcom/android/data/sdk/Main;

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/Main;->startHeartBeat(Landroid/app/Activity;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public a(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;Lcom/bsgamesdk/android/dc/b;)V
    .registers 6

    iput-object p4, p0, Lcom/bsgamesdk/android/dc/a;->a:Lcom/bsgamesdk/android/dc/b;

    iput-object p2, p0, Lcom/bsgamesdk/android/dc/a;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bsgamesdk/android/dc/a;->a(Landroid/app/Activity;Lcom/android/data/sdk/domain/model/DataParamsModel;Ljava/lang/String;Z)V

    return-void
.end method

.method public appDestroy(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->t()V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/a;->d:Lcom/android/data/sdk/Main;

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/Main;->appDestroy(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/bsgamesdk/android/dc/a;->b()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public appOffline(Landroid/app/Activity;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/a;->d:Lcom/android/data/sdk/Main;

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/Main;->appOffline(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/api/c;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/api/c;->b(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_14
.end method

.method public appOnline(Landroid/app/Activity;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/a;->d:Lcom/android/data/sdk/Main;

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/Main;->appOnline(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/api/c;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/api/c;->c(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_14
.end method

.method public stop(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->t()V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/a;->d:Lcom/android/data/sdk/Main;

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/Main;->stop(Landroid/app/Activity;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_c
.end method
