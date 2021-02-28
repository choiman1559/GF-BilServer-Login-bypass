.class public Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeInterface;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getParameters(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_16

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method


# virtual methods
.method public handleCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_49

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_39
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_48

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_48
    move-object v0, v1

    :cond_49
    invoke-static {p1, p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->handleCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleInvocation(Ljava/lang/String;)V
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleInvocation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;

    invoke-direct {v7}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;-><init>()V

    move v4, v5

    :goto_1e
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_59

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeInterface;->getParameters(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v3

    new-instance v8, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;

    invoke-virtual {v7}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->getId()I

    move-result v9

    invoke-direct {v8, v0, v9}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v1, v2, v3, v8}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->addInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1e

    :cond_59
    :goto_59
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_65

    invoke-virtual {v7}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->nextInvocation()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_65
    invoke-virtual {v7}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->sendInvocationCallback()V

    return-void
.end method
