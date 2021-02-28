.class public Lcom/tencent/wetest/WetestReport;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeTestReport"

.field private static a:Lcom/tencent/wetest/WetestReport;

.field private static b:I

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static f:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wetest/WetestReport;->a:Lcom/tencent/wetest/WetestReport;

    sput v1, Lcom/tencent/wetest/WetestReport;->b:I

    sput-boolean v1, Lcom/tencent/wetest/WetestReport;->c:Z

    sput-boolean v1, Lcom/tencent/wetest/WetestReport;->d:Z

    invoke-static {}, Lcom/tencent/wetest/WetestReport;->c()V

    new-instance v0, Lcom/tencent/wetest/h;

    invoke-direct {v0}, Lcom/tencent/wetest/h;-><init>()V

    sput-object v0, Lcom/tencent/wetest/WetestReport;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .registers 1

    sget v0, Lcom/tencent/wetest/WetestReport;->b:I

    return v0
.end method

.method static synthetic a(I)V
    .registers 1

    sput p0, Lcom/tencent/wetest/WetestReport;->b:I

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://wetest.qq.com/cloudapi/api_v2/sdkreport"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    const-string v2, "wetest"

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "wetest"

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    const-string v1, "wetest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method static synthetic b()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    sget-object v0, Lcom/tencent/wetest/WetestReport;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static c()V
    .registers 13

    const/4 v1, 0x0

    sget-boolean v0, Lcom/tencent/wetest/WetestReport;->d:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    :try_start_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    const-string v2, ""

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/wetest/WetestReport;->d:Z

    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->GetPlayerActivity()Landroid/app/Activity;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_ce

    move-result-object v2

    :try_start_16
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_da

    move-result-object v0

    move-object v3, v0

    :goto_1f
    :try_start_1f
    const-string v0, "wifi"

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2e} :catch_de

    move-result v0

    move v2, v0

    :goto_30
    :try_start_30
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    array-length v10, v8

    :goto_51
    if-lt v1, v10, :cond_e2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wetest"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "PackageName:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ") Host:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " model:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " version:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " FingerInt:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "packagename"

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "ip"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "model"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "fingerprint"

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/tencent/wetest/WetestReport;->a(Ljava/util/List;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_cc} :catch_ce

    goto/16 :goto_5

    :catch_ce
    move-exception v0

    const-string v1, "WeTestReport"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_da
    move-exception v3

    move-object v3, v0

    goto/16 :goto_1f

    :catch_de
    move-exception v0

    move v2, v1

    goto/16 :goto_30

    :cond_e2
    :try_start_e2
    aget-byte v0, v8, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_ea
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_f9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_51

    :cond_f9
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_107} :catch_ce

    move-result-object v0

    goto :goto_ea
.end method

.method public static initCrashReport()V
    .registers 2

    sget-boolean v0, Lcom/tencent/wetest/WetestReport;->c:Z

    if-eqz v0, :cond_c

    const-string v0, "wetest"

    const-string v1, "java crash monitor has inited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    :try_start_c
    const-string v0, "wetest"

    const-string v1, "Register java uncaught exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/tencent/wetest/WetestReport;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    sget-object v0, Lcom/tencent/wetest/WetestReport;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wetest/WetestReport;->c:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_22

    goto :goto_b

    :catch_22
    move-exception v0

    goto :goto_b
.end method

.method public static logAgent(Ljava/lang/String;)V
    .registers 2

    const-string v0, "WeTestReport"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    if-nez p2, :cond_c

    const-string p2, ""

    :cond_c
    if-nez p3, :cond_10

    const-string p3, ""

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "*****************<WetestReport>*********************\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "EXCEPTION TYPE: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MESSAGE: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "STACKTRACE: \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SCENE: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UNCAUGHT: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_90

    const-string v0, "True"

    :goto_5b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CRASH TYPE: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "C# CRASH\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "INDEX: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tencent/wetest/WetestReport;->b:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/tencent/wetest/WetestReport;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "***************************************************\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WeTestReport"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_90
    const-string v0, "False"

    goto :goto_5b
.end method

.method public static testCrash()V
    .registers 2

    const-string v0, "wetest"

    const-string v1, "TestCrash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->GetPlayerActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "wetest"

    const-string v1, "Can not find UnityActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void

    :cond_15
    new-instance v1, Lcom/tencent/wetest/i;

    invoke-direct {v1}, Lcom/tencent/wetest/i;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    goto :goto_14

    :catch_1e
    move-exception v0

    goto :goto_14
.end method
