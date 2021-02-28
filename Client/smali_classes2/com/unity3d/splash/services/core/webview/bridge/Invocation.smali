.class public Lcom/unity3d/splash/services/core/webview/bridge/Invocation;
.super Ljava/lang/Object;


# static fields
.field private static _idCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static _invocationSets:Ljava/util/Map;


# instance fields
.field private _invocationId:I

.field private _invocations:Ljava/util/ArrayList;

.field private _responses:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_idCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_idCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationId:I

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    :cond_16
    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    iget v1, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInvocationById(I)Lcom/unity3d/splash/services/core/webview/bridge/Invocation;
    .registers 4

    const-class v1, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    :goto_1f
    monitor-exit v1

    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_1f

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationId:I

    return v0
.end method

.method public getResponses()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public nextInvocation()Z
    .registers 10

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;

    :try_start_32
    invoke-static {v1, v2, v3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridge;->handleInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_37

    :goto_35
    move v0, v4

    :goto_36
    return v0

    :catch_37
    move-exception v0

    const-string v6, "Error handling invocation %s.%s(%s)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object v2, v7, v4

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_35

    :cond_4e
    move v0, v5

    goto :goto_36
.end method

.method public sendInvocationCallback()V
    .registers 3

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_invocationSets:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->invokeCallback(Lcom/unity3d/splash/services/core/webview/bridge/Invocation;)Z

    return-void
.end method

.method public varargs setInvocationResponse(Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/bridge/Invocation;->_responses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
