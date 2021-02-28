.class public Lcom/alipay/sdk/data/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "virtualImeiAndImsi"

.field private static final b:Ljava/lang/String; = "virtual_imei"

.field private static final c:Ljava/lang/String; = "virtual_imsi"

.field private static volatile d:Lcom/alipay/sdk/data/c;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sdk-and-lite"

    iput-object v0, p0, Lcom/alipay/sdk/data/c;->f:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/app/i;->b()Z

    move-result v1

    if-nez v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/data/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/data/c;->f:Ljava/lang/String;

    :cond_2c
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_31

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_30

    move-result-object v0

    :goto_2f
    return-object v0

    :catch_30
    move-exception v0

    :cond_31
    const-string v0, ""

    goto :goto_2f
.end method

.method static synthetic a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/alipay/sdk/data/c;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/alipay/sdk/data/c;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_27

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "trideskey"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-object p0, Lcom/alipay/sdk/cons/a;->e:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_27

    goto :goto_9

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/alipay/sdk/data/c;
    .registers 2

    const-class v1, Lcom/alipay/sdk/data/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/sdk/data/c;->d:Lcom/alipay/sdk/data/c;

    if-nez v0, :cond_e

    new-instance v0, Lcom/alipay/sdk/data/c;

    invoke-direct {v0}, Lcom/alipay/sdk/data/c;-><init>()V

    sput-object v0, Lcom/alipay/sdk/data/c;->d:Lcom/alipay/sdk/data/c;

    :cond_e
    sget-object v0, Lcom/alipay/sdk/data/c;->d:Lcom/alipay/sdk/data/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    :try_start_2
    invoke-static {p1, p2}, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->GetApdid(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_2e

    move-result-object v0

    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "third"

    const-string v2, "GetApdidNull"

    const-string v3, "apdid == null"

    invoke-static {p0, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apdid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_2e
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const-string v2, "third"

    const-string v3, "GetApdidEx"

    invoke-static {p0, v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    const-string v0, "virtualImeiAndImsi"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "virtual_imei"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-static {v1}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/alipay/sdk/data/c;->g()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "virtual_imei"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3b
    return-object v0

    :cond_3c
    invoke-static {v1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, "-1"

    goto :goto_16
.end method

.method private static c(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/data/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/sdk/data/d;-><init>(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-string v1, ""

    const-wide/16 v2, 0xbb8

    :try_start_12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1a} :catch_1b

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    const-string v2, "third"

    const-string v3, "GetApdidTimeout"

    invoke-static {p0, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1a
.end method

.method public static d()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    const-string v0, "virtualImeiAndImsi"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "virtual_imsi"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {v1}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/alipay/sdk/data/c;->g()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "virtual_imsi"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_49
    return-object v0

    :cond_4a
    const/4 v1, 0x3

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_52
    invoke-static {v1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, "00"

    goto :goto_16
.end method

.method private static e()Ljava/lang/String;
    .registers 1

    const-string v0, "1"

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .registers 1

    const-string v0, "-1;-1"

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/data/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/tid/b;)Ljava/lang/String;
    .registers 21

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/sdk/data/c;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const-string v3, "Msp/15.7.4"

    invoke-static {}, Lcom/alipay/sdk/util/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/sdk/util/n;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/alipay/sdk/util/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/alipay/sdk/util/n;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/alipay/sdk/util/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lcom/alipay/sdk/data/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " ("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/sdk/data/c;->e:Ljava/lang/String;

    :cond_7d
    invoke-static {v1}, Lcom/alipay/sdk/util/a;->b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/alipay/sdk/util/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/sdk/data/c;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/alipay/sdk/data/c;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/alipay/sdk/data/c;->c()Ljava/lang/String;

    move-result-object v9

    if-eqz p2, :cond_a7

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/sdk/tid/b;->b()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alipay/sdk/data/c;->g:Ljava/lang/String;

    :cond_a7
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v11, ";"

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v12, ";"

    const-string v13, " "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/alipay/sdk/sys/b;->d()Z

    move-result v12

    invoke-virtual {v2}, Lcom/alipay/sdk/util/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/sdk/data/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1}, Lcom/alipay/sdk/data/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/sdk/data/c;->e:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/data/c;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alipay/sdk/data/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/sdk/data/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1bf

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "tid"

    invoke-static {v1}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "utdid"

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/sdk/sys/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/data/c;->c(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1bf

    const-string v2, ";"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1bf
    const-string v1, ")"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
