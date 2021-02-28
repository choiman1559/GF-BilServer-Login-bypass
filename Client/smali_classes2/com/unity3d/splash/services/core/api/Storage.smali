.class public Lcom/unity3d/splash/services/core/api/Storage;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/device/Storage;->clearStorage()Z

    move-result v0

    if-eqz v0, :cond_16

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_CLEAR_STORAGE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_20
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Lcom/unity3d/splash/services/core/device/Storage;->delete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_DELETE_VALUE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_20
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Lcom/unity3d/splash/services/core/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_GET_VALUE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_17
    return-void

    :cond_18
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_17

    :cond_20
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/splash/services/core/device/StorageError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public static getKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 8
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/splash/services/core/device/Storage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v3

    invoke-virtual {p3, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_1e
    return-void

    :cond_1f
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    aput-object v1, v0, v3

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_1e

    :cond_2c
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/splash/services/core/device/StorageError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method private static getStorage(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/Storage;
    .registers 2

    invoke-static {p0}, Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;->valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/device/StorageManager;->getStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    return-object v0
.end method

.method public static read(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/device/Storage;->readStorage()Z

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_12
    return-void

    :cond_13
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/splash/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/splash/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/splash/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/splash/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method private static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/splash/services/core/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_SET_VALUE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_20
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/splash/services/core/device/StorageError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/splash/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/splash/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/splash/services/core/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static write(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/device/Storage;->writeStorage()Z

    move-result v0

    if-eqz v0, :cond_16

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_WRITE_STORAGE_TO_CACHE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_20
    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/splash/services/core/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_15
.end method
