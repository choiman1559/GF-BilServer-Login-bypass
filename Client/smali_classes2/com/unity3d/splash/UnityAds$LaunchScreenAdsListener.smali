.class Lcom/unity3d/splash/UnityAds$LaunchScreenAdsListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/splash/mediation/IUnityAdsExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchScreenAdsListener"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private adsFinishListener:Lcom/unity3d/splash/UnityAds$IAdsFinishListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/unity3d/splash/UnityAds$IAdsFinishListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/splash/UnityAds$LaunchScreenAdsListener;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/unity3d/splash/UnityAds$LaunchScreenAdsListener;->adsFinishListener:Lcom/unity3d/splash/UnityAds$IAdsFinishListener;

    return-void
.end method


# virtual methods
.method public onUnityAdsClick(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onUnityAdsError(Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/splash/UnityAds$LaunchScreenAdsListener;->adsFinishListener:Lcom/unity3d/splash/UnityAds$IAdsFinishListener;

    const/4 v1, 0x0

    sget-object v2, Lcom/unity3d/splash/UnityAds$FinishState;->ERROR:Lcom/unity3d/splash/UnityAds$FinishState;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/splash/UnityAds$IAdsFinishListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$FinishState;)V

    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$FinishState;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/splash/UnityAds$LaunchScreenAdsListener;->adsFinishListener:Lcom/unity3d/splash/UnityAds$IAdsFinishListener;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/splash/UnityAds$IAdsFinishListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$FinishState;)V

    return-void
.end method

.method public onUnityAdsPlacementStateChanged(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$PlacementState;Lcom/unity3d/splash/UnityAds$PlacementState;)V
    .registers 4

    return-void
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .registers 3

    const-string v0, "unity-launch-screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/unity3d/splash/UnityAds;->access$000()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/unity3d/splash/UnityAds;->access$100()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/unity3d/splash/UnityAds$LaunchScreenAdsListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/splash/UnityAds;->access$102(Z)Z

    :cond_1d
    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
