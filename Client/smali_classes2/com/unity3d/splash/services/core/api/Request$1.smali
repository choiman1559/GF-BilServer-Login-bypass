.class final Lcom/unity3d/splash/services/core/api/Request$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/splash/services/core/request/IWebRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/core/api/Request;->get(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/core/api/Request$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .registers 15

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_4
    invoke-static {p4}, Lcom/unity3d/splash/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_28

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/core/request/WebRequestEvent;->COMPLETE:Lcom/unity3d/splash/services/core/request/WebRequestEvent;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/splash/services/core/api/Request$1;->val$id:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x4

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_27
    return-void

    :catch_28
    move-exception v0

    const-string v1, "Error parsing response headers"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/request/WebRequestEvent;->FAILED:Lcom/unity3d/splash/services/core/request/WebRequestEvent;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/splash/services/core/api/Request$1;->val$id:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    const-string v4, "Error parsing response headers"

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_27
.end method

.method public final onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/core/request/WebRequestEvent;->FAILED:Lcom/unity3d/splash/services/core/request/WebRequestEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/core/api/Request$1;->val$id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method
