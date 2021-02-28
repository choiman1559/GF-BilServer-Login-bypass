.class public Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;
.super Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateCreate"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

.field private _webViewData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/Configuration;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$1;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    iput-object p2, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;
    .registers 5

    const-string v0, "Unity Ads init: creating webapp"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/configuration/Configuration;->setWebViewData(Ljava/lang/String;)V

    :try_start_c
    invoke-static {v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->create(Lcom/unity3d/splash/services/core/configuration/Configuration;)Z
    :try_end_f
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_c .. :try_end_f} :catch_1a

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateComplete;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateComplete;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    :goto_19
    return-object v0

    :catch_1a
    move-exception v1

    const-string v0, "Illegal Thread"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v2, "create webapp"

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v2, v1, v3}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    goto :goto_19

    :cond_2a
    const-string v0, "Unity Ads WebApp creation failed!"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v1, "create webapp"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Creation of WebApp failed!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    goto :goto_19
.end method

.method public getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-object v0
.end method

.method public getWebData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    return-object v0
.end method
