.class Lcom/bsgamesdk/android/api/e$1;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$1;->b:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$1;->a:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
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

    const-string v1, "/api/client/config"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$1;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$1;->a(Ljava/util/Map;)V

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

    :try_start_2d
    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_66

    const v2, 0x927c0

    if-ne v1, v2, :cond_4d

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$1;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v3}, Lcom/bsgamesdk/android/api/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    :cond_4d
    const-string v2, "server_message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    const-string v4, "invalid response"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    throw v4
    :try_end_61
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_2d .. :try_end_61} :catch_61
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_61} :catch_75

    :catch_61
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    throw v0

    :cond_66
    :try_start_66
    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/bsgamesdk/android/api/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/b;->a(Lorg/json/JSONObject;)V
    :try_end_72
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_66 .. :try_end_72} :catch_61
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_72} :catch_75

    const-string v0, ""

    return-object v0

    :catch_75
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
