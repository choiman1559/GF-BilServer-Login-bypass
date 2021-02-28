.class public Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;
.super Ljava/lang/Object;


# static fields
.field private static _callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private _callback:Ljava/lang/reflect/Method;

.field private _id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->_callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->_callback:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->_callback:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->_callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_1a

    move-result-object v1

    if-nez p2, :cond_28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    :goto_c
    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;->_callback:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->removeCallback(Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;)V

    return-void

    :catch_1a
    move-exception v0

    const-string v1, "Illegal status"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->removeCallback(Lcom/unity3d/splash/services/core/webview/bridge/NativeCallback;)V

    throw v0

    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method
