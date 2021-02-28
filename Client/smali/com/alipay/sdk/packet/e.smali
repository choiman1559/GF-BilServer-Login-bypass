.class public abstract Lcom/alipay/sdk/packet/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "msp-gzip"

.field public static final b:Ljava/lang/String; = "Msp-Param"

.field public static final c:Ljava/lang/String; = "Operation-Type"

.field public static final d:Ljava/lang/String; = "content-type"

.field public static final e:Ljava/lang/String; = "Version"

.field public static final f:Ljava/lang/String; = "AppId"

.field public static final g:Ljava/lang/String; = "des-mode"

.field public static final h:Ljava/lang/String; = "namespace"

.field public static final i:Ljava/lang/String; = "api_name"

.field public static final j:Ljava/lang/String; = "api_version"

.field public static final k:Ljava/lang/String; = "data"

.field public static final l:Ljava/lang/String; = "params"

.field public static final m:Ljava/lang/String; = "public_key"

.field public static final n:Ljava/lang/String; = "device"

.field public static final o:Ljava/lang/String; = "action"

.field public static final p:Ljava/lang/String; = "type"

.field public static final q:Ljava/lang/String; = "method"


# instance fields
.field protected r:Z

.field protected s:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/sdk/packet/e;->r:Z

    iput-boolean v0, p0, Lcom/alipay/sdk/packet/e;->s:Z

    return-void
.end method

.method protected static a(Lcom/alipay/sdk/net/a$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/alipay/sdk/net/a$b;->a:Ljava/util/Map;

    if-nez v0, :cond_d

    move-object v0, v1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/alipay/sdk/net/a$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_6

    :cond_19
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "method"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected static a(Lcom/alipay/sdk/net/a$b;)Z
    .registers 2

    const-string v0, "msp-gzip"

    invoke-static {p0, v0}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/net/a$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "public_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/alipay/sdk/data/c;->a(Ljava/lang/String;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_31} :catch_33

    const/4 v0, 0x1

    goto :goto_7

    :catch_33
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_7
.end method


# virtual methods
.method public a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Lcom/alipay/sdk/packet/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {p2}, Lcom/alipay/sdk/util/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "mspl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Packet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/sdk/packet/c;

    iget-boolean v0, p0, Lcom/alipay/sdk/packet/e;->s:Z

    invoke-direct {v1, v0}, Lcom/alipay/sdk/packet/c;-><init>(Z)V

    new-instance v2, Lcom/alipay/sdk/packet/b;

    invoke-virtual {p0}, Lcom/alipay/sdk/packet/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/sdk/packet/e;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, p1, p3, v3}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/alipay/sdk/packet/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5, p3}, Lcom/alipay/sdk/packet/e;->a(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/sdk/packet/e;->r:Z

    const-string v0, "iSr"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v0}, Lcom/alipay/sdk/packet/c;->a(Lcom/alipay/sdk/packet/b;ZLjava/lang/String;)Lcom/alipay/sdk/packet/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/packet/d;->a()Z

    move-result v2

    invoke-virtual {p0, v2, p3}, Lcom/alipay/sdk/packet/e;->a(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lcom/alipay/sdk/net/a$a;

    invoke-virtual {v0}, Lcom/alipay/sdk/packet/d;->b()[B

    move-result-object v0

    invoke-direct {v4, p4, v2, v0}, Lcom/alipay/sdk/net/a$a;-><init>(Ljava/lang/String;Ljava/util/Map;[B)V

    invoke-static {p2, v4}, Lcom/alipay/sdk/net/a;->a(Landroid/content/Context;Lcom/alipay/sdk/net/a$a;)Lcom/alipay/sdk/net/a$b;

    move-result-object v0

    if-nez v0, :cond_62

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    invoke-static {v0}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/net/a$b;)Z

    move-result v2

    iget-object v0, v0, Lcom/alipay/sdk/net/a$b;->c:[B

    new-instance v4, Lcom/alipay/sdk/packet/d;

    invoke-direct {v4, v2, v0}, Lcom/alipay/sdk/packet/d;-><init>(Z[B)V

    const-string v0, "iSr"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/alipay/sdk/packet/c;->a(Lcom/alipay/sdk/packet/d;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Lcom/alipay/sdk/packet/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/packet/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    if-eqz p5, :cond_90

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    :cond_90
    return-object v0
.end method

.method protected a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, p3}, Lcom/alipay/sdk/util/b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    :try_start_15
    const-string v3, "tid"

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "user_agent"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->c()Lcom/alipay/sdk/data/c;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/alipay/sdk/data/c;->a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/tid/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "has_alipay"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    invoke-static {p1, v4, v5}, Lcom/alipay/sdk/util/n;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "has_msp_app"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/util/n;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "external_info"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "app_key"

    const-string v4, "2014052600006128"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "utdid"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "new_client_key"

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pa"

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/data/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_72} :catch_77

    :goto_72
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_77
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_72
.end method

.method protected a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    :cond_2e
    if-eqz p2, :cond_5c

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3d

    :cond_57
    const-string v0, "params"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5c
    const-string v0, "data"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(ZLjava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "msp-gzip"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Operation-Type"

    const-string v2, "alipay.msp.cashier.dispatch.bytes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content-type"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Version"

    const-string v2, "2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppId"

    const-string v2, "TAOBAO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Msp-Param"

    invoke-static {p2}, Lcom/alipay/sdk/packet/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "des-mode"

    const-string v2, "CBC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract a()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "4.9.0"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "namespace"

    const-string v2, "com.alipay.mobilecashier"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "api_name"

    const-string v2, "com.alipay.mcpay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "api_version"

    invoke-virtual {p0}, Lcom/alipay/sdk/packet/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/packet/e;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
