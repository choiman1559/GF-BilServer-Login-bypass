.class Lcom/bsgamesdk/android/api/e$37;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
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

.field final synthetic c:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$37;->f:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$37;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$37;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/e$37;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    iput-object p5, p0, Lcom/bsgamesdk/android/api/e$37;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/api/e$37;->e:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$37;->b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;
    .registers 8
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

    const-string v1, "/api/client/v2/tourist.login"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$37;->a:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "captcha"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$37;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "challenge"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$37;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getChallenge()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "validate"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$37;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getValidate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "seccode"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$37;->c:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v3}, Lcom/bsgamesdk/android/model/CaptchModel;->getSeccode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, "captcha_type"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$37;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string v2, "ctoken"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$37;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$37;->a(Ljava/util/Map;)V

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

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    invoke-direct {v1}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;-><init>()V

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v2

    if-nez v2, :cond_b9

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "HttpClient is null"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b9
    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForString(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->parseTouristLoginResponse(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$37;->f:Lcom/bsgamesdk/android/api/e;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$37;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v4, v1, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mergeMyInfo(Lcom/bsgamesdk/android/api/BSGameSdkAuth;)V

    return-object v1
.end method
