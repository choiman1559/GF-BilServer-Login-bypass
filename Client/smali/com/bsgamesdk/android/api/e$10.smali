.class Lcom/bsgamesdk/android/api/e$10;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;)V
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bsgamesdk/android/api/e;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/e;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$10;->c:Lcom/bsgamesdk/android/api/e;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/e$10;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/e$10;->b:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$10;->b(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bsgamesdk/android/api/e$10;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/api/e;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/e$10;->a(Ljava/util/Map;)V

    invoke-static {v1}, Lcom/bsgamesdk/android/api/e;->b(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryCachePost(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    const-string v0, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_2e
    const-string v2, "initConfig"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$10;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_79

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->K()I

    move-result v0

    :cond_3e
    :goto_3e
    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$10;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    :goto_46
    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_91

    const v2, 0x927c0

    if-ne v1, v2, :cond_60

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$10;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v3}, Lcom/bsgamesdk/android/api/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    :cond_60
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
    :try_end_74
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_2e .. :try_end_74} :catch_74
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_74} :catch_a0

    :catch_74
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    throw v0

    :cond_79
    :try_start_79
    const-string v2, "loginConfig"

    iget-object v3, p0, Lcom/bsgamesdk/android/api/e$10;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->M()I

    move-result v0

    goto :goto_3e

    :cond_8a
    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$10;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_91
    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v2, p0, Lcom/bsgamesdk/android/api/e$10;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/bsgamesdk/android/api/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/b;->a(Lorg/json/JSONObject;)V
    :try_end_9d
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_79 .. :try_end_9d} :catch_74
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_9d} :catch_a0

    const-string v0, ""

    return-object v0

    :catch_a0
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
