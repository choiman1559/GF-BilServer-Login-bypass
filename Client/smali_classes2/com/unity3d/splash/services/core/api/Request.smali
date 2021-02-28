.class public Lcom/unity3d/splash/services/core/api/Request;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 15
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_c

    move-object p2, v3

    :cond_c
    :try_start_c
    invoke-static {p2}, Lcom/unity3d/splash/services/core/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_25

    move-result-object v2

    sget-object v1, Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;->GET:Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;

    new-instance v6, Lcom/unity3d/splash/services/core/api/Request$1;

    invoke-direct {v6, p0}, Lcom/unity3d/splash/services/core/api/Request$1;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/request/IWebRequestListener;)V

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-virtual {p5, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_24
    return-void

    :catch_25
    move-exception v0

    const-string v1, "Error mapping headers for the request"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/splash/services/core/request/WebRequestError;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_24
.end method

.method public static getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_3b

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v3

    :goto_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3a

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_3a
    move-object v0, v4

    :cond_3b
    return-object v0
.end method

.method public static getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;
    .registers 7

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_4a

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4a

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v2

    goto :goto_2d

    :cond_46
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_15

    :cond_4a
    return-object v3
.end method

.method public static head(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 14
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_b

    const/4 p2, 0x0

    :cond_b
    :try_start_b
    invoke-static {p2}, Lcom/unity3d/splash/services/core/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_24

    move-result-object v2

    sget-object v1, Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;->HEAD:Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;

    new-instance v5, Lcom/unity3d/splash/services/core/api/Request$3;

    invoke-direct {v5, p0}, Lcom/unity3d/splash/services/core/api/Request$3;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/request/IWebRequestListener;)V

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v6

    invoke-virtual {p5, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_23
    return-void

    :catch_24
    move-exception v0

    const-string v1, "Error mapping headers for the request"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/splash/services/core/request/WebRequestError;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_23
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 16
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3e

    move-object v3, v0

    :goto_c
    if-eqz p3, :cond_15

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_15

    move-object p3, v0

    :cond_15
    :try_start_15
    invoke-static {p3}, Lcom/unity3d/splash/services/core/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_2e

    move-result-object v2

    sget-object v1, Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;->POST:Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;

    new-instance v6, Lcom/unity3d/splash/services/core/api/Request$2;

    invoke-direct {v6, p0}, Lcom/unity3d/splash/services/core/api/Request$2;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/request/IWebRequestListener;)V

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-virtual {p6, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string v1, "Error mapping headers for the request"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lcom/unity3d/splash/services/core/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/splash/services/core/request/WebRequestError;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-virtual {p6, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_3e
    move-object v3, p2

    goto :goto_c
.end method

.method public static setConcurrentRequestCount(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->setConcurrentRequestCount(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setKeepAliveTime(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->setKeepAliveTime(J)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static setMaximumPoolSize(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->setMaximumPoolSize(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
