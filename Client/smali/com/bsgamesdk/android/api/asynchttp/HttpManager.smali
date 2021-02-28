.class public Lcom/bsgamesdk/android/api/asynchttp/HttpManager;
.super Ljava/lang/Object;


# static fields
.field public static final BILI_HTTP_UA_BILIAPI:Ljava/lang/String; = "Mozilla/5.0 BSGameSDK"

.field public static final BILI_HTTP_UA_BILIDROID:Ljava/lang/String; = "Mozilla/5.0 BSGameSDK"

.field public static final TAG:Ljava/lang/String;

.field public static sDefaultClientManager:Lorg/apache/http/conn/ClientConnectionManager;

.field public static sDefaultParams:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->checkDefault()V

    return-void
.end method

.method public static checkDefault()V
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultParams:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->getDefaultParams(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultParams:Lorg/apache/http/params/HttpParams;

    :cond_b
    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultClientManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->getDefaultManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    sput-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultClientManager:Lorg/apache/http/conn/ClientConnectionManager;

    :cond_15
    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultParams:Lorg/apache/http/params/HttpParams;

    sget v1, Lcom/bsgamesdk/android/api/b;->q:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultParams:Lorg/apache/http/params/HttpParams;

    sget v1, Lcom/bsgamesdk/android/api/b;->r:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public static createClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;
    .registers 3

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->checkDefault()V

    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultClientManager:Lorg/apache/http/conn/ClientConnectionManager;

    sget-object v1, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultParams:Lorg/apache/http/params/HttpParams;

    invoke-static {p0, v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createClient(Landroid/content/Context;I)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0, p1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->genHttpParams(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    new-instance v0, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    invoke-direct {v0, v2}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_3f

    :try_start_b
    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    new-instance v4, Lcom/bsgamesdk/android/api/asynchttp/EasySSLSocketFactory;

    invoke-direct {v4}, Lcom/bsgamesdk/android/api/asynchttp/EasySSLSocketFactory;-><init>()V

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    if-eqz p0, :cond_3e

    new-instance v1, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3e} :catch_48

    :cond_3e
    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_43
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_3e

    :catch_48
    move-exception v1

    goto :goto_43
.end method

.method public static createClient(Landroid/content/Context;Ljava/lang/String;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;
    .registers 4

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->checkDefault()V

    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultClientManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-static {p1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->getDefaultParams(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createClient(Landroid/content/Context;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;
    .registers 7

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->checkDefault()V

    const/4 v1, 0x0

    :try_start_4
    new-instance v0, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    invoke-direct {v0, p1, p2}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_14

    if-eqz p0, :cond_13

    :try_start_b
    new-instance v1, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/api/asynchttp/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_1d

    :cond_13
    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_18
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_13

    :catch_1d
    move-exception v1

    goto :goto_18
.end method

.method public static createClient(Landroid/content/Context;Lorg/apache/http/params/HttpParams;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;
    .registers 3

    invoke-static {}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->checkDefault()V

    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultClientManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-static {p0, v0, p1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createClient(I)Lorg/apache/http/client/HttpClient;
    .registers 9

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v0, "Mozilla/5.0 BSGameSDK"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v2, p0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, p0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v0, 0x2000

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x32

    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v0}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3f} :catch_72

    :try_start_3f
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_71} :catch_7a

    :goto_71
    return-object v0

    :catch_72
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_76
    invoke-static {v1, v6}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_71

    :catch_7a
    move-exception v1

    goto :goto_76
.end method

.method public static createClient(II)Lorg/apache/http/client/HttpClient;
    .registers 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v0, "Mozilla/5.0 BSGameSDK"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v2, p0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v0, 0x2000

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x32

    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v0}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_43} :catch_76

    :try_start_43
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_75} :catch_7e

    :goto_75
    return-object v0

    :catch_76
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_7a
    invoke-static {v1, v6}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_75

    :catch_7e
    move-exception v1

    goto :goto_7a
.end method

.method public static executeForBitmap(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeGetForBitmap(Lorg/apache/http/client/methods/HttpRequestBase;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public static executeForClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static executeForContent(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->executeForContent(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static executeForContent(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;J)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForContent(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/io/InputStream;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public static executeForNothing(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForNothing(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void
.end method

.method public static executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForString(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public static executeForString(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0, p2}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(Landroid/content/Context;I)Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1}, Lcom/bsgamesdk/android/api/asynchttp/EasyHttpClient;->executeForString(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public static genHttpParams(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;
    .registers 4

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string v1, "compatibility"

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "Mozilla/5.0 BSGameSDK"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :goto_32
    return-object v0

    :cond_33
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public static getDefaultManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    new-instance v4, Lcom/bsgamesdk/android/api/asynchttp/EasySSLSocketFactory;

    invoke-direct {v4}, Lcom/bsgamesdk/android/api/asynchttp/EasySSLSocketFactory;-><init>()V

    const/16 v5, 0x1bb

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    sget-object v3, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->sDefaultParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2e} :catch_2f

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    move-object v0, v1

    goto :goto_2e
.end method

.method public static getDefaultParams(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;
    .registers 3

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    sget v1, Lcom/bsgamesdk/android/api/b;->q:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lcom/bsgamesdk/android/api/b;->r:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string v1, "compatibility"

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "Mozilla/5.0 BSGameSDK"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :goto_36
    return-object v0

    :cond_37
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    goto :goto_36
.end method
