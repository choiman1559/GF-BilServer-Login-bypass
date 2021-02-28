.class public Lcom/alipay/sdk/util/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "failed"

.field public static final b:Ljava/lang/String; = "scheme_failed"


# instance fields
.field private c:Landroid/app/Activity;

.field private volatile d:Lcom/alipay/android/app/IAlixPay;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Lcom/alipay/sdk/util/e$a;

.field private final h:Lcom/alipay/sdk/sys/a;

.field private i:Landroid/content/ServiceConnection;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/util/e$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->e:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/sdk/util/f;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/f;-><init>(Lcom/alipay/sdk/util/e;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->j:Ljava/lang/String;

    new-instance v0, Lcom/alipay/sdk/util/h;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/h;-><init>(Lcom/alipay/sdk/util/e;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-object p1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    iput-object p3, p0, Lcom/alipay/sdk/util/e;->g:Lcom/alipay/sdk/util/e$a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/util/e;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 22

    if-eqz p3, :cond_cd

    move-object/from16 v0, p3

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move v5, v4

    :goto_7
    if-eqz p3, :cond_d1

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_d
    const-string v6, "mspl"

    const-string v7, "pay bind or scheme"

    invoke-static {v6, v7}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v7, "biz"

    const-string v8, "PgWltVer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v8, v4}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "mspl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pay bind result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    iget-object v8, v8, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v8}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/sdk/data/a;->c()Z

    move-result v6

    const-string v7, "failed"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    const-string v7, "com.eg.android.AlipayGphone"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    const/16 v7, 0x7d

    if-le v5, v7, :cond_9c

    if-nez v6, :cond_9c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v8, "biz"

    const-string v9, "BSPNotStartByConfig"

    invoke-static {v7, v8, v9}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    const-string v7, "failed"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const-string v7, "com.eg.android.AlipayGphone"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/16 v7, 0x7d

    if-le v5, v7, :cond_cc

    if-eqz v6, :cond_cc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    if-eqz v4, :cond_ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/sys/a;)Z

    move-result v4

    if-nez v4, :cond_d5

    :cond_ca
    const-string v4, "scheme_failed"

    :cond_cc
    :goto_cc
    return-object v4

    :cond_cd
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_7

    :cond_d1
    const-string v4, ""

    goto/16 :goto_d

    :cond_d5
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v10, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v4, 0x20

    invoke-static {v4}, Lcom/alipay/sdk/util/n;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v5, "biz"

    const-string v6, "BSPStart"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    invoke-static {v4, v11}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/sdk/util/g;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lcom/alipay/sdk/util/g;-><init>(Lcom/alipay/sdk/util/e;Ljava/util/concurrent/CountDownLatch;)V

    sget-object v5, Lcom/alipay/sdk/app/AlipayResultActivity;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v11, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ""

    :try_start_11c
    const-string v4, "bizcontext="

    const-string v4, "&"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    const/4 v8, 0x0

    const-string v6, ""

    const/4 v5, 0x0

    const-string v4, ""

    array-length v15, v14

    const/4 v7, 0x0

    move v9, v7

    :goto_130
    if-ge v9, v15, :cond_365

    aget-object v7, v14, v9

    const-string v16, "bizcontext="

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2f2

    const-string v4, "{"

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "}"

    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "sc"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "h5tonative"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c9

    const-string v8, "sc"

    const-string v9, "h5tonative_scheme"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_17c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2f7

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "empty ctx_args"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_18a} :catch_18a
    .catch Ljava/lang/InterruptedException; {:try_start_11c .. :try_end_18a} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_18a} :catch_30d

    :catch_18a
    move-exception v4

    :try_start_18b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v6, "biz"

    const-string v7, "BSPSCReplaceEx"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v4, v8}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_19f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "sourcePid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "external_info"

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pkgName"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "session"

    invoke-virtual {v4, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "alipays"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "platformapi"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "startapp"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "appId"

    const-string v7, "20000125"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "mqpSchemePay"

    invoke-virtual {v5, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1f9
    .catch Ljava/lang/InterruptedException; {:try_start_18b .. :try_end_1f9} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_1f9} :catch_30d

    :try_start_1f9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    invoke-static {v4}, Lcom/alipay/sdk/sys/a;->a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;

    move-result-object v4

    const-string v6, "ts_scheme"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v4, "mqpLoc"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_218
    .catch Ljava/lang/Throwable; {:try_start_1f9 .. :try_end_218} :catch_33e
    .catch Ljava/lang/InterruptedException; {:try_start_1f9 .. :try_end_218} :catch_2d2

    :goto_218
    :try_start_218
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    iget-object v8, v8, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v8}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v6, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    const-string v5, "mspl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pay scheme waiting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/sdk/util/e;->j:Ljava/lang/String;

    const-string v6, "unknown"
    :try_end_284
    .catch Ljava/lang/InterruptedException; {:try_start_218 .. :try_end_284} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_218 .. :try_end_284} :catch_30d

    :try_start_284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    invoke-static {v4, v5}, Lcom/alipay/sdk/util/l;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const-string v7, "resultStatus"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_294
    .catch Ljava/lang/Throwable; {:try_start_284 .. :try_end_294} :catch_34c
    .catch Ljava/lang/InterruptedException; {:try_start_284 .. :try_end_294} :catch_2d2

    if-nez v4, :cond_298

    :try_start_296
    const-string v4, "null"
    :try_end_298
    .catch Ljava/lang/Throwable; {:try_start_296 .. :try_end_298} :catch_35b
    .catch Ljava/lang/InterruptedException; {:try_start_296 .. :try_end_298} :catch_2d2

    :cond_298
    :goto_298
    :try_start_298
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v7, "biz"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BSPDone-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_362

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v5, "biz"

    const-string v6, "BSPEmpty"

    invoke-static {v4, v5, v6}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "scheme_failed"
    :try_end_2c7
    .catch Ljava/lang/InterruptedException; {:try_start_298 .. :try_end_2c7} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_298 .. :try_end_2c7} :catch_30d

    goto/16 :goto_cc

    :cond_2c9
    :try_start_2c9
    const-string v8, "sc"

    const-string v9, "h5tonative_sdkscheme"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2d0} :catch_18a
    .catch Ljava/lang/InterruptedException; {:try_start_2c9 .. :try_end_2d0} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_2c9 .. :try_end_2d0} :catch_30d

    goto/16 :goto_17c

    :catch_2d2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v6, "biz"

    const-string v7, "BSPWaiting"

    invoke-static {v5, v6, v7, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v4, Lcom/alipay/sdk/app/k;->g:Lcom/alipay/sdk/app/k;

    invoke-virtual {v4}, Lcom/alipay/sdk/app/k;->a()I

    move-result v4

    sget-object v5, Lcom/alipay/sdk/app/k;->g:Lcom/alipay/sdk/app/k;

    invoke-virtual {v5}, Lcom/alipay/sdk/app/k;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_cc

    :cond_2f2
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto/16 :goto_130

    :cond_2f7
    :try_start_2f7
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_31d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "multi ctx_args"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_30d
    .catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_30d} :catch_18a
    .catch Ljava/lang/InterruptedException; {:try_start_2f7 .. :try_end_30d} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_2f7 .. :try_end_30d} :catch_30d

    :catch_30d
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v6, "biz"

    const-string v7, "BSPEx"

    invoke-static {v5, v6, v7, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "scheme_failed"

    goto/16 :goto_cc

    :cond_31d
    :try_start_31d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_33b
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_33b} :catch_18a
    .catch Ljava/lang/InterruptedException; {:try_start_31d .. :try_end_33b} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_31d .. :try_end_33b} :catch_30d

    move-result-object p1

    goto/16 :goto_19f

    :catch_33e
    move-exception v4

    :try_start_33f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v7, "biz"

    const-string v8, "BSPLocEx"

    invoke-static {v6, v7, v8, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_218

    :catch_34c
    move-exception v4

    :goto_34d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v8, "biz"

    const-string v9, "BSPStatEx"

    invoke-static {v7, v8, v9, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_358
    .catch Ljava/lang/InterruptedException; {:try_start_33f .. :try_end_358} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_33f .. :try_end_358} :catch_30d

    move-object v4, v6

    goto/16 :goto_298

    :catch_35b
    move-exception v6

    move-object/from16 v17, v6

    move-object v6, v4

    move-object/from16 v4, v17

    goto :goto_34d

    :cond_362
    move-object v4, v5

    goto/16 :goto_cc

    :cond_365
    move-object v7, v8

    goto/16 :goto_17c
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;
    .registers 15

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/alipay/sdk/util/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/alipay/sdk/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v3, "biz"

    const-string v6, "PgBindStarting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_38
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v3, v6, v0}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    iget-object v3, p3, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v0, p3, p1, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4a
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->h()Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v3, "biz"

    const-string v6, "stSrv"

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_68
    invoke-static {p3, v3, v6, v0}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_6b} :catch_9c

    :goto_6b
    :try_start_6b
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v3, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_a5

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "bindService fail"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_82} :catch_82

    :catch_82
    move-exception v0

    const-string v1, "biz"

    const-string v2, "ClientBindServiceFailed"

    invoke-static {p3, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "failed"

    :cond_8c
    :goto_8c
    return-object v0

    :cond_8d
    const/4 v0, 0x0

    goto :goto_38

    :cond_8f
    :try_start_8f
    const-string v0, "null"

    goto :goto_68

    :cond_92
    const-string v0, "biz"

    const-string v3, "stSrv"

    const-string v6, "skipped"

    invoke-static {p3, v0, v3, v6}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_9b} :catch_9c

    goto :goto_6b

    :catch_9c
    move-exception v0

    :try_start_9d
    const-string v3, "biz"

    const-string v6, "TryStartServiceEx"

    invoke-static {p3, v3, v6, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a4} :catch_82

    goto :goto_6b

    :cond_a5
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a8
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;
    :try_end_aa
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_145

    if-nez v0, :cond_ba

    :try_start_ac
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->e:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/data/a;->a()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_ac .. :try_end_ba} :catch_13b
    .catchall {:try_start_ac .. :try_end_ba} :catchall_145

    :cond_ba
    :goto_ba
    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_145

    :try_start_bb
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_152

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/alipay/sdk/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "biz"

    const-string v3, "ClientBindFailed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v1, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "failed"
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_e5} :catch_24c
    .catchall {:try_start_bb .. :try_end_e5} :catchall_2b8

    :try_start_e5
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_ec} :catch_148

    :goto_ec
    :try_start_ec
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_f7} :catch_14d

    :goto_f7
    const-string v1, "biz"

    const-string v2, "PgBindEnd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    iget-object v2, p3, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p3, p1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->g:Lcom/alipay/sdk/util/e$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->f:Z

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/sdk/util/e;->f:Z

    goto/16 :goto_8c

    :catch_13b
    move-exception v0

    :try_start_13c
    const-string v3, "biz"

    const-string v6, "BindWaitTimeoutEx"

    invoke-static {p3, v3, v6, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ba

    :catchall_145
    move-exception v0

    monitor-exit v1
    :try_end_147
    .catchall {:try_start_13c .. :try_end_147} :catchall_145

    throw v0

    :catch_148
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_ec

    :catch_14d
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_f7

    :cond_152
    :try_start_152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v0, "biz"

    const-string v1, "PgBinded"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v0, v1, v6}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->g:Lcom/alipay/sdk/util/e$a;

    if-eqz v0, :cond_179

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->g:Lcom/alipay/sdk/util/e$a;

    invoke-interface {v0}, Lcom/alipay/sdk/util/e$a;->a()V

    :cond_179
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/e;->f:Z
    :try_end_18a
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_18a} :catch_24c
    .catchall {:try_start_152 .. :try_end_18a} :catchall_2b8

    :cond_18a
    const/4 v1, 0x0

    :try_start_18b
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0}, Lcom/alipay/android/app/IAlixPay;->getVersion()I
    :try_end_190
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_190} :catch_234
    .catchall {:try_start_18b .. :try_end_190} :catchall_2b8

    move-result v0

    :goto_191
    :try_start_191
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-object v6, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v6}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-string v1, "biz"

    const-string v8, "PgBindPay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p3, v1, v8, v9}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-lt v0, v1, :cond_23b

    invoke-static {p3}, Lcom/alipay/sdk/sys/a;->a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ts_bind"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ts_bend"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ts_pay"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v1, p1, v0}, Lcom/alipay/android/app/IAlixPay;->pay02(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_1dd
    .catch Ljava/lang/Throwable; {:try_start_191 .. :try_end_1dd} :catch_24c
    .catchall {:try_start_191 .. :try_end_1dd} :catchall_2b8

    move-result-object v0

    :goto_1de
    :try_start_1de
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_1e5
    .catch Ljava/lang/Throwable; {:try_start_1de .. :try_end_1e5} :catch_242

    :goto_1e5
    :try_start_1e5
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f0
    .catch Ljava/lang/Throwable; {:try_start_1e5 .. :try_end_1f0} :catch_247

    :goto_1f0
    const-string v1, "biz"

    const-string v2, "PgBindEnd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    iget-object v2, p3, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p3, p1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->g:Lcom/alipay/sdk/util/e$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->f:Z

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/sdk/util/e;->f:Z

    goto/16 :goto_8c

    :catch_234
    move-exception v0

    :try_start_235
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto/16 :goto_191

    :cond_23b
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_240
    .catch Ljava/lang/Throwable; {:try_start_235 .. :try_end_240} :catch_24c
    .catchall {:try_start_235 .. :try_end_240} :catchall_2b8

    move-result-object v0

    goto :goto_1de

    :catch_242
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1e5

    :catch_247
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1f0

    :catch_24c
    move-exception v0

    :try_start_24d
    const-string v1, "biz"

    const-string v2, "ClientBindException"

    invoke-static {p3, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;
    :try_end_257
    .catchall {:try_start_24d .. :try_end_257} :catchall_2b8

    move-result-object v0

    :try_start_258
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_25f
    .catch Ljava/lang/Throwable; {:try_start_258 .. :try_end_25f} :catch_2ae

    :goto_25f
    :try_start_25f
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_26a
    .catch Ljava/lang/Throwable; {:try_start_25f .. :try_end_26a} :catch_2b3

    :goto_26a
    const-string v1, "biz"

    const-string v2, "PgBindEnd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    iget-object v2, p3, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p3, p1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->g:Lcom/alipay/sdk/util/e$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->f:Z

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/sdk/util/e;->f:Z

    goto/16 :goto_8c

    :catch_2ae
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_25f

    :catch_2b3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_26a

    :catchall_2b8
    move-exception v0

    :try_start_2b9
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_2c0
    .catch Ljava/lang/Throwable; {:try_start_2b9 .. :try_end_2c0} :catch_30e

    :goto_2c0
    :try_start_2c0
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2cb
    .catch Ljava/lang/Throwable; {:try_start_2c0 .. :try_end_2cb} :catch_313

    :goto_2cb
    const-string v1, "biz"

    const-string v2, "PgBindEnd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v1, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    iget-object v2, p3, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v1, p3, p1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->g:Lcom/alipay/sdk/util/e$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->i:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/sdk/util/e;->d:Lcom/alipay/android/app/IAlixPay;

    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->f:Z

    if-eqz v1, :cond_30d

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    if-eqz v1, :cond_30d

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/sdk/util/e;->f:Z

    :cond_30d
    throw v0

    :catch_30e
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2c0

    :catch_313
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2cb
.end method

.method private a(Lcom/alipay/sdk/util/n$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p1, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.alipay.android.app.TransProcessPayActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_13
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_1e

    :goto_18
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :catch_1e
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v2, "biz"

    const-string v3, "StartLaunchAppTransEx"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/sys/a;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "com.alipay.android.msp.ui.views.MspContainerActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_2a

    const-string v1, "biz"

    const-string v2, "BSPDetectFail"

    invoke-static {p2, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_21

    :goto_20
    return v0

    :catch_21
    move-exception v1

    const-string v2, "biz"

    const-string v3, "BSPDetectFail"

    invoke-static {p2, v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_2a
    const/4 v0, 0x1

    goto :goto_20
.end method

.method static synthetic b(Lcom/alipay/sdk/util/e;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/util/e$a;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->g:Lcom/alipay/sdk/util/e$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alipay/sdk/data/a;->a:Z

    if-eqz v3, :cond_15

    if-nez v0, :cond_17

    :cond_15
    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    :cond_17
    iget-object v3, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    iget-object v4, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    invoke-static {v3, v4, v0}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/n$a;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v0, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    invoke-virtual {v3, v0}, Lcom/alipay/sdk/util/n$a;->a(Lcom/alipay/sdk/sys/a;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {v3}, Lcom/alipay/sdk/util/n$a;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_2f
    const-string v0, "failed"

    :goto_31
    return-object v0

    :cond_32
    iget-object v0, v3, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/alipay/sdk/util/n;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "failed"

    goto :goto_31

    :cond_3d
    iget-object v0, v3, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4d

    const-string v0, "com.eg.android.AlipayGphone"

    iget-object v4, v3, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_4d
    invoke-static {}, Lcom/alipay/sdk/util/n;->a()Ljava/lang/String;

    move-result-object v1

    :goto_51
    iget-object v0, v3, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_74

    iget-object v0, v3, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_57} :catch_64

    :goto_57
    :try_start_57
    invoke-direct {p0, v3}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/n$a;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_72

    :goto_5a
    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_5f
    :try_start_5f
    iget-object v0, v3, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_63} :catch_64

    goto :goto_51

    :catch_64
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    :goto_68
    iget-object v3, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/sdk/sys/a;

    const-string v4, "biz"

    const-string v5, "CheckClientSignEx"

    invoke-static {v3, v4, v5, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    :catch_72
    move-exception v2

    goto :goto_68

    :cond_74
    move-object v0, v2

    goto :goto_57
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->c:Landroid/app/Activity;

    return-void
.end method
