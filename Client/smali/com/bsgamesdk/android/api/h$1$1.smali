.class Lcom/bsgamesdk/android/api/h$1$1;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/h$1;->run()V
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
.field final synthetic a:Lcom/bsgamesdk/android/api/h$1;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/h$1;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/h$1$1;->b(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Void;
    .registers 7
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

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget v4, v4, Lcom/bsgamesdk/android/api/h$1;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "message"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/h$1;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "source_url"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/h$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->d:Lcom/bsgamesdk/android/model/l;

    if-eqz v1, :cond_fc

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "flag"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/h$1;->d:Lcom/bsgamesdk/android/model/l;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/l;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "ip"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/h$1;->d:Lcom/bsgamesdk/android/model/l;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "pip"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/h$1;->d:Lcom/bsgamesdk/android/model/l;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "target_url"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/h$1;->d:Lcom/bsgamesdk/android/model/l;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "product"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/h$1;->d:Lcom/bsgamesdk/android/model/l;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/l;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b5
    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "actionname"

    const-string v3, "free_flow"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/h;->a(Ljava/util/Map;Landroid/net/Uri$Builder;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0

    :cond_fc
    iget-object v1, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h$1;->e:Lcom/bsgamesdk/android/api/h;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/h;->h:Ljava/util/Map;

    const-string v2, "target_url"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/h$1$1;->a:Lcom/bsgamesdk/android/api/h$1;

    iget-object v3, v3, Lcom/bsgamesdk/android/api/h$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5
.end method
