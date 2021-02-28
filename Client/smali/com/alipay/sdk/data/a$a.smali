.class public final Lcom/alipay/sdk/data/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/data/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/data/a$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/sdk/data/a$a;->b:I

    iput-object p3, p0, Lcom/alipay/sdk/data/a$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alipay/sdk/data/a$a;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/alipay/sdk/data/a$a;

    const-string v1, "pn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "pk"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/data/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/data/a$a;->a(Lorg/json/JSONObject;)Lcom/alipay/sdk/data/a$a;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/data/a$a;

    invoke-static {v0}, Lcom/alipay/sdk/data/a$a;->a(Lcom/alipay/sdk/data/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    :cond_21
    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Lcom/alipay/sdk/data/a$a;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pn"

    iget-object v3, p0, Lcom/alipay/sdk/data/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "v"

    iget v3, p0, Lcom/alipay/sdk/data/a$a;->b:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pk"

    iget-object v3, p0, Lcom/alipay/sdk/data/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_3

    :catch_22
    move-exception v1

    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/alipay/sdk/data/a$a;->a(Lcom/alipay/sdk/data/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
