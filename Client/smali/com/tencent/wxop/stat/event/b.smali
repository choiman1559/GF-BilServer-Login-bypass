.class public Lcom/tencent/wxop/stat/event/b;
.super Lcom/tencent/wxop/stat/event/e;


# instance fields
.field protected a:Lcom/tencent/wxop/stat/event/c;

.field private m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .registers 7

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wxop/stat/event/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    new-instance v0, Lcom/tencent/wxop/stat/event/c;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/event/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/wxop/stat/event/b;->m:J

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iput-object p3, v0, Lcom/tencent/wxop/stat/event/c;->a:Ljava/lang/String;

    return-void
.end method

.method private h()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/event/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/event/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getCommonKeyValueForKVEvent(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v1

    if-lez v1, :cond_2f

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v1, v1, Lcom/tencent/wxop/stat/event/c;->c:Lorg/json/JSONObject;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v1, v1, Lcom/tencent/wxop/stat/event/c;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_30

    :cond_26
    iget-object v1, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/tencent/wxop/stat/event/c;->c:Lorg/json/JSONObject;

    :cond_2f
    return-void

    :cond_30
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_44
    iget-object v2, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v2, v2, Lcom/tencent/wxop/stat/event/c;->c:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_57} :catch_58

    goto :goto_38

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_38
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/event/EventType;
    .registers 2

    sget-object v0, Lcom/tencent/wxop/stat/event/EventType;->CUSTOM:Lcom/tencent/wxop/stat/event/EventType;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/tencent/wxop/stat/event/b;->m:J

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 6

    const-string v0, "ei"

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v1, v1, Lcom/tencent/wxop/stat/event/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/tencent/wxop/stat/event/b;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const-string v0, "du"

    iget-wide v2, p0, Lcom/tencent/wxop/stat/event/b;->m:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_18
    iget-object v0, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v0, v0, Lcom/tencent/wxop/stat/event/c;->b:Lorg/json/JSONArray;

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/tencent/wxop/stat/event/b;->h()V

    const-string v0, "kv"

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v1, v1, Lcom/tencent/wxop/stat/event/c;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2a
    const/4 v0, 0x1

    return v0

    :cond_2c
    const-string v0, "ar"

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    iget-object v1, v1, Lcom/tencent/wxop/stat/event/c;->b:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2a
.end method

.method public b()Lcom/tencent/wxop/stat/event/c;
    .registers 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/b;->a:Lcom/tencent/wxop/stat/event/c;

    return-object v0
.end method
