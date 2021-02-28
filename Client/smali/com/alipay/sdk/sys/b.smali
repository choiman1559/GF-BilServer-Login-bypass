.class public Lcom/alipay/sdk/sys/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/sdk/sys/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/sdk/sys/b;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/sys/b;->a:Lcom/alipay/sdk/sys/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/alipay/sdk/sys/b;

    invoke-direct {v0}, Lcom/alipay/sdk/sys/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/b;->a:Lcom/alipay/sdk/sys/b;

    :cond_b
    sget-object v0, Lcom/alipay/sdk/sys/b;->a:Lcom/alipay/sdk/sys/b;

    return-object v0
.end method

.method public static d()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v3, v1

    const-string v2, "/sbin/su"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "/data/local/su"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "/su/bin/su"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_3a
    if-ge v2, v4, :cond_4d

    aget-object v5, v3, v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4a

    :goto_49
    return v0

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_4d
    move v0, v1

    goto :goto_49
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/alipay/sdk/data/c;->b()Lcom/alipay/sdk/data/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/b;->b:Landroid/content/Context;

    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Lcom/alipay/sdk/data/c;
    .registers 2

    invoke-static {}, Lcom/alipay/sdk/data/c;->b()Lcom/alipay/sdk/data/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const-string v0, "getUtdidEx"

    goto :goto_8
.end method
