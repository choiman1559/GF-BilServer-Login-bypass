.class public Lcom/alipay/security/mobile/module/http/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/http/a;


# static fields
.field private static d:Lcom/alipay/security/mobile/module/http/b;

.field private static e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;


# instance fields
.field private a:Lcom/alipay/android/phone/mrpc/core/w;

.field private b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field private c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/module/http/b;->d:Lcom/alipay/security/mobile/module/http/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->a:Lcom/alipay/android/phone/mrpc/core/w;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/aa;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/aa;-><init>()V

    invoke-virtual {v1, p2}, Lcom/alipay/android/phone/mrpc/core/aa;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/h;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mrpc/core/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->a:Lcom/alipay/android/phone/mrpc/core/w;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->a:Lcom/alipay/android/phone/mrpc/core/w;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/w;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->a:Lcom/alipay/android/phone/mrpc/core/w;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/w;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/b;
    .registers 4

    const-class v1, Lcom/alipay/security/mobile/module/http/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/security/mobile/module/http/b;->d:Lcom/alipay/security/mobile/module/http/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/alipay/security/mobile/module/http/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/security/mobile/module/http/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/security/mobile/module/http/b;->d:Lcom/alipay/security/mobile/module/http/b;

    :cond_e
    sget-object v0, Lcom/alipay/security/mobile/module/http/b;->d:Lcom/alipay/security/mobile/module/http/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/security/mobile/module/http/b;)Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    return-object v0
.end method

.method static synthetic a()Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .registers 1

    sget-object v0, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .registers 1

    sput-object p0, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/b;->c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    if-eqz v1, :cond_28

    sput-object v0, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/module/http/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/security/mobile/module/http/c;-><init>(Lcom/alipay/security/mobile/module/http/b;Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_1a
    sget-object v1, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    if-nez v1, :cond_28

    if-ltz v0, :cond_28

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, -0x32

    goto :goto_1a

    :cond_28
    sget-object v0, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return v1

    :cond_8
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;->logCollect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_30

    move-result-object v0

    :goto_17
    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2e
    move v1, v0

    goto :goto_7

    :catch_30
    move-exception v2

    goto :goto_17

    :cond_32
    move v0, v1

    goto :goto_2e
.end method
