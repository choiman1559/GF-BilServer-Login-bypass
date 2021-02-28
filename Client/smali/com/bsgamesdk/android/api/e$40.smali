.class Lcom/bsgamesdk/android/api/e$40;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bsgamesdk/android/api/c",
        "<",
        "Lcom/bsgamesdk/android/api/BSGameSdkAuth;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic e:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 6

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$40;->e:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$40;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$40;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$40;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$40;->d:Lcom/bsgamesdk/android/model/CaptchModel;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$40;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
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

    const-string v1, "api/client/user.info"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$40;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$40;->a(Ljava/util/Map;)V

    const-string v2, "access_key"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$40;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$40;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "check"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$40;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$40;->e:Lcom/bsgamesdk/android/api/e;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$40;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-static {v2, v3, v1}, Lcom/bsgamesdk/android/api/e;->a(Lcom/bsgamesdk/android/api/e;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$40;->e:Lcom/bsgamesdk/android/api/e;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$40;->a:Landroid/content/Context;

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

    :try_start_51
    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$40;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseMyInfoResponse(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$40;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;
    :try_end_63
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_51 .. :try_end_63} :catch_64

    return-object v1

    :catch_64
    move-exception v0

    throw v0
.end method
