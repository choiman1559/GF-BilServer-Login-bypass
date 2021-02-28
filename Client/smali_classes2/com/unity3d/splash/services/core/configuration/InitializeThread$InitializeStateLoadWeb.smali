.class public Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;
.super Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateLoadWeb"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

.field private _maxRetries:I

.field private _retries:I

.field private _retryDelay:I


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$1;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads init: loading webapp from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    :try_start_18
    new-instance v0, Lcom/unity3d/splash/services/core/request/WebRequest;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_26
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_26} :catch_4d

    :try_start_26
    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/request/WebRequest;->makeRequest()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_5e

    move-result-object v1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v1, "load web"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid webViewHash"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    :goto_4c
    return-object v0

    :catch_4d
    move-exception v0

    move-object v1, v0

    const-string v0, "Malformed URL"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;

    const-string v2, "make webrequest"

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v2, v1, v3}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    goto :goto_4c

    :catch_5e
    move-exception v1

    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    iget v2, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    if-ge v0, v2, :cond_79

    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateRetry;

    iget v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    invoke-direct {v0, p0, v1}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;I)V

    goto :goto_4c

    :cond_79
    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateNetworkError;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    goto :goto_4c

    :cond_81
    if-eqz v0, :cond_8f

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    :cond_8f
    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v2, v1}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public getConfiguration()Lcom/unity3d/splash/services/core/configuration/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-object v0
.end method
