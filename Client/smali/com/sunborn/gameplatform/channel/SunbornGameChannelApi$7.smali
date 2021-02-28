.class Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;
.super Ljava/lang/Object;
.source "SunbornGameChannelApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->submitRoleInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

.field final synthetic val$Value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    iput-object p2, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;->val$Value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 314
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;->val$Value:Ljava/lang/String;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "data":Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "type":Ljava/lang/String;
    const-string v6, "enterGame"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 318
    const-string v6, "server_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "server_name":Ljava/lang/String;
    const-string v6, "role_id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "role_id":Ljava/lang/String;
    const-string v6, "role_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "role_name":Ljava/lang/String;
    iget-object v6, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v6}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$600(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v6

    iget-object v7, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v7}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$500(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4, v2, v3}, Lcom/bsgamesdk/android/BSGameSdk;->notifyZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v6, "submit info enterGame complete"

    invoke-static {v6}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V

    .line 333
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "role_id":Ljava/lang/String;
    .end local v3    # "role_name":Ljava/lang/String;
    .end local v4    # "server_name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-void

    .line 323
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_3c
    const-string v6, "createRole"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 324
    const-string v6, "role_id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .restart local v2    # "role_id":Ljava/lang/String;
    const-string v6, "role_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    .restart local v3    # "role_name":Ljava/lang/String;
    iget-object v6, p0, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi$7;->this$0:Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;

    invoke-static {v6}, Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;->access$600(Lcom/sunborn/gameplatform/channel/SunbornGameChannelApi;)Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Lcom/bsgamesdk/android/BSGameSdk;->createRole(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v6, "submit info createRole complete"

    invoke-static {v6}, Lcom/sunborn/gameplatform/core/common/SLog;->d(Ljava/lang/String;)V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_3b

    .line 329
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "role_id":Ljava/lang/String;
    .end local v3    # "role_name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :catch_5f
    move-exception v1

    .line 331
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3b
.end method
