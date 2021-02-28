.class public Lcom/alipay/sdk/util/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x2

    :try_start_7
    new-array v3, v1, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    array-length v4, v3

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_37

    aget-object v5, v3, v1

    if-nez v5, :cond_1b

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_1b
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_32} :catch_33

    goto :goto_1f

    :catch_33
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :cond_37
    return-object v2
.end method
