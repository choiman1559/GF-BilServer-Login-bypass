.class public Lcom/alipay/sdk/util/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static c:Lcom/alipay/sdk/util/a;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/util/a;->c:Lcom/alipay/sdk/util/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_26
    .catchall {:try_start_3 .. :try_end_19} :catchall_37

    iget-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    :try_start_27
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_37

    iget-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    goto :goto_25

    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    :cond_44
    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
    .registers 2

    sget-object v0, Lcom/alipay/sdk/util/a;->c:Lcom/alipay/sdk/util/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/alipay/sdk/util/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/sdk/util/a;->c:Lcom/alipay/sdk/util/a;

    :cond_b
    sget-object v0, Lcom/alipay/sdk/util/a;->c:Lcom/alipay/sdk/util/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/util/d;->a(I)Lcom/alipay/sdk/util/d;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    sget-object v0, Lcom/alipay/sdk/util/d;->a:Lcom/alipay/sdk/util/d;

    goto :goto_20

    :cond_2d
    sget-object v0, Lcom/alipay/sdk/util/d;->o:Lcom/alipay/sdk/util/d;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_30

    goto :goto_20

    :catch_30
    move-exception v0

    sget-object v0, Lcom/alipay/sdk/util/d;->o:Lcom/alipay/sdk/util/d;

    goto :goto_20
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_4

    :catch_14
    move-exception v0

    const-string v0, ""

    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "000000000000000"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "000000000000000"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    return-object v0
.end method
