.class public Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;
.super Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateConfig"
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

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_maxRetries:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads init: load configuration from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    :try_start_16
    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/Configuration;->makeRequest()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_23

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadCache;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateLoadCache;-><init>(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    move-object v1, v0

    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    iget v2, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_maxRetries:I

    if-ge v0, v2, :cond_3f

    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    iget v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateRetry;

    iget v1, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    invoke-direct {v0, p0, v1}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;I)V

    goto :goto_22

    :cond_3f
    new-instance v0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateNetworkError;

    iget-object v2, p0, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/InitializeThread$InitializeState;Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    goto :goto_22
.end method
