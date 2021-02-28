.class public Lcom/android/data/sdk/api/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/android/data/sdk/PreDefined;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/data/sdk/PreDefined;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/data/sdk/api/e;->a:Lcom/android/data/sdk/PreDefined;

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "GAME_INFO_URL"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "GAME_INFO_URL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/api/e;->b:Ljava/lang/String;

    :cond_33
    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "GAME_INFO_URL_NET"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lcom/android/data/sdk/PreDefined;->getStaticData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "GAME_INFO_URL_NET"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/data/sdk/api/e;->c:Ljava/lang/String;

    :cond_4f
    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, ""

    const/4 v0, 0x0

    move v2, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_50

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_51

    const-string v4, "item_name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string v4, "item_desc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object v0, v1

    :goto_2f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_10

    :cond_34
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_50
    return-object v1

    :cond_51
    move-object v0, v1

    goto :goto_2f
.end method

.method private static b(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/data/sdk/api/e;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static c(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "appkey"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "appkey"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "appkey"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-static {p0}, Lcom/android/data/sdk/api/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/data/sdk/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/u;Ljava/lang/String;)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app/verify.channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/net/d;

    invoke-direct {v1}, Lcom/android/data/sdk/net/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/data/sdk/net/d;->a(Ljava/lang/String;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    sget-object v1, Lcom/android/data/sdk/domain/model/HttpMethod;->GET:Lcom/android/data/sdk/domain/model/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/d;->a(Lcom/android/data/sdk/domain/model/HttpMethod;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/net/d;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbsgamesdkhttp/u;->a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/e;

    move-result-object v0

    invoke-interface {v0}, Lbsgamesdkhttp/e;->a()Lbsgamesdkhttp/y;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->b()I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/data/sdk/api/b;)V
    .registers 9

    iget-object v0, p0, Lcom/android/data/sdk/api/e;->a:Lcom/android/data/sdk/PreDefined;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/data/sdk/api/e;->a:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v0}, Lcom/android/data/sdk/PreDefined;->getCDNUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    new-instance v0, Lcom/android/data/sdk/net/b$a;

    invoke-direct {v0}, Lcom/android/data/sdk/net/b$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/b$a;->a(Z)Lcom/android/data/sdk/net/b$a;

    move-result-object v0

    sget-object v1, Lcom/android/data/sdk/domain/model/RuntimeThread;->EXECUTOR:Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-virtual {v0, v1, p1}, Lcom/android/data/sdk/net/b$a;->a(Lcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;)Lcom/android/data/sdk/net/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/net/b$a;->a()Lcom/android/data/sdk/net/b;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/net/d;

    invoke-direct {v1}, Lcom/android/data/sdk/net/d;-><init>()V

    iget-object v2, p0, Lcom/android/data/sdk/api/e;->a:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v2}, Lcom/android/data/sdk/PreDefined;->getCDNUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/data/sdk/net/d;->a(Ljava/lang/String;)Lcom/android/data/sdk/net/d;

    move-result-object v1

    sget-object v2, Lcom/android/data/sdk/domain/model/HttpMethod;->GET:Lcom/android/data/sdk/domain/model/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/android/data/sdk/net/d;->a(Lcom/android/data/sdk/domain/model/HttpMethod;)Lcom/android/data/sdk/net/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/net/d;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->b()Lcom/android/data/sdk/domain/model/Timeout;

    move-result-object v2

    new-instance v3, Lbsgamesdkhttp/u$a;

    invoke-direct {v3}, Lbsgamesdkhttp/u$a;-><init>()V

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getConnectTimeout()J

    move-result-wide v4

    sget-object v6, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lbsgamesdkhttp/u$a;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getReadTimeout()J

    move-result-wide v4

    sget-object v2, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Lbsgamesdkhttp/u$a;->b(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/u$a;->a(Z)Lbsgamesdkhttp/u$a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/u$a;->a()Lbsgamesdkhttp/u;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;)V

    :goto_6a
    return-void

    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cdn config url is empty!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/data/sdk/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_6a
.end method

.method public a(Ljava/util/Map;Lcom/android/data/sdk/api/b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/data/sdk/api/b;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->c()Lcom/android/data/sdk/domain/model/SchemaHostList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/data/sdk/api/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/data/sdk/api/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/data/sdk/domain/model/SchemaHostList;->getSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/net/b$a;

    invoke-direct {v1}, Lcom/android/data/sdk/net/b$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/data/sdk/net/b$a;->a(Z)Lcom/android/data/sdk/net/b$a;

    move-result-object v1

    sget-object v2, Lcom/android/data/sdk/domain/model/RuntimeThread;->MAIN:Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-virtual {v1, v2, p2}, Lcom/android/data/sdk/net/b$a;->a(Lcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;)Lcom/android/data/sdk/net/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/net/b$a;->a()Lcom/android/data/sdk/net/b;

    move-result-object v1

    new-instance v2, Lcom/android/data/sdk/net/d;

    invoke-direct {v2}, Lcom/android/data/sdk/net/d;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/data/sdk/net/d;->a(Ljava/lang/String;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    sget-object v2, Lcom/android/data/sdk/domain/model/HttpMethod;->GET:Lcom/android/data/sdk/domain/model/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/net/d;->a(Lcom/android/data/sdk/domain/model/HttpMethod;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/net/d;->a(Ljava/util/Map;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/net/d;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->b()Lcom/android/data/sdk/domain/model/Timeout;

    move-result-object v2

    new-instance v3, Lbsgamesdkhttp/u$a;

    invoke-direct {v3}, Lbsgamesdkhttp/u$a;-><init>()V

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getConnectTimeout()J

    move-result-wide v4

    sget-object v6, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lbsgamesdkhttp/u$a;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getReadTimeout()J

    move-result-wide v4

    sget-object v2, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Lbsgamesdkhttp/u$a;->b(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/u$a;->a(Z)Lbsgamesdkhttp/u$a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/u$a;->a()Lbsgamesdkhttp/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;)V

    return-void
.end method

.method public b(Ljava/util/Map;Lcom/android/data/sdk/api/b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/data/sdk/api/b;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    :try_start_1
    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/android/data/sdk/api/e;->b(Ljava/util/Map;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_a3

    :cond_14
    :goto_14
    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->c()Lcom/android/data/sdk/domain/model/SchemaHostList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/domain/model/SchemaHostList;->bestSchemaHost(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/realtime_log/data_report_upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/net/b$a;

    invoke-direct {v1}, Lcom/android/data/sdk/net/b$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/data/sdk/net/b$a;->a(Z)Lcom/android/data/sdk/net/b$a;

    move-result-object v1

    sget-object v2, Lcom/android/data/sdk/domain/model/RuntimeThread;->MAIN:Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-virtual {v1, v2, p2}, Lcom/android/data/sdk/net/b$a;->a(Lcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;)Lcom/android/data/sdk/net/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/net/b$a;->a()Lcom/android/data/sdk/net/b;

    move-result-object v1

    new-instance v2, Lcom/android/data/sdk/net/d;

    invoke-direct {v2}, Lcom/android/data/sdk/net/d;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/data/sdk/net/d;->a(Ljava/lang/String;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    sget-object v2, Lcom/android/data/sdk/domain/model/HttpMethod;->POST:Lcom/android/data/sdk/domain/model/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/net/d;->a(Lcom/android/data/sdk/domain/model/HttpMethod;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/net/d;->a(Ljava/util/Map;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/net/d;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->b()Lcom/android/data/sdk/domain/model/Timeout;

    move-result-object v2

    new-instance v3, Lbsgamesdkhttp/u$a;

    invoke-direct {v3}, Lbsgamesdkhttp/u$a;-><init>()V

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getConnectTimeout()J

    move-result-wide v4

    sget-object v6, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lbsgamesdkhttp/u$a;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getReadTimeout()J

    move-result-wide v4

    sget-object v2, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Lbsgamesdkhttp/u$a;->b(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/u$a;->a(Z)Lbsgamesdkhttp/u$a;

    move-result-object v2

    new-instance v3, Lcom/android/data/sdk/net/a;

    iget-object v4, p0, Lcom/android/data/sdk/api/e;->a:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v3, v4}, Lcom/android/data/sdk/net/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/u$a;->a(Lbsgamesdkhttp/s;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/u$a;->a()Lbsgamesdkhttp/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;)V

    return-void

    :catch_a3
    move-exception v0

    goto/16 :goto_14
.end method

.method public c(Ljava/util/Map;Lcom/android/data/sdk/api/b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/data/sdk/api/b;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lcom/android/data/sdk/api/e;->b(Ljava/util/Map;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_a3

    :cond_13
    :goto_13
    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->c()Lcom/android/data/sdk/domain/model/SchemaHostList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/data/sdk/domain/model/SchemaHostList;->bestConfigSchemaHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app/time/conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/data/sdk/net/b$a;

    invoke-direct {v1}, Lcom/android/data/sdk/net/b$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/data/sdk/net/b$a;->a(Z)Lcom/android/data/sdk/net/b$a;

    move-result-object v1

    sget-object v2, Lcom/android/data/sdk/domain/model/RuntimeThread;->MAIN:Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-virtual {v1, v2, p2}, Lcom/android/data/sdk/net/b$a;->a(Lcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;)Lcom/android/data/sdk/net/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/net/b$a;->a()Lcom/android/data/sdk/net/b;

    move-result-object v1

    new-instance v2, Lcom/android/data/sdk/net/d;

    invoke-direct {v2}, Lcom/android/data/sdk/net/d;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/data/sdk/net/d;->a(Ljava/lang/String;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    sget-object v2, Lcom/android/data/sdk/domain/model/HttpMethod;->POST:Lcom/android/data/sdk/domain/model/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/net/d;->a(Lcom/android/data/sdk/domain/model/HttpMethod;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/net/d;->a(Ljava/util/Map;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/net/d;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->b()Lcom/android/data/sdk/domain/model/Timeout;

    move-result-object v2

    new-instance v3, Lbsgamesdkhttp/u$a;

    invoke-direct {v3}, Lbsgamesdkhttp/u$a;-><init>()V

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getConnectTimeout()J

    move-result-wide v4

    sget-object v6, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lbsgamesdkhttp/u$a;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getReadTimeout()J

    move-result-wide v4

    sget-object v2, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Lbsgamesdkhttp/u$a;->b(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/u$a;->a(Z)Lbsgamesdkhttp/u$a;

    move-result-object v2

    new-instance v3, Lcom/android/data/sdk/net/a;

    iget-object v4, p0, Lcom/android/data/sdk/api/e;->a:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v3, v4}, Lcom/android/data/sdk/net/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/u$a;->a(Lbsgamesdkhttp/s;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/u$a;->a()Lbsgamesdkhttp/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;)V

    return-void

    :catch_a3
    move-exception v0

    goto/16 :goto_13
.end method

.method public d(Ljava/util/Map;Lcom/android/data/sdk/api/b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/data/sdk/api/b;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_1
    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/android/data/sdk/api/e;->b(Ljava/util/Map;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_c2

    :cond_14
    :goto_14
    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/api/c;->c()Lcom/android/data/sdk/domain/model/SchemaHostList;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/data/sdk/domain/model/SchemaHostList;->bestSchemaHost(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/app/time/heartbeat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/data/sdk/api/e;->a:Lcom/android/data/sdk/PreDefined;

    invoke-virtual {v2}, Lcom/android/data/sdk/PreDefined;->getActivity1Class()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/data/sdk/domain/model/SchemaHostList;->bestSchemaHost(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app/v2/time/heartbeat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5f
    new-instance v1, Lcom/android/data/sdk/net/b$a;

    invoke-direct {v1}, Lcom/android/data/sdk/net/b$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/data/sdk/net/b$a;->a(Z)Lcom/android/data/sdk/net/b$a;

    move-result-object v1

    sget-object v2, Lcom/android/data/sdk/domain/model/RuntimeThread;->MAIN:Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-virtual {v1, v2, p2}, Lcom/android/data/sdk/net/b$a;->a(Lcom/android/data/sdk/domain/model/RuntimeThread;Lcom/android/data/sdk/api/b;)Lcom/android/data/sdk/net/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/data/sdk/net/b$a;->a()Lcom/android/data/sdk/net/b;

    move-result-object v1

    new-instance v2, Lcom/android/data/sdk/net/d;

    invoke-direct {v2}, Lcom/android/data/sdk/net/d;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/data/sdk/net/d;->a(Ljava/lang/String;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    sget-object v2, Lcom/android/data/sdk/domain/model/HttpMethod;->POST:Lcom/android/data/sdk/domain/model/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/android/data/sdk/net/d;->a(Lcom/android/data/sdk/domain/model/HttpMethod;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/data/sdk/net/d;->a(Ljava/util/Map;)Lcom/android/data/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/data/sdk/net/d;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/data/sdk/api/c;->b()Lcom/android/data/sdk/domain/model/Timeout;

    move-result-object v2

    new-instance v3, Lbsgamesdkhttp/u$a;

    invoke-direct {v3}, Lbsgamesdkhttp/u$a;-><init>()V

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getConnectTimeout()J

    move-result-wide v4

    sget-object v6, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lbsgamesdkhttp/u$a;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/data/sdk/domain/model/Timeout;->getReadTimeout()J

    move-result-wide v4

    sget-object v2, Lcom/android/data/sdk/domain/model/Timeout;->UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Lbsgamesdkhttp/u$a;->b(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    invoke-virtual {v2, v7}, Lbsgamesdkhttp/u$a;->a(Z)Lbsgamesdkhttp/u$a;

    move-result-object v2

    new-instance v3, Lcom/android/data/sdk/net/a;

    iget-object v4, p0, Lcom/android/data/sdk/api/e;->a:Lcom/android/data/sdk/PreDefined;

    invoke-direct {v3, v4}, Lcom/android/data/sdk/net/a;-><init>(Lcom/android/data/sdk/PreDefined;)V

    invoke-virtual {v2, v3}, Lbsgamesdkhttp/u$a;->a(Lbsgamesdkhttp/s;)Lbsgamesdkhttp/u$a;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/u$a;->a()Lbsgamesdkhttp/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/data/sdk/net/b;->a(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;)V

    return-void

    :catch_c2
    move-exception v0

    goto/16 :goto_14
.end method
