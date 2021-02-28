.class Lcom/bsgamesdk/android/api/e$18;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$18;->g:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$18;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$18;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$18;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$18;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/bsgamesdk/android/api/e$18;->e:Z

    iput-object p7, p0, Lcom/bsgamesdk/android/api/e$18;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bsgamesdk/android/api/c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;,
            Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$18;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/api/client/paypal_verify"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$18;->a:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    const-string v2, "payment_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$18;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$18;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$18;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "request_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$18;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$18;->a(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$18;->g:Lcom/bsgamesdk/android/api/e;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$18;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$18;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseVerifyOrderResponse(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/bsgamesdk/android/api/e$18;->e:Z

    if-eqz v1, :cond_7a

    if-eq v0, v4, :cond_64

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7a

    :cond_64
    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$18;->g:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$18;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$18;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$18;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$18;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/api/e$18;->d:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_79
    return-object v0

    :cond_7a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_79
.end method
