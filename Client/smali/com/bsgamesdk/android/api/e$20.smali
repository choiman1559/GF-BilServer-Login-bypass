.class final Lcom/bsgamesdk/android/api/e$20;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/model/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<",
        "Lcom/bsgamesdk/android/model/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$20;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$20;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$20;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$20;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$20;->e:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$20;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/model/l;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bsgamesdk/android/model/l;
    .registers 7
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

    const-string v1, "/api/free_flow/unicom/product/get_free_url"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "pip"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$20;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source_url"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$20;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$20;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$20;->c:Ljava/lang/String;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$20;->a:Ljava/lang/String;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$20;->b:Ljava/lang/String;

    if-eqz v2, :cond_5d

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$20;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$20;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$20;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bsgamesdk/android/api/e$20;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/bsgamesdk/android/utils/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$20;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseGetFreeUrlResponse(Ljava/lang/String;)Lcom/bsgamesdk/android/model/l;

    move-result-object v0

    return-object v0
.end method
