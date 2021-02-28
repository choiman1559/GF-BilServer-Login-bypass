.class Lcom/bsgamesdk/android/api/e$42;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$42;->f:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$42;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$42;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$42;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$42;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$42;->e:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$42;->b(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api/client/account.sms.sendCaptcha"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$42;->a:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    const-string v2, "tel"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$42;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "country_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$42;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$42;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "captcha"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$42;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$42;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "reset_pwd"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$42;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$42;->a(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$42;->f:Lcom/bsgamesdk/android/api/e;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$42;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$42;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v1

    if-nez v1, :cond_71

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "HttpClient is null"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$42;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$42;->a:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;Ljava/lang/String;)V

    :cond_7e
    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForString(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseVoidResponse(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
