.class public Lcom/alipay/sdk/app/statistic/c;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "ClientBindException"

.field public static final B:Ljava/lang/String; = "SaveTradeTokenError"

.field public static final C:Ljava/lang/String; = "ClientBindServiceFailed"

.field public static final D:Ljava/lang/String; = "TryStartServiceEx"

.field public static final E:Ljava/lang/String; = "BindWaitTimeoutEx"

.field public static final F:Ljava/lang/String; = "CheckClientExistEx"

.field public static final G:Ljava/lang/String; = "CheckClientSignEx"

.field public static final H:Ljava/lang/String; = "GetInstalledAppEx"

.field public static final I:Ljava/lang/String; = "ParserTidClientKeyEx"

.field public static final J:Ljava/lang/String; = "PgApiInvoke"

.field public static final K:Ljava/lang/String; = "PgBindStarting"

.field public static final L:Ljava/lang/String; = "PgBinded"

.field public static final M:Ljava/lang/String; = "PgBindEnd"

.field public static final N:Ljava/lang/String; = "PgBindPay"

.field public static final O:Ljava/lang/String; = "PgReturn"

.field public static final P:Ljava/lang/String; = "PgWltVer"

.field public static final Q:Ljava/lang/String; = "PgOpenStarting"

.field public static final R:Ljava/lang/String; = "ErrIntentEx"

.field public static final S:Ljava/lang/String; = "ErrActNull"

.field public static final T:Ljava/lang/String; = "ErrActNull"

.field public static final U:Ljava/lang/String; = "GetInstalledAppEx"

.field public static final V:Ljava/lang/String; = "StartLaunchAppTransEx"

.field public static final W:Ljava/lang/String; = "CheckLaunchAppExistEx"

.field public static final X:Ljava/lang/String; = "LogCurrentAppLaunchSwitch"

.field public static final Y:Ljava/lang/String; = "LogCurrentQueryTime"

.field public static final Z:Ljava/lang/String; = "LogCalledPackage"

.field public static final a:Ljava/lang/String; = "net"

.field public static final aa:Ljava/lang/String; = "LogBindCalledH5"

.field public static final ab:Ljava/lang/String; = "LogCalledH5"

.field public static final ac:Ljava/lang/String; = "LogHkLoginByIntent"

.field public static final ad:Ljava/lang/String; = "SchemePayWrongHashEx"

.field public static final ae:Ljava/lang/String; = "LogAppLaunchSwitchEnabled"

.field public static final af:Ljava/lang/String; = "H5CbUrlEmpty"

.field public static final ag:Ljava/lang/String; = "H5CbEx"

.field public static final ah:Ljava/lang/String; = "BuildSchemePayUriError"

.field public static final ai:Ljava/lang/String; = "StartActivityEx"

.field public static final aj:Ljava/lang/String; = "JSONEx"

.field public static final ak:Ljava/lang/String; = "ParseBundleSerializableError"

.field public static final al:Ljava/lang/String; = "ParseSchemeQueryError"

.field public static final am:Ljava/lang/String; = "tid_context_null"

.field public static final an:Ljava/lang/String; = "partner"

.field public static final ao:Ljava/lang/String; = "out_trade_no"

.field public static final ap:Ljava/lang/String; = "trade_no"

.field public static final aq:Ljava/lang/String; = "biz_content"

.field public static final ar:Ljava/lang/String; = "app_id"

.field public static final b:Ljava/lang/String; = "biz"

.field public static final c:Ljava/lang/String; = "cp"

.field public static final d:Ljava/lang/String; = "auth"

.field public static final e:Ljava/lang/String; = "third"

.field public static final f:Ljava/lang/String; = "tid"

.field public static final g:Ljava/lang/String; = "FormatResultEx"

.field public static final h:Ljava/lang/String; = "GetApdidEx"

.field public static final i:Ljava/lang/String; = "GetApdidNull"

.field public static final j:Ljava/lang/String; = "GetApdidTimeout"

.field public static final k:Ljava/lang/String; = "GetUtdidEx"

.field public static final l:Ljava/lang/String; = "GetPackageInfoEx"

.field public static final m:Ljava/lang/String; = "NotIncludeSignatures"

.field public static final n:Ljava/lang/String; = "GetInstalledPackagesEx"

.field public static final o:Ljava/lang/String; = "GetPublicKeyFromSignEx"

.field public static final p:Ljava/lang/String; = "H5PayNetworkError"

.field public static final q:Ljava/lang/String; = "H5AuthNetworkError"

.field public static final r:Ljava/lang/String; = "SSLError"

.field public static final s:Ljava/lang/String; = "SSLProceed"

.field public static final t:Ljava/lang/String; = "SSLDenied"

.field public static final u:Ljava/lang/String; = "H5PayDataAnalysisError"

.field public static final v:Ljava/lang/String; = "H5AuthDataAnalysisError"

.field public static final w:Ljava/lang/String; = "PublicKeyUnmatch"

.field public static final x:Ljava/lang/String; = "ClientBindFailed"

.field public static final y:Ljava/lang/String; = "TriDesEncryptError"

.field public static final z:Ljava/lang/String; = "TriDesDecryptError"


# instance fields
.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_11
    invoke-static {}, Lcom/alipay/sdk/app/statistic/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->as:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->au:Ljava/lang/String;

    if-eqz p2, :cond_3c

    const-wide/16 v0, 0x0

    :goto_21
    invoke-static {v0, v1}, Lcom/alipay/sdk/app/statistic/c;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->av:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/sdk/app/statistic/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->aw:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->ax:Ljava/lang/String;

    const-string v0, "-"

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->ay:Ljava/lang/String;

    const-string v0, "-"

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->aB:Ljava/lang/String;

    return-void

    :cond_3c
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/a$c;->a(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_21
.end method

.method private static a(J)Ljava/lang/String;
    .registers 8

    const-string v0, "15.7.4"

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h.a.3.7.4"

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android,3,%s,%s,com.alipay.mcpay,5.0,-,%s,-"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v1, "-"

    const-string v0, "-"

    if-eqz p0, :cond_35

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_34} :catch_4d

    move-result-object v0

    :cond_35
    :goto_35
    const-string v2, "%s,%s,-,-,-"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_4d
    move-exception v2

    goto :goto_35
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-nez v1, :cond_f

    :cond_c
    const-string v0, "0"

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v1, v0

    :goto_1e
    if-ge v1, v4, :cond_4e

    aget-object v5, v3, v1

    const-string v0, "?"
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_24} :catch_53

    const/4 v6, 0x0

    :try_start_25
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;[B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    const-string v0, "?"
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_35} :catch_57

    :goto_35
    :try_start_35
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3e} :catch_53

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_42
    :try_start_42
    invoke-static {v5}, Lcom/alipay/sdk/util/n;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_4c} :catch_57

    move-result-object v0

    goto :goto_35

    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_51} :catch_53

    move-result-object v0

    goto :goto_e

    :catch_53
    move-exception v0

    const-string v0, "?"

    goto :goto_e

    :catch_57
    move-exception v5

    goto :goto_35
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " \u300b "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_46

    array-length v4, v3

    move v1, v0

    :goto_30
    if-ge v0, v4, :cond_46

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " \u300b "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_41} :catch_4e

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x5

    if-le v1, v5, :cond_4b

    :cond_46
    :goto_46
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :catch_4e
    move-exception v0

    goto :goto_46
.end method

.method private a()Z
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss:SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 13

    invoke-static {p0}, Lcom/alipay/sdk/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/alipay/sdk/util/a;->b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/sdk/util/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "gw"

    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s,%s,%s,%s,%s,%s,%s,%s,%s,-"

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "["

    const-string v1, "\u3010"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "\u3011"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, "\uff08"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, "\uff09"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "\uff0c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^"

    const-string v2, "~"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    const-string v2, "\uff03"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static c()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "123456789,%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "-"

    :cond_8
    return-object p0
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "mspl"

    const-string v1, "err %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%s,%s,%s,%s"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string v0, "-"

    :goto_52
    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/sdk/app/statistic/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_87

    monitor-exit p0

    return-void

    :cond_82
    :try_start_82
    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_87

    move-result-object v0

    goto :goto_52

    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s,%s,-,-,-"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v11, 0x2

    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_8

    const-string p0, ""

    :cond_8
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9f

    array-length v6, v5

    move v3, v4

    move-object v1, v0

    move-object v2, v0

    :goto_14
    if-ge v3, v6, :cond_a1

    aget-object v7, v5, v3

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_37

    array-length v8, v7

    if-ne v8, v11, :cond_37

    aget-object v8, v7, v4

    const-string v9, "partner"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a

    aget-object v2, v7, v10

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_3a
    aget-object v8, v7, v4

    const-string v9, "out_trade_no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    aget-object v1, v7, v10

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_4f
    aget-object v8, v7, v4

    const-string v9, "trade_no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    aget-object v0, v7, v10

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_64
    aget-object v8, v7, v4

    const-string v9, "biz_content"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8b

    :try_start_6e
    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-static {v8, v7}, Lcom/alipay/sdk/util/n;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_37

    const-string v7, "out_trade_no"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_89} :catch_c0

    move-result-object v1

    goto :goto_37

    :cond_8b
    aget-object v8, v7, v4

    const-string v9, "app_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    :try_start_95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v8, 0x1

    aget-object v2, v7, v8
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_9e} :catch_bd

    goto :goto_37

    :cond_9f
    move-object v1, v0

    move-object v2, v0

    :cond_a1
    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s,%s,-,%s,-,-,-"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object v1, v5, v10

    aput-object v2, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_bd
    move-exception v7

    goto/16 :goto_37

    :catch_c0
    move-exception v7

    goto/16 :goto_37
.end method

.method private declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "mspl"

    const-string v1, "event %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%s,%s,%s,-,-,-,-,-,-,-,-,-,-,%s"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "-"

    :goto_4c
    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/sdk/app/statistic/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;
    :try_end_88
    .catchall {:try_start_1 .. :try_end_88} :catchall_8f

    monitor-exit p0

    return-void

    :cond_8a
    :try_start_8a
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8f

    move-result-object v0

    goto :goto_4c

    :catchall_8f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->at:Ljava/lang/String;

    const-string v0, "[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->as:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->at:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->au:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->av:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->aw:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->ax:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->ay:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->az:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->aA:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/c;->aB:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/sdk/app/statistic/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 8

    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/sdk/app/statistic/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
