.class public Lcom/alipay/sdk/util/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/sdk/interior/Log$ISdkLogCallback; = null

.field private static final b:Ljava/lang/String; = "alipaysdk"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/interior/Log$ISdkLogCallback;)V
    .registers 1

    sput-object p0, Lcom/alipay/sdk/util/c;->a:Lcom/alipay/sdk/interior/Log$ISdkLogCallback;

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/alipay/sdk/util/c;->a:Lcom/alipay/sdk/interior/Log$ISdkLogCallback;

    if-eqz v0, :cond_2a

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[AlipaySDK] %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/sdk/interior/Log$ISdkLogCallback;->onLogLine(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/alipay/sdk/util/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p0, p1}, Lcom/alipay/sdk/util/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    :catch_b
    move-exception v0

    goto :goto_2
.end method

.method private static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/alipay/sdk/util/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/alipay/sdk/util/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/alipay/sdk/util/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    const-string v0, "[%s][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
