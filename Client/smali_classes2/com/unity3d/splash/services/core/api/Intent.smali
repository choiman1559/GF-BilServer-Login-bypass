.class public Lcom/unity3d/splash/services/core/api/Intent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/api/Intent$IntentException;,
        Lcom/unity3d/splash/services/core/api/Intent$IntentError;
    }
.end annotation


# static fields
.field private static _activeActivity:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canOpenIntent(Lorg/json/JSONObject;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Intent;->intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/api/Intent;->checkIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_17
    .catch Lcom/unity3d/splash/services/core/api/Intent$IntentException; {:try_start_2 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string v1, "Couldn\'t resolve intent"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/api/Intent$IntentException;->getError()Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/api/Intent$IntentException;->getField()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public static canOpenIntents(Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 9
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v1

    :goto_c
    if-ge v0, v3, :cond_4b

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_18
    invoke-static {v4}, Lcom/unity3d/splash/services/core/api/Intent;->intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/splash/services/core/api/Intent;->checkIntentResolvable(Landroid/content/Intent;)Z

    move-result v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_23
    .catch Lcom/unity3d/splash/services/core/api/Intent$IntentException; {:try_start_18 .. :try_end_23} :catch_26
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_23} :catch_3c

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catch_26
    move-exception v0

    const-string v2, "Exception parsing intent"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/api/Intent$IntentException;->getError()Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/api/Intent$IntentException;->getField()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    sget-object v2, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->JSON_EXCEPTION:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_3b

    :cond_4b
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_3b
.end method

.method private static checkIntentResolvable(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private static getStartingActivity()Landroid/app/Activity;
    .registers 2

    const/4 v0, 0x0

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_15
.end method

.method private static intentFromMetadata(Lorg/json/JSONObject;)Landroid/content/Intent;
    .registers 10

    const-string v0, "className"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "uri"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "mimeType"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "categories"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    const-string v6, "flags"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "extras"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    if-eqz v1, :cond_64

    if-nez v0, :cond_64

    if-nez v2, :cond_64

    if-nez v4, :cond_64

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_63

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_63
    :goto_63
    return-object v0

    :cond_64
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_70

    if-eqz v1, :cond_70

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_70
    if-eqz v2, :cond_75

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_75
    if-eqz v3, :cond_7e

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_7e
    if-eqz v4, :cond_83

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_83
    if-eqz v6, :cond_92

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_92

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_92
    invoke-static {v8, v5}, Lcom/unity3d/splash/services/core/api/Intent;->setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_a0

    new-instance v0, Lcom/unity3d/splash/services/core/api/Intent$IntentException;

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    invoke-direct {v0, v1, v5}, Lcom/unity3d/splash/services/core/api/Intent$IntentException;-><init>(Lcom/unity3d/splash/services/core/api/Intent$IntentError;Ljava/lang/Object;)V

    throw v0

    :cond_a0
    invoke-static {v8, v7}, Lcom/unity3d/splash/services/core/api/Intent;->setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_ae

    new-instance v0, Lcom/unity3d/splash/services/core/api/Intent$IntentException;

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    invoke-direct {v0, v1, v7}, Lcom/unity3d/splash/services/core/api/Intent$IntentException;-><init>(Lcom/unity3d/splash/services/core/api/Intent$IntentError;Ljava/lang/Object;)V

    throw v0

    :cond_ae
    move-object v0, v8

    goto :goto_63
.end method

.method public static launch(Lorg/json/JSONObject;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 13
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "className"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "uri"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "mimeType"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "categories"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    const-string v6, "flags"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "extras"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    if-eqz v1, :cond_7a

    if-nez v0, :cond_7a

    if-nez v2, :cond_7a

    if-nez v4, :cond_7a

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_65

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_65
    :goto_65
    if-eqz v0, :cond_dd

    invoke-static {}, Lcom/unity3d/splash/services/core/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_d5

    invoke-static {}, Lcom/unity3d/splash/services/core/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_79
    return-void

    :cond_7a
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_86

    if-eqz v1, :cond_86

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_86
    if-eqz v2, :cond_8b

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8b
    if-eqz v3, :cond_c5

    if-eqz v4, :cond_c5

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_96
    :goto_96
    if-eqz v6, :cond_a5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_a5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_a5
    invoke-static {v8, v5}, Lcom/unity3d/splash/services/core/api/Intent;->setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_b4

    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v5, v1, v9

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :cond_b4
    invoke-static {v8, v7}, Lcom/unity3d/splash/services/core/api/Intent;->setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_c3

    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v7, v1, v9

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :cond_c3
    move-object v0, v8

    goto :goto_65

    :cond_c5
    if-eqz v3, :cond_cf

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_96

    :cond_cf
    if-eqz v4, :cond_96

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_96

    :cond_d5
    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_79

    :cond_dd
    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_79
.end method

.method public static removeActiveActivity(Landroid/app/Activity;)V
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    if-eqz p0, :cond_1d

    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    :cond_1d
    return-void
.end method

.method public static setActiveActivity(Landroid/app/Activity;)V
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    :goto_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent;->_activeActivity:Ljava/lang/ref/WeakReference;

    goto :goto_5
.end method

.method private static setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_21

    move v0, v1

    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    :try_start_10
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_1a
    move-exception v0

    const-string v2, "Couldn\'t parse categories for intent"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x1

    goto :goto_20
.end method

.method private static setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    :cond_19
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_27

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_9

    :cond_27
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_35

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse launch intent extra "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    move v0, v1

    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2b

    :try_start_a
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_21

    move-result-object v2

    invoke-static {p0, v3, v2}, Lcom/unity3d/splash/services/core/api/Intent;->setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :goto_20
    return v1

    :catch_21
    move-exception v0

    const-string v2, "Couldn\'t parse extras"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_20

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2b
    const/4 v1, 0x1

    goto :goto_20
.end method
