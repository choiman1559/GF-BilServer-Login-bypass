.class public Lcom/unity3d/splash/services/core/api/Resolve;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/api/Resolve$1;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/core/api/Resolve$1;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/unity3d/splash/services/core/request/WebRequestThread;->resolve(Ljava/lang/String;Lcom/unity3d/splash/services/core/request/IResolveHostListener;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Lcom/unity3d/splash/services/core/request/ResolveHostError;->INVALID_HOST:Lcom/unity3d/splash/services/core/request/ResolveHostError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14
.end method
