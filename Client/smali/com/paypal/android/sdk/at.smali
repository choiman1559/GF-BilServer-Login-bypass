.class public Lcom/paypal/android/sdk/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static a:Lcom/paypal/android/sdk/bb;

.field private static final b:Ljava/lang/String;

.field private static w:Lcom/paypal/android/sdk/ar;

.field private static final x:Ljava/lang/Object;

.field private static y:Lcom/paypal/android/sdk/at;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Lcom/paypal/android/sdk/ap;

.field private l:Lcom/paypal/android/sdk/as;

.field private m:Lcom/paypal/android/sdk/as;

.field private n:Ljava/util/Map;

.field private o:Landroid/location/Location;

.field private p:Ljava/util/Timer;

.field private q:Landroid/os/Handler;

.field private r:Lcom/paypal/android/sdk/ax;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/ar;

    invoke-direct {v0}, Lcom/paypal/android/sdk/ar;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->w:Lcom/paypal/android/sdk/ar;

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/sdk/at;->a:Lcom/paypal/android/sdk/bb;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->x:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/at;)I
    .registers 3

    iget v0, p0, Lcom/paypal/android/sdk/at;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/at;->h:I

    return v0
.end method

.method private static a(Landroid/content/Context;)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    goto :goto_4

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_34} :catch_36

    move-result-wide v0

    goto :goto_4

    :catch_36
    move-exception v2

    goto :goto_4
.end method

.method public static a()Lcom/paypal/android/sdk/at;
    .registers 2

    sget-object v1, Lcom/paypal/android/sdk/at;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/paypal/android/sdk/at;->y:Lcom/paypal/android/sdk/at;

    if-nez v0, :cond_e

    new-instance v0, Lcom/paypal/android/sdk/at;

    invoke-direct {v0}, Lcom/paypal/android/sdk/at;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->y:Lcom/paypal/android/sdk/at;

    :cond_e
    sget-object v0, Lcom/paypal/android/sdk/at;->y:Lcom/paypal/android/sdk/at;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "Known SecurityException on some devices"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->n:Ljava/util/Map;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-object p1

    :cond_12
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    :cond_1e
    invoke-static {}, Lcom/paypal/android/sdk/at;->i()Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/at;->e()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->j()Ljava/lang/String;

    move-object p1, v0

    goto :goto_11

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "PRD"

    const-string v3, "Using custom pairing id"

    invoke-static {v1, v2, v3}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method private static a(Landroid/net/wifi/WifiManager;)Ljava/util/ArrayList;
    .registers 9

    const/4 v0, 0x0

    const/4 v3, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    const/high16 v1, -0x80000000

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v0, 0x0

    move v2, v3

    move v4, v1

    move v1, v0

    :goto_2c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_50

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v4, v0, :cond_4c

    move v2, v1

    move v4, v0

    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    :cond_50
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_60

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    move-object v0, v5

    goto :goto_13
.end method

.method private a(Lcom/paypal/android/sdk/ap;)V
    .registers 14

    const-wide/16 v10, 0x3e8

    iput-object p1, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v1, "Configuration loaded"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL:     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->p:Ljava/util/Timer;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/ap;->e()J

    move-result-wide v4

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending logRiskMetadata every "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sessionTimeout set to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "compTimeout set to    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->e:J

    mul-long v0, v4, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->f:J

    mul-long v0, v2, v10

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/aw;->a(J)V

    return-void
.end method

.method private a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->n:Ljava/util/Map;

    iput-object v0, p1, Lcom/paypal/android/sdk/as;->ag:Ljava/util/Map;

    if-eqz p2, :cond_a2

    invoke-virtual {p1, p2}, Lcom/paypal/android/sdk/as;->a(Lcom/paypal/android/sdk/as;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "appGuid"

    iget-object v5, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "libraryVersion"

    invoke-static {}, Lcom/paypal/android/sdk/at;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "additionalData"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Dyson Risk Data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->h()Z

    move-result v5

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new LogRiskMetadataRequest to: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "endpointIsStage: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " (using SSL: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_a8

    move v0, v1

    :goto_7f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/bd;

    iget-object v6, p0, Lcom/paypal/android/sdk/at;->q:Landroid/os/Handler;

    if-nez v5, :cond_aa

    :goto_96
    invoke-direct {v0, v4, v3, v6, v1}, Lcom/paypal/android/sdk/bd;-><init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Z)V

    invoke-static {}, Lcom/paypal/android/sdk/bh;->a()Lcom/paypal/android/sdk/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bh;->a(Lcom/paypal/android/sdk/bg;)V

    goto/16 :goto_4

    :cond_a2
    invoke-virtual {p1}, Lcom/paypal/android/sdk/as;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_f

    :cond_a8
    move v0, v2

    goto :goto_7f

    :cond_aa
    move v1, v2

    goto :goto_96
.end method

.method static synthetic b(Lcom/paypal/android/sdk/at;)I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/at;->h:I

    return v0
.end method

.method private static b(Landroid/content/Context;)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    goto :goto_4

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_34} :catch_36

    move-result-wide v0

    goto :goto_4

    :catch_36
    move-exception v2

    goto :goto_4
.end method

.method static synthetic c(Lcom/paypal/android/sdk/at;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Dyson/%S (%S %S)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "3.5.7.release"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Android"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/paypal/android/sdk/at;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/at;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bm;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "https://b.stats.paypal.com/counter.cgi?p="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->r:Lcom/paypal/android/sdk/ax;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->r:Lcom/paypal/android/sdk/ax;

    sget-object v1, Lcom/paypal/android/sdk/ax;->a:Lcom/paypal/android/sdk/ax;

    if-ne v0, v1, :cond_14

    :cond_11
    const-string v0, "Beacon not recognize host app"

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->r:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ax;->a()I

    move-result v1

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    if-nez v0, :cond_21

    const-string v0, "Beacon pairing id empty"

    goto :goto_13

    :cond_21
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/paypal/android/sdk/bm;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    :try_start_38
    const-string v0, "emptyIp"

    invoke-static {v0}, Lcom/paypal/android/sdk/ar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_47} :catch_99

    :goto_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&a="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beacon Request URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/az;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/at;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/ao;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/at;->q:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/az;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ao;Landroid/os/Handler;)V

    invoke-static {}, Lcom/paypal/android/sdk/bh;->a()Lcom/paypal/android/sdk/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bh;->a(Lcom/paypal/android/sdk/bg;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :catch_99
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v3, "error reading property file"

    invoke-static {v2, v3, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_a2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->p:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->p:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_9
    return-void
.end method

.method private l()Lcom/paypal/android/sdk/as;
    .registers 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    :goto_7
    return-object v2

    :cond_8
    new-instance v5, Lcom/paypal/android/sdk/as;

    invoke-direct {v5}, Lcom/paypal/android/sdk/as;-><init>()V

    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->i()Lcom/paypal/android/sdk/bk;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v9, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v8, v9}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_497

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    move-object v10, v8

    :goto_4c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v9, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v8, v9}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_49b

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    move-object v9, v4

    :goto_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v8}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v8}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49f

    :cond_75
    const/4 v4, 0x1

    move v8, v4

    :goto_77
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v12, "android.permission.READ_PHONE_STATE"

    invoke-static {v4, v12}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    packed-switch v4, :pswitch_data_a70

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "unknown ("

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ")"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;

    :goto_a8
    const-string v4, "3.5.7.release"

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-nez v4, :cond_4f4

    const/4 v4, 0x0

    :goto_b9
    iput-object v4, v5, Lcom/paypal/android/sdk/as;->i:Ljava/lang/String;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_bb} :catch_4a9

    :try_start_bb
    sget-object v4, Lcom/paypal/android/sdk/bl;->u:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-nez v4, :cond_c6

    const/4 v4, 0x0

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c6} :catch_4fe

    :cond_c6
    :goto_c6
    :try_start_c6
    sget-object v4, Lcom/paypal/android/sdk/bl;->a:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_d4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->a:Ljava/lang/String;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d4} :catch_517

    :cond_d4
    :goto_d4
    :try_start_d4
    sget-object v4, Lcom/paypal/android/sdk/bl;->C:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/paypal/android/sdk/as;->H:J
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_e2} :catch_530

    :cond_e2
    :goto_e2
    :try_start_e2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v14, v5, Lcom/paypal/android/sdk/as;->H:J

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->ad:Ljava/lang/String;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ff} :catch_4a9

    :try_start_ff
    sget-object v4, Lcom/paypal/android/sdk/bl;->M:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_10d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->T:Ljava/lang/String;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10d} :catch_549

    :cond_10d
    :goto_10d
    :try_start_10d
    sget-object v4, Lcom/paypal/android/sdk/bl;->v:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-nez v4, :cond_118

    const/4 v4, 0x0

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_118} :catch_562

    :cond_118
    :goto_118
    :try_start_118
    sget-object v4, Lcom/paypal/android/sdk/bl;->K:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_12e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->r:Lcom/paypal/android/sdk/ax;

    if-nez v4, :cond_57b

    sget-object v4, Lcom/paypal/android/sdk/ax;->a:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/ax;->a()I

    move-result v4

    iput v4, v5, Lcom/paypal/android/sdk/as;->P:I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_12e} :catch_587

    :cond_12e
    :goto_12e
    :try_start_12e
    sget-object v4, Lcom/paypal/android/sdk/bl;->L:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_13c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->s:Ljava/lang/String;

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->Q:Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_13c} :catch_5a0

    :cond_13c
    :goto_13c
    :try_start_13c
    sget-object v4, Lcom/paypal/android/sdk/bl;->t:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_14a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->v:Ljava/lang/String;

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->X:Ljava/lang/String;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_14a} :catch_5b9

    :cond_14a
    :goto_14a
    :try_start_14a
    sget-object v4, Lcom/paypal/android/sdk/bl;->Q:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_162

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v14, "android_id"

    invoke-static {v4, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->W:Ljava/lang/String;
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_162} :catch_5d2

    :cond_162
    :goto_162
    :try_start_162
    sget-object v4, Lcom/paypal/android/sdk/bl;->k:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_170

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/paypal/android/sdk/as;->n:J
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_170} :catch_5eb

    :cond_170
    :goto_170
    :try_start_170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/ao;
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_177} :catch_4a9

    move-result-object v14

    :try_start_178
    sget-object v4, Lcom/paypal/android/sdk/bl;->b:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_186

    invoke-virtual {v14}, Lcom/paypal/android/sdk/ao;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->b:Ljava/lang/String;
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_186} :catch_604

    :cond_186
    :goto_186
    :try_start_186
    sget-object v4, Lcom/paypal/android/sdk/bl;->c:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_194

    invoke-virtual {v14}, Lcom/paypal/android/sdk/ao;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->c:Ljava/lang/String;
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_194} :catch_61f

    :cond_194
    :goto_194
    :try_start_194
    sget-object v4, Lcom/paypal/android/sdk/bl;->d:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    if-nez v6, :cond_638

    const/4 v4, -0x1

    :goto_19f
    iput v4, v5, Lcom/paypal/android/sdk/as;->d:I
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1a1} :catch_63e

    :cond_1a1
    :goto_1a1
    :try_start_1a1
    sget-object v4, Lcom/paypal/android/sdk/bl;->G:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_1ae

    if-nez v6, :cond_657

    const/4 v4, -0x1

    :goto_1ac
    iput v4, v5, Lcom/paypal/android/sdk/as;->N:I
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1ae} :catch_65d

    :cond_1ae
    :goto_1ae
    :try_start_1ae
    sget-object v4, Lcom/paypal/android/sdk/bl;->H:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_1bb

    if-nez v6, :cond_676

    const/4 v4, -0x1

    :goto_1b9
    iput v4, v5, Lcom/paypal/android/sdk/as;->M:I
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1bb} :catch_67c

    :cond_1bb
    :goto_1bb
    :try_start_1bb
    sget-object v4, Lcom/paypal/android/sdk/bl;->e:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_1c8

    if-nez v10, :cond_695

    const/4 v4, 0x0

    :goto_1c6
    iput-object v4, v5, Lcom/paypal/android/sdk/as;->e:Ljava/lang/String;
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c8} :catch_69b

    :cond_1c8
    :goto_1c8
    :try_start_1c8
    sget-object v4, Lcom/paypal/android/sdk/bl;->Y:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v4}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v4

    if-eqz v4, :cond_1d8

    if-eqz v8, :cond_6b4

    invoke-static {v3}, Lcom/paypal/android/sdk/at;->a(Landroid/net/wifi/WifiManager;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1d6
    iput-object v3, v5, Lcom/paypal/android/sdk/as;->af:Ljava/util/List;
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d8} :catch_6b7

    :cond_1d8
    :goto_1d8
    :try_start_1d8
    sget-object v3, Lcom/paypal/android/sdk/bl;->f:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_1e5

    if-nez v7, :cond_6d0

    const/4 v3, -0x1

    :goto_1e3
    iput v3, v5, Lcom/paypal/android/sdk/as;->f:I
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1e5} :catch_6d6

    :cond_1e5
    :goto_1e5
    :try_start_1e5
    sget-object v3, Lcom/paypal/android/sdk/bl;->F:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_1f3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->O:Ljava/lang/String;
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1f3} :catch_6ef

    :cond_1f3
    :goto_1f3
    :try_start_1f3
    sget-object v3, Lcom/paypal/android/sdk/bl;->g:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_200

    if-nez v9, :cond_708

    const/4 v3, 0x0

    :goto_1fe
    iput-object v3, v5, Lcom/paypal/android/sdk/as;->j:Ljava/lang/String;
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_200} :catch_70e

    :cond_200
    :goto_200
    :try_start_200
    sget-object v3, Lcom/paypal/android/sdk/bl;->h:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_210

    if-eqz v12, :cond_727

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    :goto_20e
    iput-object v3, v5, Lcom/paypal/android/sdk/as;->k:Ljava/lang/String;
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_210} :catch_72a

    :cond_210
    :goto_210
    :try_start_210
    sget-object v3, Lcom/paypal/android/sdk/bl;->i:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_21c

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->l:Ljava/lang/String;
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_21c} :catch_743

    :cond_21c
    :goto_21c
    :try_start_21c
    sget-object v3, Lcom/paypal/android/sdk/bl;->j:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_228

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->m:Ljava/lang/String;
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_228} :catch_75c

    :cond_228
    :goto_228
    :try_start_228
    sget-object v3, Lcom/paypal/android/sdk/bl;->l:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_236

    invoke-static {}, Lcom/paypal/android/sdk/bm;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->o:Ljava/lang/String;
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_236} :catch_775

    :cond_236
    :goto_236
    :try_start_236
    sget-object v3, Lcom/paypal/android/sdk/bl;->U:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_245

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/paypal/android/sdk/bm;->a(Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_245} :catch_78e

    :cond_245
    :goto_245
    :try_start_245
    sget-object v3, Lcom/paypal/android/sdk/bl;->n:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_253

    invoke-static {}, Lcom/paypal/android/sdk/bm;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->r:Ljava/lang/String;
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_253} :catch_7a7

    :cond_253
    :goto_253
    :try_start_253
    sget-object v3, Lcom/paypal/android/sdk/bl;->o:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_265

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->s:Ljava/lang/String;
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_265} :catch_7c0

    :cond_265
    :goto_265
    :try_start_265
    sget-object v3, Lcom/paypal/android/sdk/bl;->p:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_277

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->t:Ljava/lang/String;
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_277} :catch_7d9

    :cond_277
    :goto_277
    :try_start_277
    sget-object v3, Lcom/paypal/android/sdk/bl;->q:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_288

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/at;->o:Landroid/location/Location;

    if-nez v3, :cond_7f2

    const/4 v3, 0x0

    :goto_286
    iput-object v3, v5, Lcom/paypal/android/sdk/as;->u:Landroid/location/Location;
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_288} :catch_7fd

    :cond_288
    :goto_288
    :try_start_288
    sget-object v3, Lcom/paypal/android/sdk/bl;->r:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_295

    if-nez v7, :cond_816

    const/4 v3, -0x1

    :goto_293
    iput v3, v5, Lcom/paypal/android/sdk/as;->v:I
    :try_end_295
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_295} :catch_81c

    :cond_295
    :goto_295
    :try_start_295
    sget-object v3, Lcom/paypal/android/sdk/bl;->s:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_2a2

    if-nez v10, :cond_835

    const/4 v3, 0x0

    :goto_2a0
    iput-object v3, v5, Lcom/paypal/android/sdk/as;->w:Ljava/lang/String;
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_2a2} :catch_83b

    :cond_2a2
    :goto_2a2
    :try_start_2a2
    sget-object v3, Lcom/paypal/android/sdk/bl;->u:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->y:Ljava/lang/String;
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_2ae} :catch_854

    :cond_2ae
    :goto_2ae
    :try_start_2ae
    sget-object v3, Lcom/paypal/android/sdk/bl;->w:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_2bc

    invoke-static {}, Lcom/paypal/android/sdk/aw;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2bc} :catch_86d

    :cond_2bc
    :goto_2bc
    :try_start_2bc
    sget-object v3, Lcom/paypal/android/sdk/bl;->x:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_2d3

    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->B:Ljava/lang/Boolean;
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2d3} :catch_886

    :cond_2d3
    :goto_2d3
    :try_start_2d3
    sget-object v3, Lcom/paypal/android/sdk/bl;->y:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_2e1

    invoke-static {v2}, Lcom/paypal/android/sdk/at;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->C:Ljava/lang/String;
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_2e1} :catch_89f

    :cond_2e1
    :goto_2e1
    :try_start_2e1
    sget-object v3, Lcom/paypal/android/sdk/bl;->P:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_2f1

    if-eqz v12, :cond_8b8

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    :goto_2ef
    iput-object v3, v5, Lcom/paypal/android/sdk/as;->D:Ljava/lang/String;

    :cond_2f1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_2fb

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_2fb} :catch_8bb

    :cond_2fb
    :goto_2fb
    :try_start_2fb
    sget-object v3, Lcom/paypal/android/sdk/bl;->z:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_317

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v5, Lcom/paypal/android/sdk/as;->E:Ljava/lang/Boolean;
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_2fb .. :try_end_317} :catch_8d4

    :cond_317
    :goto_317
    :try_start_317
    sget-object v3, Lcom/paypal/android/sdk/bl;->A:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_324

    if-nez v10, :cond_8ed

    const/4 v3, 0x0

    :goto_322
    iput-object v3, v5, Lcom/paypal/android/sdk/as;->F:Ljava/lang/String;
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_317 .. :try_end_324} :catch_8f3

    :cond_324
    :goto_324
    :try_start_324
    sget-object v3, Lcom/paypal/android/sdk/bl;->B:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v3}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v3

    if-eqz v3, :cond_334

    if-eqz v12, :cond_90c

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    :goto_332
    iput-object v2, v5, Lcom/paypal/android/sdk/as;->G:Ljava/lang/String;
    :try_end_334
    .catch Ljava/lang/Exception; {:try_start_324 .. :try_end_334} :catch_90f

    :cond_334
    :goto_334
    :try_start_334
    sget-object v2, Lcom/paypal/android/sdk/bl;->D:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_342

    invoke-static {}, Lcom/paypal/android/sdk/bm;->c()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/paypal/android/sdk/as;->I:J
    :try_end_342
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_342} :catch_928

    :cond_342
    :goto_342
    :try_start_342
    sget-object v2, Lcom/paypal/android/sdk/bl;->E:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_35f

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    const/4 v4, 0x1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3, v4, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->J:Ljava/lang/String;
    :try_end_35f
    .catch Ljava/lang/Exception; {:try_start_342 .. :try_end_35f} :catch_941

    :cond_35f
    :goto_35f
    :try_start_35f
    sget-object v2, Lcom/paypal/android/sdk/bl;->V:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_375

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->K:Ljava/lang/Boolean;
    :try_end_375
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_375} :catch_95a

    :cond_375
    :goto_375
    :try_start_375
    sget-object v2, Lcom/paypal/android/sdk/bl;->W:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_38f

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->L:Ljava/lang/Integer;
    :try_end_38f
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_38f} :catch_973

    :cond_38f
    :goto_38f
    :try_start_38f
    sget-object v2, Lcom/paypal/android/sdk/bl;->I:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_3a1

    invoke-static {}, Lcom/paypal/android/sdk/d;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->R:Ljava/lang/Boolean;
    :try_end_3a1
    .catch Ljava/lang/Exception; {:try_start_38f .. :try_end_3a1} :catch_98c

    :cond_3a1
    :goto_3a1
    :try_start_3a1
    sget-object v2, Lcom/paypal/android/sdk/bl;->J:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_3b3

    invoke-static {}, Lcom/paypal/android/sdk/ay;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->S:Ljava/lang/Boolean;
    :try_end_3b3
    .catch Ljava/lang/Exception; {:try_start_3a1 .. :try_end_3b3} :catch_9a5

    :cond_3b3
    :goto_3b3
    :try_start_3b3
    sget-object v2, Lcom/paypal/android/sdk/bl;->m:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_40f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-eqz v2, :cond_406

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->f()Ljava/util/List;
    :try_end_3cd
    .catch Ljava/lang/Exception; {:try_start_3b3 .. :try_end_3cd} :catch_9c1

    move-result-object v2

    :try_start_3ce
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d2
    :goto_3d2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_406

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bm;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3d2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3fc
    .catch Ljava/lang/Exception; {:try_start_3ce .. :try_end_3fc} :catch_3fd

    goto :goto_3d2

    :catch_3fd
    move-exception v2

    :try_start_3fe
    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v4, "knownApps error"

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_406
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9be

    const/4 v2, 0x0

    :goto_40d
    iput-object v2, v5, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;
    :try_end_40f
    .catch Ljava/lang/Exception; {:try_start_3fe .. :try_end_40f} :catch_9c1

    :cond_40f
    :goto_40f
    :try_start_40f
    sget-object v2, Lcom/paypal/android/sdk/bl;->N:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_421

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/paypal/android/sdk/at;->a(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/paypal/android/sdk/as;->U:J
    :try_end_421
    .catch Ljava/lang/Exception; {:try_start_40f .. :try_end_421} :catch_9da

    :cond_421
    :goto_421
    :try_start_421
    sget-object v2, Lcom/paypal/android/sdk/bl;->O:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_433

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/paypal/android/sdk/at;->b(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/paypal/android/sdk/as;->V:J
    :try_end_433
    .catch Ljava/lang/Exception; {:try_start_421 .. :try_end_433} :catch_9f3

    :cond_433
    :goto_433
    :try_start_433
    sget-object v2, Lcom/paypal/android/sdk/bl;->R:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_445

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/paypal/android/sdk/bm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->Z:Ljava/lang/String;
    :try_end_445
    .catch Ljava/lang/Exception; {:try_start_433 .. :try_end_445} :catch_a0c

    :cond_445
    :goto_445
    :try_start_445
    sget-object v2, Lcom/paypal/android/sdk/bl;->S:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_453

    invoke-static {}, Lcom/paypal/android/sdk/bm;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->ab:Ljava/lang/String;
    :try_end_453
    .catch Ljava/lang/Exception; {:try_start_445 .. :try_end_453} :catch_a25

    :cond_453
    :goto_453
    :try_start_453
    sget-object v2, Lcom/paypal/android/sdk/bl;->T:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_461

    invoke-static {}, Lcom/paypal/android/sdk/bm;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->aa:Ljava/lang/String;
    :try_end_461
    .catch Ljava/lang/Exception; {:try_start_453 .. :try_end_461} :catch_a3e

    :cond_461
    :goto_461
    :try_start_461
    sget-object v2, Lcom/paypal/android/sdk/bl;->X:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bk;->a(Lcom/paypal/android/sdk/bl;)Z

    move-result v2

    if-eqz v2, :cond_484

    iget v2, v5, Lcom/paypal/android/sdk/as;->P:I

    sget-object v3, Lcom/paypal/android/sdk/ax;->b:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ax;->a()I

    move-result v3

    if-ne v2, v3, :cond_484

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/paypal/android/sdk/bm;->c(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/paypal/android/sdk/bm;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->ac:Ljava/lang/String;
    :try_end_484
    .catch Ljava/lang/Exception; {:try_start_461 .. :try_end_484} :catch_a57

    :cond_484
    :goto_484
    :try_start_484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->n:Ljava/util/Map;

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->ag:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/sdk/bm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/paypal/android/sdk/as;->ae:Ljava/lang/String;

    :goto_494
    move-object v2, v5

    goto/16 :goto_7

    :cond_497
    const/4 v8, 0x0

    move-object v10, v8

    goto/16 :goto_4c

    :cond_49b
    const/4 v4, 0x0

    move-object v9, v4

    goto/16 :goto_5d

    :cond_49f
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_77

    :pswitch_4a3
    const-string v4, "none"

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;
    :try_end_4a7
    .catch Ljava/lang/Exception; {:try_start_484 .. :try_end_4a7} :catch_4a9

    goto/16 :goto_a8

    :catch_4a9
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v4, "Exception Thrown in During Collection"

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_494

    :pswitch_4b2
    :try_start_4b2
    const-string v4, "gsm"

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;
    :try_end_4b6
    .catch Ljava/lang/Exception; {:try_start_4b2 .. :try_end_4b6} :catch_4a9

    if-eqz v8, :cond_4c7

    :try_start_4b8
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    const-class v14, Landroid/telephony/gsm/GsmCellLocation;

    invoke-static {v4, v14}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_4c4
    .catch Ljava/lang/SecurityException; {:try_start_4b8 .. :try_end_4c4} :catch_4c9
    .catch Ljava/lang/Exception; {:try_start_4b8 .. :try_end_4c4} :catch_4a9

    :goto_4c4
    move-object v7, v4

    goto/16 :goto_a8

    :cond_4c7
    const/4 v4, 0x0

    goto :goto_4c4

    :catch_4c9
    move-exception v4

    :try_start_4ca
    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v15, "Known SecurityException on some devices: "

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a8

    :pswitch_4d3
    const-string v4, "cdma"

    iput-object v4, v5, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;
    :try_end_4d7
    .catch Ljava/lang/Exception; {:try_start_4ca .. :try_end_4d7} :catch_4a9

    if-eqz v8, :cond_4e8

    :try_start_4d9
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    const-class v14, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-static {v4, v14}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;
    :try_end_4e5
    .catch Ljava/lang/SecurityException; {:try_start_4d9 .. :try_end_4e5} :catch_4ea
    .catch Ljava/lang/Exception; {:try_start_4d9 .. :try_end_4e5} :catch_4a9

    :goto_4e5
    move-object v6, v4

    goto/16 :goto_a8

    :cond_4e8
    const/4 v4, 0x0

    goto :goto_4e5

    :catch_4ea
    move-exception v4

    :try_start_4eb
    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v15, "Known SecurityException on some devices: "

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a8

    :cond_4f4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/ap;->b()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b9

    :catch_4fe
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->u:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c6

    :catch_517
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->a:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d4

    :catch_530
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->C:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e2

    :catch_549
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->M:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10d

    :catch_562
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->v:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_579
    .catch Ljava/lang/Exception; {:try_start_4eb .. :try_end_579} :catch_4a9

    goto/16 :goto_118

    :cond_57b
    :try_start_57b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->r:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/ax;->a()I

    move-result v4

    iput v4, v5, Lcom/paypal/android/sdk/as;->P:I
    :try_end_585
    .catch Ljava/lang/Exception; {:try_start_57b .. :try_end_585} :catch_587

    goto/16 :goto_12e

    :catch_587
    move-exception v4

    :try_start_588
    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->K:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12e

    :catch_5a0
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->L:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13c

    :catch_5b9
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->t:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14a

    :catch_5d2
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->Q:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_162

    :catch_5eb
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->k:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_170

    :catch_604
    move-exception v4

    sget-object v15, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Exception Thrown in "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/paypal/android/sdk/bl;->b:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_186

    :catch_61f
    move-exception v4

    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->c:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_636
    .catch Ljava/lang/Exception; {:try_start_588 .. :try_end_636} :catch_4a9

    goto/16 :goto_194

    :cond_638
    :try_start_638
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I
    :try_end_63b
    .catch Ljava/lang/Exception; {:try_start_638 .. :try_end_63b} :catch_63e

    move-result v4

    goto/16 :goto_19f

    :catch_63e
    move-exception v4

    :try_start_63f
    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->d:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_655
    .catch Ljava/lang/Exception; {:try_start_63f .. :try_end_655} :catch_4a9

    goto/16 :goto_1a1

    :cond_657
    :try_start_657
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_65a
    .catch Ljava/lang/Exception; {:try_start_657 .. :try_end_65a} :catch_65d

    move-result v4

    goto/16 :goto_1ac

    :catch_65d
    move-exception v4

    :try_start_65e
    sget-object v14, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception Thrown in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/paypal/android/sdk/bl;->G:Lcom/paypal/android/sdk/bl;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_674
    .catch Ljava/lang/Exception; {:try_start_65e .. :try_end_674} :catch_4a9

    goto/16 :goto_1ae

    :cond_676
    :try_start_676
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I
    :try_end_679
    .catch Ljava/lang/Exception; {:try_start_676 .. :try_end_679} :catch_67c

    move-result v4

    goto/16 :goto_1b9

    :catch_67c
    move-exception v4

    :try_start_67d
    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Exception Thrown in "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/paypal/android/sdk/bl;->H:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_693
    .catch Ljava/lang/Exception; {:try_start_67d .. :try_end_693} :catch_4a9

    goto/16 :goto_1bb

    :cond_695
    :try_start_695
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_698
    .catch Ljava/lang/Exception; {:try_start_695 .. :try_end_698} :catch_69b

    move-result-object v4

    goto/16 :goto_1c6

    :catch_69b
    move-exception v4

    :try_start_69c
    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Exception Thrown in "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/paypal/android/sdk/bl;->e:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c8

    :cond_6b4
    const/4 v3, 0x0

    goto/16 :goto_1d6

    :catch_6b7
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->Y:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6ce
    .catch Ljava/lang/Exception; {:try_start_69c .. :try_end_6ce} :catch_4a9

    goto/16 :goto_1d8

    :cond_6d0
    :try_start_6d0
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_6d3
    .catch Ljava/lang/Exception; {:try_start_6d0 .. :try_end_6d3} :catch_6d6

    move-result v3

    goto/16 :goto_1e3

    :catch_6d6
    move-exception v3

    :try_start_6d7
    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->f:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e5

    :catch_6ef
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->F:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_706
    .catch Ljava/lang/Exception; {:try_start_6d7 .. :try_end_706} :catch_4a9

    goto/16 :goto_1f3

    :cond_708
    :try_start_708
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_70b
    .catch Ljava/lang/Exception; {:try_start_708 .. :try_end_70b} :catch_70e

    move-result-object v3

    goto/16 :goto_1fe

    :catch_70e
    move-exception v3

    :try_start_70f
    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->g:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_200

    :cond_727
    const/4 v3, 0x0

    goto/16 :goto_20e

    :catch_72a
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->h:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_210

    :catch_743
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->i:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21c

    :catch_75c
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->j:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_228

    :catch_775
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->l:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_236

    :catch_78e
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->U:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_245

    :catch_7a7
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->n:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_253

    :catch_7c0
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->o:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_265

    :catch_7d9
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->p:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7f0
    .catch Ljava/lang/Exception; {:try_start_70f .. :try_end_7f0} :catch_4a9

    goto/16 :goto_277

    :cond_7f2
    :try_start_7f2
    new-instance v3, Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/at;->o:Landroid/location/Location;

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_7fb
    .catch Ljava/lang/Exception; {:try_start_7f2 .. :try_end_7fb} :catch_7fd

    goto/16 :goto_286

    :catch_7fd
    move-exception v3

    :try_start_7fe
    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception Thrown in "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/paypal/android/sdk/bl;->q:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_814
    .catch Ljava/lang/Exception; {:try_start_7fe .. :try_end_814} :catch_4a9

    goto/16 :goto_288

    :cond_816
    :try_start_816
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_819
    .catch Ljava/lang/Exception; {:try_start_816 .. :try_end_819} :catch_81c

    move-result v3

    goto/16 :goto_293

    :catch_81c
    move-exception v3

    :try_start_81d
    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->r:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_833
    .catch Ljava/lang/Exception; {:try_start_81d .. :try_end_833} :catch_4a9

    goto/16 :goto_295

    :cond_835
    :try_start_835
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_838
    .catch Ljava/lang/Exception; {:try_start_835 .. :try_end_838} :catch_83b

    move-result-object v3

    goto/16 :goto_2a0

    :catch_83b
    move-exception v3

    :try_start_83c
    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->s:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a2

    :catch_854
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->u:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2ae

    :catch_86d
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->w:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2bc

    :catch_886
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->x:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d3

    :catch_89f
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->y:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e1

    :cond_8b8
    const/4 v3, 0x0

    goto/16 :goto_2ef

    :catch_8bb
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->P:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2fb

    :catch_8d4
    move-exception v3

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->z:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8eb
    .catch Ljava/lang/Exception; {:try_start_83c .. :try_end_8eb} :catch_4a9

    goto/16 :goto_317

    :cond_8ed
    :try_start_8ed
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_8f0
    .catch Ljava/lang/Exception; {:try_start_8ed .. :try_end_8f0} :catch_8f3

    move-result-object v3

    goto/16 :goto_322

    :catch_8f3
    move-exception v3

    :try_start_8f4
    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception Thrown in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/bl;->A:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_324

    :cond_90c
    const/4 v2, 0x0

    goto/16 :goto_332

    :catch_90f
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->B:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_334

    :catch_928
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->D:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_342

    :catch_941
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->E:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35f

    :catch_95a
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->V:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_375

    :catch_973
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->W:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38f

    :catch_98c
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->I:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a1

    :catch_9a5
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->J:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b3

    :cond_9be
    move-object v2, v3

    goto/16 :goto_40d

    :catch_9c1
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->m:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40f

    :catch_9da
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->N:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_421

    :catch_9f3
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->O:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_433

    :catch_a0c
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->R:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_445

    :catch_a25
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->S:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_453

    :catch_a3e
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->T:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_461

    :catch_a57
    move-exception v2

    sget-object v3, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception Thrown in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/bl;->X:Lcom/paypal/android/sdk/bl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a6e
    .catch Ljava/lang/Exception; {:try_start_8f4 .. :try_end_a6e} :catch_4a9

    goto/16 :goto_484

    :pswitch_data_a70
    .packed-switch 0x0
        :pswitch_4a3
        :pswitch_4b2
        :pswitch_4d3
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/ax;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 15

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v0, "RISK_MANAGER_CONF_URL"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bm;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "RISK_MANAGER_PAIRING_ID"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bm;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "RISK_MANAGER_NOTIF_TOKEN"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bm;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->v:Ljava/lang/String;

    const-class v0, Lcom/paypal/android/sdk/bb;

    const-string v3, "RISK_MANAGER_NETWORK_ADAPTER"

    new-instance v4, Lcom/paypal/android/sdk/be;

    invoke-direct {v4}, Lcom/paypal/android/sdk/be;-><init>()V

    invoke-static {p5, v0, v3, v4}, Lcom/paypal/android/sdk/bm;->a(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/bb;

    sput-object v0, Lcom/paypal/android/sdk/at;->a:Lcom/paypal/android/sdk/bb;

    const-string v0, "RISK_MANAGER_IS_DISABLE_REMOTE_CONFIG"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p5, v0, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v7

    iput-boolean v6, p0, Lcom/paypal/android/sdk/at;->u:Z

    iput-object p1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/paypal/android/sdk/bm;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    if-nez p3, :cond_ad

    sget-object v0, Lcom/paypal/android/sdk/ax;->a:Lcom/paypal/android/sdk/ax;

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->r:Lcom/paypal/android/sdk/ax;

    :goto_41
    iput-object p4, p0, Lcom/paypal/android/sdk/at;->s:Ljava/lang/String;

    iput-object v8, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iput-object v8, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    iput v6, p0, Lcom/paypal/android/sdk/at;->h:I

    iput v6, p0, Lcom/paypal/android/sdk/at;->g:I

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b0

    :cond_57
    invoke-static {}, Lcom/paypal/android/sdk/at;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    :goto_5d
    if-nez v1, :cond_bf

    :try_start_5f
    const-string v0, "https://www.paypalobjects.com/webstatic/risk/dyson_config_android_v3.json"

    :goto_61
    iput-object v0, p0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/at;->f()V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Landroid/os/Handler;

    if-nez v0, :cond_97

    new-instance v0, Lcom/paypal/android/sdk/av;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/av;-><init>(Lcom/paypal/android/sdk/at;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->q:Landroid/os/Handler;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_97

    invoke-static {v0}, Lcom/paypal/android/sdk/bm;->a(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/at;->onLocationChanged(Landroid/location/Location;)V

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_97
    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->k()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_9a} :catch_c1

    :goto_9a
    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->j()Ljava/lang/String;

    new-instance v1, Lcom/paypal/android/sdk/ap;

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    if-nez v7, :cond_c8

    const/4 v0, 0x1

    :goto_a4
    invoke-direct {v1, v2, v0}, Lcom/paypal/android/sdk/ap;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0, v1}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/ap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    return-object v0

    :cond_ad
    iput-object p3, p0, Lcom/paypal/android/sdk/at;->r:Lcom/paypal/android/sdk/ax;

    goto :goto_41

    :cond_b0
    const/4 v0, 0x3

    const-string v3, "PRD"

    const-string v4, "Using custom pairing id"

    invoke-static {v0, v3, v4}, Lcom/paypal/android/sdk/bm;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    goto :goto_5d

    :cond_bf
    move-object v0, v1

    goto :goto_61

    :catch_c1
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    invoke-static {v1, v8, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a

    :cond_c8
    move v0, v6

    goto :goto_a4
.end method

.method public final a(Landroid/os/Message;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_100

    :cond_6
    :goto_6
    return-void

    :sswitch_7
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load Configuration URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :sswitch_25
    :try_start_25
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dyson Async URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_3c
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/ap;)V

    goto :goto_6

    :sswitch_5d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LogRiskMetadataRequest Server returned: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_87} :catch_1e

    move-result-object v0

    :try_start_88
    const-string v2, "responseEnvelope.ack"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_88 .. :try_end_8d} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_1e

    move-result-object v0

    :goto_8e
    :try_start_8e
    const-string v2, "Success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "LogRiskMetadataRequest Success"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_9f
    move-exception v0

    move-object v0, v1

    goto :goto_8e

    :sswitch_a2
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_ba
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "LoadConfigurationRequest failed."

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_c3
    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "LogRiskMetadataRequest failed."

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_e1
    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "BeaconRequest failed "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_fd} :catch_1e

    goto/16 :goto_6

    nop

    :sswitch_data_100
    .sparse-switch
        0x0 -> :sswitch_25
        0x1 -> :sswitch_c3
        0x2 -> :sswitch_5d
        0xa -> :sswitch_7
        0xb -> :sswitch_ba
        0xc -> :sswitch_53
        0x14 -> :sswitch_3c
        0x15 -> :sswitch_e1
        0x16 -> :sswitch_a2
    .end sparse-switch
.end method

.method public final b()V
    .registers 5

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/paypal/android/sdk/au;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/au;-><init>(Lcom/paypal/android/sdk/at;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 2

    invoke-static {}, Lcom/paypal/android/sdk/aw;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/as;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_e
.end method

.method public final e()V
    .registers 3

    invoke-static {}, Lcom/paypal/android/sdk/aw;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    return-void
.end method

.method public final f()V
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v1, "Host activity detected"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->i:J

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/paypal/android/sdk/at;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    if-eqz p1, :cond_21

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->o:Landroid/location/Location;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location Update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
