.class public Lcom/android/data/sdk/service/BaseService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/data/sdk/service/BaseService$a;
    }
.end annotation


# static fields
.field private static b:Lcom/android/data/sdk/domain/model/DataUpModel;

.field private static c:J


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Lcom/android/data/sdk/service/BaseService$a;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Lcom/android/data/sdk/PreDefined;

.field private h:Lcom/android/data/sdk/api/a;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_TIME_INTERVAL:J

    sput-wide v0, Lcom/android/data/sdk/service/BaseService;->c:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/data/sdk/service/BaseService$a;

    invoke-direct {v0, p0}, Lcom/android/data/sdk/service/BaseService$a;-><init>(Lcom/android/data/sdk/service/BaseService;)V

    iput-object v0, p0, Lcom/android/data/sdk/service/BaseService;->d:Lcom/android/data/sdk/service/BaseService$a;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/service/BaseService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/data/sdk/service/BaseService;->f:Ljava/util/concurrent/ScheduledFuture;

    iput-boolean v2, p0, Lcom/android/data/sdk/service/BaseService;->i:Z

    iput-boolean v1, p0, Lcom/android/data/sdk/service/BaseService;->j:Z

    iput-boolean v1, p0, Lcom/android/data/sdk/service/BaseService;->k:Z

    iput v1, p0, Lcom/android/data/sdk/service/BaseService;->l:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/data/sdk/service/BaseService;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;I)I
    .registers 2

    iput p1, p0, Lcom/android/data/sdk/service/BaseService;->l:I

    return p1
.end method

.method static synthetic a(J)J
    .registers 2

    sput-wide p0, Lcom/android/data/sdk/service/BaseService;->c:J

    return-wide p0
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;Lcom/android/data/sdk/PreDefined;)Lcom/android/data/sdk/PreDefined;
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService;->g:Lcom/android/data/sdk/PreDefined;

    return-object p1
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;Lcom/android/data/sdk/api/a;)Lcom/android/data/sdk/api/a;
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService;->h:Lcom/android/data/sdk/api/a;

    return-object p1
.end method

.method static synthetic a()Lcom/android/data/sdk/domain/model/DataUpModel;
    .registers 1

    sget-object v0, Lcom/android/data/sdk/service/BaseService;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    return-object v0
.end method

.method static synthetic a(Lcom/android/data/sdk/domain/model/DataUpModel;)Lcom/android/data/sdk/domain/model/DataUpModel;
    .registers 1

    sput-object p0, Lcom/android/data/sdk/service/BaseService;->b:Lcom/android/data/sdk/domain/model/DataUpModel;

    return-object p0
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    iput-object p1, p0, Lcom/android/data/sdk/service/BaseService;->f:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/service/BaseService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/data/sdk/service/BaseService$5;-><init>(Lcom/android/data/sdk/service/BaseService;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/data/sdk/service/BaseService;->g()V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/data/sdk/service/BaseService;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;Lcom/android/data/sdk/domain/model/DataUpModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/data/sdk/service/BaseService;->b(Lcom/android/data/sdk/domain/model/DataUpModel;)V

    return-void
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/data/sdk/service/BaseService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 10

    const-wide/16 v6, 0x3e8

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {p1}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "recEnable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/data/sdk/service/BaseService;->k:Z

    invoke-direct {p0}, Lcom/android/data/sdk/service/BaseService;->c()J

    move-result-wide v2

    const-string v1, "recRate"

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    mul-long/2addr v0, v6

    sput-wide v0, Lcom/android/data/sdk/service/BaseService;->c:J

    invoke-direct {p0}, Lcom/android/data/sdk/service/BaseService;->d()J

    move-result-wide v0

    sget-wide v2, Lcom/android/data/sdk/service/BaseService;->c:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_44

    sput-wide v0, Lcom/android/data/sdk/service/BaseService;->c:J

    :cond_44
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    sget-wide v2, Lcom/android/data/sdk/service/BaseService;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/android/data/sdk/api/c;->a(J)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_4d
.end method

.method static synthetic a(Lcom/android/data/sdk/service/BaseService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/data/sdk/service/BaseService;->j:Z

    return p1
.end method

.method static synthetic b()J
    .registers 2

    sget-wide v0, Lcom/android/data/sdk/service/BaseService;->c:J

    return-wide v0
.end method

.method private b(Lcom/android/data/sdk/domain/model/DataUpModel;)V
    .registers 4

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->h:Lcom/android/data/sdk/api/a;

    new-instance v1, Lcom/android/data/sdk/service/BaseService$1;

    invoke-direct {v1, p0}, Lcom/android/data/sdk/service/BaseService$1;-><init>(Lcom/android/data/sdk/service/BaseService;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/data/sdk/api/a;->a(Landroid/content/Context;Lcom/android/data/sdk/domain/model/DataUpModel;Lcom/android/data/sdk/api/b;)V

    return-void
.end method

.method static synthetic b(Lcom/android/data/sdk/service/BaseService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/data/sdk/service/BaseService;->f()V

    return-void
.end method

.method static synthetic b(Lcom/android/data/sdk/service/BaseService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/data/sdk/service/BaseService;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/android/data/sdk/service/BaseService;)I
    .registers 2

    iget v0, p0, Lcom/android/data/sdk/service/BaseService;->l:I

    return v0
.end method

.method private c()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->g:Lcom/android/data/sdk/PreDefined;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->g:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v0}, Lcom/android/data/sdk/PreDefined;->getIntervalTime()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->DEFAULT_TIME_INTERVAL:J

    :cond_12
    :goto_12
    return-wide v0

    :cond_13
    move-wide v0, v2

    goto :goto_12
.end method

.method private d()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->g:Lcom/android/data/sdk/PreDefined;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->g:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v0}, Lcom/android/data/sdk/PreDefined;->getMinimumIntervalTime()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    sget-wide v0, Lcom/android/data/sdk/constant/ConstantTime;->MINIMUM_TIME_INTERVAL:J

    :cond_12
    :goto_12
    return-wide v0

    :cond_13
    move-wide v0, v2

    goto :goto_12
.end method

.method static synthetic d(Lcom/android/data/sdk/service/BaseService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/data/sdk/service/BaseService;->i:Z

    return v0
.end method

.method private e()V
    .registers 3

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/service/BaseService$2;

    invoke-direct {v1, p0}, Lcom/android/data/sdk/service/BaseService$2;-><init>(Lcom/android/data/sdk/service/BaseService;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/android/data/sdk/service/BaseService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/data/sdk/service/BaseService;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/android/data/sdk/service/BaseService;)Lcom/android/data/sdk/PreDefined;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->g:Lcom/android/data/sdk/PreDefined;

    return-object v0
.end method

.method private f()V
    .registers 3

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/service/BaseService$3;

    invoke-direct {v1, p0}, Lcom/android/data/sdk/service/BaseService$3;-><init>(Lcom/android/data/sdk/service/BaseService;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Lcom/android/data/sdk/service/BaseService;)Lcom/android/data/sdk/api/a;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->h:Lcom/android/data/sdk/api/a;

    return-object v0
.end method

.method private g()V
    .registers 8

    :try_start_0
    new-instance v1, Lcom/android/data/sdk/service/BaseService$4;

    invoke-direct {v1, p0}, Lcom/android/data/sdk/service/BaseService$4;-><init>(Lcom/android/data/sdk/service/BaseService;)V

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/service/BaseService;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printThrowable(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method static synthetic h(Lcom/android/data/sdk/service/BaseService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/data/sdk/service/BaseService;->e()V

    return-void
.end method

.method static synthetic i(Lcom/android/data/sdk/service/BaseService;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->f:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic j(Lcom/android/data/sdk/service/BaseService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/data/sdk/service/BaseService;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic k(Lcom/android/data/sdk/service/BaseService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/data/sdk/service/BaseService;->j:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string v0, "onBind"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/data/sdk/service/BaseService;->i:Z

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->d:Lcom/android/data/sdk/service/BaseService$a;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/data/sdk/service/BaseService;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/data/sdk/service/BaseService;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_19

    :cond_12
    :goto_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/data/sdk/service/BaseService;->i:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_19
    move-exception v0

    goto :goto_12
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    const-string v0, "onUnbind"

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/data/sdk/service/BaseService;->i:Z

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
