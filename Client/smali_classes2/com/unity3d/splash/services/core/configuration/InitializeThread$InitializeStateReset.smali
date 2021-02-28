.class public Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;
.super Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateReset"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$1;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-void
.end method

.method private unregisterLifecycleCallbacks()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/unity3d/splash/services/core/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_17
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/api/Lifecycle;->setLifecycleListener(Lcom/unity3d/splash/services/core/lifecycle/LifecycleListener;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;
    .registers 7

    const/4 v0, 0x0

    const-string v1, "Unity Ads init: starting init"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    const/4 v1, 0x1

    if-eqz v3, :cond_3f

    invoke-virtual {v3, v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->setWebAppLoaded(Z)V

    invoke-virtual {v3, v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->setWebAppInitialized(Z)V

    invoke-virtual {v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/splash/services/core/webview/WebView;

    move-result-object v4

    if-eqz v4, :cond_2c

    new-instance v1, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset$1;

    invoke-direct {v1, p0, v3, v2}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset$1;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;Lcom/unity3d/splash/services/core/webview/WebViewApp;Landroid/os/ConditionVariable;)V

    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    :cond_2c
    if-nez v1, :cond_3f

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v1, "reset webapp"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Reset failed on opening ConditionVariable"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    :goto_3e
    return-object v0

    :cond_3f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_48

    invoke-direct {p0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->unregisterLifecycleCallbacks()V

    :cond_48
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setCacheDirectory(Lcom/unity3d/splash/services/core/cache/CacheDirectory;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_63

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v1, "reset webapp"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Cache directory is NULL"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    goto :goto_3e

    :cond_63
    invoke-static {v0}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setInitialized(Z)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/splash/services/core/configuration/Configuration;->setConfigUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_76
    if-ge v0, v2, :cond_8a

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v4, v3}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;

    move-result-object v3

    if-eqz v3, :cond_87

    iget-object v4, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-interface {v3, v4}, Lcom/unity3d/splash/services/core/configuration/IModuleConfiguration;->resetState(Lcom/unity3d/splash/services/core/configuration/Configuration;)Z

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_8a
    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateInitModules;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateInitModules;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    goto :goto_3e
.end method
