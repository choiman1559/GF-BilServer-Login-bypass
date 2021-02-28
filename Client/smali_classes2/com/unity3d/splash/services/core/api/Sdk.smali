.class public Lcom/unity3d/splash/services/core/api/Sdk;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugMode(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getDebugMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static initComplete(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Web Application initialized at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setInitialized(Z)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->setWebAppInitialized(Z)V

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->triggerOnSdkInitialized()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static initError(Ljava/lang/String;ILcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/unity3d/splash/services/core/configuration/InitializationNotificationCenter;->triggerOnSdkInitializationFailed(Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static loadComplete(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 6
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Web Application loaded at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->setWebAppLoaded(Z)V

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->isTestMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getAppName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->isAppDebuggable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getInitializationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->isReinitialized()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->isPerPlacementLoadEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static logWarning(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public static reinitialize(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 2
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setReinitialized(Z)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->initialize(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    return-void
.end method

.method public static setDebugMode(Ljava/lang/Boolean;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setDebugMode(Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
