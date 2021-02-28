.class public Lcom/alipay/sdk/packet/impl/e;
.super Lcom/alipay/sdk/packet/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alipay/sdk/packet/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "mspl"

    const-string v1, "mdap post"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/encrypt/c;->a([B)[B

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "utdId"

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/sys/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "logHeader"

    const-string v3, "RAW"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bizCode"

    const-string v3, "alipaysdk"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productId"

    const-string v3, "alipaysdk_android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Content-Encoding"

    const-string v3, "Gzip"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productVersion"

    const-string v3, "15.7.4"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/alipay/sdk/net/a$a;

    const-string v3, "https://loggw-exsdk.alipay.com/loggw/logUpload.do"

    invoke-direct {v2, v3, v1, v0}, Lcom/alipay/sdk/net/a$a;-><init>(Ljava/lang/String;Ljava/util/Map;[B)V

    invoke-static {p2, v2}, Lcom/alipay/sdk/net/a;->a(Landroid/content/Context;Lcom/alipay/sdk/net/a$a;)Lcom/alipay/sdk/net/a$b;

    move-result-object v0

    const-string v1, "mspl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdap got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_77

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    invoke-static {v0}, Lcom/alipay/sdk/packet/impl/e;->a(Lcom/alipay/sdk/net/a$b;)Z

    move-result v1

    const-string v2, ""

    :try_start_7d
    iget-object v0, v0, Lcom/alipay/sdk/net/a$b;->c:[B

    if-eqz v1, :cond_85

    invoke-static {v0}, Lcom/alipay/sdk/encrypt/c;->b([B)[B

    move-result-object v0

    :cond_85
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_90} :catch_98

    new-instance v0, Lcom/alipay/sdk/packet/b;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/alipay/sdk/packet/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_97
    return-object v0

    :catch_98
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_97
.end method

.method protected a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    return-object p2
.end method

.method protected a(ZLjava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected a()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
