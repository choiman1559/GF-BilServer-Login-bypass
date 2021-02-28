.class public final Lcom/unity3d/splash/services/ads/UnityAdsImplementation;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V

    return-void
.end method

.method public static addListener(Lcom/unity3d/splash/IUnityAdsListener;)V
    .registers 1

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->addListener(Lcom/unity3d/splash/IUnityAdsListener;)V

    return-void
.end method

.method public static getDebugMode()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/UnityServices;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static getDefaultPlacement()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListener()Lcom/unity3d/splash/IUnityAdsListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/IUnityAdsListener;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static getPlacementState()Lcom/unity3d/splash/UnityAds$PlacementState;
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/unity3d/splash/services/ads/placement/Placement;->getPlacementState()Lcom/unity3d/splash/UnityAds$PlacementState;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/splash/UnityAds$PlacementState;

    goto :goto_10
.end method

.method public static getPlacementState(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p0, :cond_13

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/splash/UnityAds$PlacementState;

    goto :goto_12
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/UnityServices;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleShowError(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads show failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$3;

    invoke-direct {v1, p1, v0, p0}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$3;-><init>(Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;Z)V

    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;ZZ)V

    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;ZZ)V
    .registers 6

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    invoke-static {p2}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->addListener(Lcom/unity3d/splash/IUnityAdsListener;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$1;

    invoke-direct {v0, p2}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$1;-><init>(Lcom/unity3d/splash/IUnityAdsListener;)V

    invoke-static {p0, p1, v0, p3, p4}, Lcom/unity3d/splash/services/UnityServices;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/services/IUnityServicesListener;ZZ)V

    return-void
.end method

.method public static isInitialized()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/UnityServices;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isReady()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/unity3d/splash/services/ads/placement/Placement;->isReady()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isReady(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p0, :cond_16

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/placement/Placement;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isSupported()Z
    .registers 1

    invoke-static {}, Lcom/unity3d/splash/services/UnityServices;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static load(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/ads/load/LoadModule;->getInstance()Lcom/unity3d/splash/services/ads/load/LoadModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/ads/load/LoadModule;->load(Ljava/lang/String;)V

    return-void
.end method

.method public static removeListener(Lcom/unity3d/splash/IUnityAdsListener;)V
    .registers 1

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->removeListener(Lcom/unity3d/splash/IUnityAdsListener;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    invoke-static {p0}, Lcom/unity3d/splash/services/UnityServices;->setDebugMode(Z)V

    return-void
.end method

.method public static setListener(Lcom/unity3d/splash/IUnityAdsListener;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->addListener(Lcom/unity3d/splash/IUnityAdsListener;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 4

    invoke-static {}, Lcom/unity3d/splash/services/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/unity3d/splash/services/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    const-string v0, ""

    sget-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v2, "Unity Ads default placement is not initialized"

    invoke-static {v0, v1, v2}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_a

    sget-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "Activity must not be null"

    invoke-static {p1, v0, v1}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads opening new ad unit for placement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/unity3d/splash/services/core/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_9

    :cond_33
    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads is not supported for this device"

    invoke-static {p1, v0, v1}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_9

    :cond_41
    invoke-static {}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads is not initialized"

    invoke-static {p1, v0, v1}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_9

    :cond_4f
    sget-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placement \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_9
.end method
