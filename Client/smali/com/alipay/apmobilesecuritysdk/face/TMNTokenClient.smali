.class public Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient$InitResultListener;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->a:Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->b:Landroid/content/Context;

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TMNTokenClient initialization error: context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;
    .registers 3

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->a:Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;

    if-nez v0, :cond_13

    const-class v1, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->a:Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;

    if-nez v0, :cond_12

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->a:Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->a:Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public intiToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient$InitResultListener;)V
    .registers 8

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p4, :cond_e

    const-string v0, ""

    const/4 v1, 0x2

    invoke-interface {p4, v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient$InitResultListener;->onResult(Ljava/lang/String;I)V

    :cond_e
    invoke-static {p2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p4, :cond_1c

    const-string v0, ""

    const/4 v1, 0x3

    invoke-interface {p4, v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient$InitResultListener;->onResult(Ljava/lang/String;I)V

    :cond_1c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "utdid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/otherid/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appKeyClient"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appchannel"

    const-string v2, "openapi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rpcVersion"

    const-string v2, "8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/f/b;->a()Lcom/alipay/apmobilesecuritysdk/f/b;

    move-result-object v1

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient$1;

    invoke-direct {v2, p0, v0, p4, p1}, Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient$1;-><init>(Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient;Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/TMNTokenClient$InitResultListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
