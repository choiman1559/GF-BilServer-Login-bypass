.class public Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;,
        Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

.field private static c:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    .registers 3

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v0, :cond_13

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v0, :cond_12

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->a:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/otherid/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApdidToken()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    :cond_18
    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .registers 2

    const-string v0, "APPSecuritySDK-ALIPAYSDK"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "3.4.0.201910161639"

    return-object v0
.end method

.method public declared-synchronized getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_50

    :try_start_7
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/e/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->getSecurityToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v0, 0x1

    :cond_32
    if-nez v0, :cond_44

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_44
    const/4 v0, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4e} :catch_53
    .catchall {:try_start_7 .. :try_end_4e} :catchall_50

    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v1

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_53
    move-exception v0

    goto :goto_4e
.end method

.method public initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/b/a;->a()Lcom/alipay/apmobilesecuritysdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/apmobilesecuritysdk/b/a;->a(I)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/b/a;->a()Lcom/alipay/apmobilesecuritysdk/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/e/d;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/e/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->h()V

    :cond_33
    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/e/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3e
    const-string v0, "utdid"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    const-string v2, ""

    invoke-static {p2, v1, v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    const-string v3, ""

    invoke-static {p2, v2, v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/otherid/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "utdid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appName"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appKeyClient"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appchannel"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rpcVersion"

    const-string v1, "8"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/f/b;->a()Lcom/alipay/apmobilesecuritysdk/f/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;

    invoke-direct {v1, p0, v3, p3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
