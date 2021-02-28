.class public Lcom/bsgamesdk/android/api/checknetspeed/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/api/checknetspeed/b$a;
    }
.end annotation


# instance fields
.field public a:J

.field public final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/b;->a:J

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/b;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lorg/apache/http/client/HttpClient;
    .registers 6

    const/16 v4, 0x2710

    const/4 v3, 0x1

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v1, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/HashMap;Ljava/util/concurrent/Callable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bsgamesdk/android/api/checknetspeed/b$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/bsgamesdk/android/api/checknetspeed/b$1;-><init>(Lcom/bsgamesdk/android/api/checknetspeed/b;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
