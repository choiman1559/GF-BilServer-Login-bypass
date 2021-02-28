.class Lcom/bsgamesdk/android/api/e$3;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/api/BSGameSdkAuth;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$3;->g:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$3;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$3;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$3;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$3;->e:Ljava/lang/String;

    iput p7, p0, Lcom/bsgamesdk/android/api/e$3;->f:I

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$3;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$3;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api/client/regV3"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$3;->c:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$3;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$3;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "captcha"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$3;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    const-string v2, "pwd"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$3;->a(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$3;->g:Lcom/bsgamesdk/android/api/e;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$3;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_64
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$3;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v1

    if-nez v1, :cond_a1

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "HttpClient is null"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_84
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_64 .. :try_end_84} :catch_84

    :catch_84
    move-exception v0

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v2, 0xea6a

    if-ne v1, v2, :cond_bb

    iget v1, p0, Lcom/bsgamesdk/android/api/e$3;->f:I

    if-ge v1, v5, :cond_bb

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$3;->g:Lcom/bsgamesdk/android/api/e;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$3;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$3;->e:Ljava/lang/String;

    iget v5, p0, Lcom/bsgamesdk/android/api/e$3;->f:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_a0
    return-object v0

    :cond_a1
    :try_start_a1
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$3;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ae

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$3;->c:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;Ljava/lang/String;)V

    :cond_ae
    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForString(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$3;->a:Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$3;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseRegisterUnameResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b9
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_a1 .. :try_end_b9} :catch_84

    move-result-object v0

    goto :goto_a0

    :cond_bb
    throw v0
.end method
