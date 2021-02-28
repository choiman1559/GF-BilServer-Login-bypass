.class public Lcom/unity3d/splash/services/ads/placement/Placement;
.super Ljava/lang/Object;


# static fields
.field private static _defaultBannerPlacement:Ljava/lang/String;

.field private static _defaultPlacement:Ljava/lang/String;

.field private static _placementReadyMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static currentState(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;
    .registers 2

    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/splash/UnityAds$PlacementState;

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/UnityAds$PlacementState;

    goto :goto_e
.end method

.method public static getDefaultBannerPlacement()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_defaultBannerPlacement:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultPlacement()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlacementState()Lcom/unity3d/splash/UnityAds$PlacementState;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/splash/UnityAds$PlacementState;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/splash/services/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;

    move-result-object v0

    goto :goto_6
.end method

.method public static getPlacementState(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;
    .registers 2

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/placement/Placement;->currentState(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;

    move-result-object v0

    return-object v0
.end method

.method public static isReady()Z
    .registers 2

    invoke-static {}, Lcom/unity3d/splash/services/ads/placement/Placement;->getPlacementState()Lcom/unity3d/splash/UnityAds$PlacementState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/UnityAds$PlacementState;->READY:Lcom/unity3d/splash/UnityAds$PlacementState;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isReady(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/unity3d/splash/services/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/UnityAds$PlacementState;->READY:Lcom/unity3d/splash/UnityAds$PlacementState;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static reset()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    sput-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    return-void
.end method

.method public static setDefaultBannerPlacement(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/ads/placement/Placement;->_defaultBannerPlacement:Ljava/lang/String;

    return-void
.end method

.method public static setDefaultPlacement(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    return-void
.end method

.method public static setPlacementState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    :cond_b
    sget-object v0, Lcom/unity3d/splash/services/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/unity3d/splash/UnityAds$PlacementState;->valueOf(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
