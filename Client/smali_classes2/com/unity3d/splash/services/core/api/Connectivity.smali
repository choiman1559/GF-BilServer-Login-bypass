.class public Lcom/unity3d/splash/services/core/api/Connectivity;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setConnectionMonitoring(Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/connectivity/ConnectivityMonitor;->setConnectionMonitoring(Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
