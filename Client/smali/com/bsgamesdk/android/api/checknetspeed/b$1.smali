.class Lcom/bsgamesdk/android/api/checknetspeed/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/checknetspeed/b;->a(Ljava/util/HashMap;Ljava/util/concurrent/Callable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/Callable;

.field final synthetic d:Lcom/bsgamesdk/android/api/checknetspeed/b;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/api/checknetspeed/b;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .registers 5

    iput-object p1, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->d:Lcom/bsgamesdk/android/api/checknetspeed/b;

    iput-object p2, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->c:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([Lcom/qiniu/android/dns/Record;)V
    .registers 4

    new-instance v0, Lcom/bsgamesdk/android/api/checknetspeed/b$a;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->d:Lcom/bsgamesdk/android/api/checknetspeed/b;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/checknetspeed/b$a;-><init>(Lcom/bsgamesdk/android/api/checknetspeed/b;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    const/4 v1, 0x0

    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_70

    invoke-static {}, Lcom/bsgamesdk/android/api/checknetspeed/b;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v3}, Lorg/apache/http/client/methods/HttpHead;-><init>()V

    const-string v4, "host"

    iget-object v5, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    iget-object v6, v6, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/api/client/config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpHead;->setURI(Ljava/net/URI;)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v4

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_63

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    aget-object v4, v0, v1

    iput-wide v2, v4, Lcom/qiniu/android/dns/Record;->requestime:J

    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_63
    aget-object v2, v0, v1

    const-wide/32 v4, 0x3b9ac9ff

    iput-wide v4, v2, Lcom/qiniu/android/dns/Record;->requestime:J
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_60

    :catch_6b
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :goto_6f
    return-void

    :cond_70
    :try_start_70
    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->a([Lcom/qiniu/android/dns/Record;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/api/checknetspeed/b$1;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_78} :catch_6b

    goto :goto_6f
.end method
