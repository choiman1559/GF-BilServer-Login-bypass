.class final Lcom/bsgamesdk/android/api/e$21;
.super Lcom/bsgamesdk/android/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/e;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/api/e$21;->a:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/api/e$21;->b(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Void;
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

    const-string v1, "/api/config"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v2, "Mozilla/5.0 BSGameSDK"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_21
    iget-object v0, p0, Lcom/bsgamesdk/android/api/e$21;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->checkIsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "code"

    const/16 v3, -0xb

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4e

    const-string v0, "server_message"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "message"

    const-string v4, "invalid response"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v3, v2, v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_21 .. :try_end_49} :catch_49
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_49} :catch_55

    :catch_49
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    throw v0

    :cond_4e
    :try_start_4e
    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/b;->d(Ljava/lang/String;)V
    :try_end_53
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_4e .. :try_end_53} :catch_49
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_53} :catch_55

    const/4 v0, 0x0

    return-object v0

    :catch_55
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    new-instance v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
