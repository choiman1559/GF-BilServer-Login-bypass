.class Lcom/bsgamesdk/android/api/h$6$1;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/h$6;->run()V
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
.field final synthetic a:Lcom/bsgamesdk/android/api/h$6;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/h$6;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/h$6$1;->b(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;,
            Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h$6;->c:Lcom/bsgamesdk/android/api/h;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v3, "code"

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h$6;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, ""

    :goto_1c
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h$6;->c:Lcom/bsgamesdk/android/api/h;

    iget-object v2, v0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v3, "message"

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h$6;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string v0, ""

    :goto_33
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h$6;->c:Lcom/bsgamesdk/android/api/h;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "actionname"

    const-string v3, "anti"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h$6;->c:Lcom/bsgamesdk/android/api/h;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/h;->a(Ljava/util/Map;Landroid/net/Uri$Builder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCacheGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$6;->c:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0

    :cond_7d
    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h$6;->a:Ljava/lang/String;

    goto :goto_1c

    :cond_82
    iget-object v0, p0, Lcom/bsgamesdk/android/api/h$6$1;->a:Lcom/bsgamesdk/android/api/h$6;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/h$6;->b:Ljava/lang/String;

    goto :goto_33
.end method