.class public Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;
.super Ljava/lang/Object;
.source "BaseHttpFrameworkServiceImp.java"

# interfaces
.implements Lcom/lohanry/android/framework/service/FrameworkService;


# instance fields
.field private final FIRST_TIME:I

.field private TAG:Ljava/lang/String;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x1e

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->FIRST_TIME:I

    .line 25
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 26
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 34
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 6
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    .prologue
    const-wide/16 v2, 0x1e

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->FIRST_TIME:I

    .line 25
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 26
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 36
    iput-object p1, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;J)V
    .registers 6
    .param p0, "x0"    # Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;
    .param p1, "x1"    # Lcom/lohanry/android/framework/network/httprequest/BaseRequest;
    .param p2, "x2"    # Lokhttp3/Callback;
    .param p3, "x3"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->delayRequest(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;J)V

    return-void
.end method

.method private delayRequest(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;J)V
    .registers 12
    .param p1, "baseRequest"    # Lcom/lohanry/android/framework/network/httprequest/BaseRequest;
    .param p2, "callback"    # Lokhttp3/Callback;
    .param p3, "delay"    # J

    .prologue
    .line 80
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$2;-><init>(Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;JLcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method


# virtual methods
.method public request(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;)Lokhttp3/Call;
    .registers 6
    .param p1, "baseRequest"    # Lcom/lohanry/android/framework/network/httprequest/BaseRequest;
    .param p2, "callback"    # Lokhttp3/Callback;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->getOKHttpRequest()Lokhttp3/Request;

    move-result-object v1

    .line 41
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 42
    .local v0, "call":Lokhttp3/Call;
    invoke-interface {v0, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 43
    return-object v0
.end method

.method public requestHttp(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V
    .registers 4
    .param p1, "baseRequest"    # Lcom/lohanry/android/framework/network/httprequest/BaseRequest;

    .prologue
    .line 47
    new-instance v0, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;

    invoke-direct {v0, p0, p1}, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp$1;-><init>(Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;Lcom/lohanry/android/framework/network/httprequest/BaseRequest;)V

    .line 76
    .local v0, "callback":Lokhttp3/Callback;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lohanry/android/framework/network/httprequest/BaseRequest;->addTotalRequestTime(I)V

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/lohanry/android/framework/network/httpclient/BaseHttpFrameworkServiceImp;->request(Lcom/lohanry/android/framework/network/httprequest/BaseRequest;Lokhttp3/Callback;)Lokhttp3/Call;

    .line 78
    return-void
.end method
