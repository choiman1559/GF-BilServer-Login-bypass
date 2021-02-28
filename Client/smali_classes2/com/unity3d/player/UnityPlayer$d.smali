.class final Lcom/unity3d/player/UnityPlayer$d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$d;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer$d;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 10

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "game_bundle_id"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_model"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device_id"

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$d;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2}, Lcom/unity3d/player/UnityPlayer;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "splash_sdk_version"

    const-string v2, "2017.4.40c1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mcc"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "builder"

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$d;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2}, Lcom/unity3d/player/UnityPlayer;->getBuilderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/unity3d/splash/services/core/request/WebRequest;

    const-string v2, "https://splash.unity.cn/api/register-game-launch"

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/unity3d/splash/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/request/WebRequest;->setBody(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->makeRequest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_120

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "blocked"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "show_ads"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "game_id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$d;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->z(Lcom/unity3d/player/UnityPlayer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_126

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_126

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_c0
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "game_detail"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "game_id"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "show_ads"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "blocked"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "url"

    const-string v6, "url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "hash"

    const-string v6, "hash"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "version"

    const-string v6, "version"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_120

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_120

    if-eqz v1, :cond_120

    const-string v0, ""

    if-eq v1, v0, :cond_120

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unity3d/splash/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_120} :catch_121

    :cond_120
    :goto_120
    return-object v7

    :catch_121
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_120

    :cond_126
    move-object v1, v2

    goto :goto_c0
.end method
