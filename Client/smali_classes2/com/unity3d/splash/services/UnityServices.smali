.class public Lcom/unity3d/splash/services/UnityServices;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/UnityServices$UnityServicesError;
    }
.end annotation


# static fields
.field private static _configurationInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/splash/services/UnityServices;->_configurationInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugMode()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/services/IUnityServicesListener;ZZ)V
    .registers 9

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    sget-boolean v0, Lcom/unity3d/splash/services/UnityServices;->_configurationInitialized:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "You are trying to re-initialize with a different gameId"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/splash/services/UnityServices;->_configurationInitialized:Z

    invoke-static {}, Lcom/unity3d/splash/services/UnityServices;->isSupported()Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "Error while initializing Unity Services: device is not supported"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1c

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application start initializing at "

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setInitializationTime(J)V

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_65

    :cond_56
    const-string v0, "Error while initializing Unity Services: empty game ID, halting Unity Ads init"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p2, :cond_1c

    sget-object v0, Lcom/unity3d/splash/services/UnityServices$UnityServicesError;->INVALID_ARGUMENT:Lcom/unity3d/splash/services/UnityServices$UnityServicesError;

    const-string v1, "Empty game ID"

    invoke-interface {p2, v0, v1}, Lcom/unity3d/splash/services/IUnityServicesListener;->onUnityServicesError(Lcom/unity3d/splash/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    goto :goto_1c

    :cond_65
    if-nez p0, :cond_76

    const-string v0, "Error while initializing Unity Services: null activity, halting Unity Ads init"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p2, :cond_1c

    sget-object v0, Lcom/unity3d/splash/services/UnityServices$UnityServicesError;->INVALID_ARGUMENT:Lcom/unity3d/splash/services/UnityServices$UnityServicesError;

    const-string v1, "Null activity"

    invoke-interface {p2, v0, v1}, Lcom/unity3d/splash/services/IUnityServicesListener;->onUnityServicesError(Lcom/unity3d/splash/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    goto :goto_1c

    :cond_76
    if-eqz p3, :cond_e2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Unity Services "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with game id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in test mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    :goto_ac
    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getDebugMode()Z

    move-result v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setDebugMode(Z)V

    invoke-static {p2}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setListener(Lcom/unity3d/splash/services/IUnityServicesListener;)V

    invoke-static {p1}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->setGameId(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->setApplication(Landroid/app/Application;)V

    invoke-static {p4}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setPerPlacementLoadEnabled(Z)V

    invoke-static {p3}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setTestMode(Z)V

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/EnvironmentCheck;->isEnvironmentOk()Z

    move-result v0

    if-eqz v0, :cond_117

    const-string v0, "Unity Services environment check OK"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/Configuration;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/configuration/Configuration;-><init>()V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/configuration/InitializeThread;->initialize(Lcom/unity3d/splash/services/core/configuration/Configuration;)V

    goto/16 :goto_1c

    :cond_e2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Unity Services "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with game id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in production mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    goto :goto_ac

    :cond_117
    const-string v0, "Error during Unity Services environment check, halting Unity Services init"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p2, :cond_1c

    sget-object v0, Lcom/unity3d/splash/services/UnityServices$UnityServicesError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/splash/services/UnityServices$UnityServicesError;

    const-string v1, "Unity Services init environment check failed"

    invoke-interface {p2, v0, v1}, Lcom/unity3d/splash/services/IUnityServicesListener;->onUnityServicesError(Lcom/unity3d/splash/services/UnityServices$UnityServicesError;Ljava/lang/String;)V

    goto/16 :goto_1c
.end method

.method public static isInitialized()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static setDebugMode(Z)V
    .registers 1

    invoke-static {p0}, Lcom/unity3d/splash/services/core/properties/SdkProperties;->setDebugMode(Z)V

    return-void
.end method
