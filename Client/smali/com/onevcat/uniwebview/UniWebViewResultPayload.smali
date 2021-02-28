.class public Lcom/onevcat/uniwebview/UniWebViewResultPayload;
.super Ljava/lang/Object;
.source "UniWebViewResultPayload.java"


# instance fields
.field data:Ljava/lang/String;

.field identifier:Ljava/lang/String;

.field resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "identifier"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->identifier:Ljava/lang/String;

    .line 24
    const-string v2, "resultCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->resultCode:Ljava/lang/String;

    .line 25
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->data:Ljava/lang/String;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_20} :catch_21

    .line 29
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_20
    return-void

    .line 26
    :catch_21
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_20
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "resultCode"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->identifier:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->resultCode:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->data:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v0, "dic":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "identifier"

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v2, "resultCode"

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "data"

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->data:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 43
    .local v1, "obj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
