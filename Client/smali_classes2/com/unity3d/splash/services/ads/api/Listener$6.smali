.class final Lcom/unity3d/splash/services/ads/api/Listener$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/ads/api/Listener;->sendErrorEvent(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/api/Listener$6;->val$error:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/splash/services/ads/api/Listener$6;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/IUnityAdsListener;

    instance-of v2, v0, Lcom/unity3d/splash/mediation/IUnityAdsExtendedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/api/Listener$6;->val$error:Ljava/lang/String;

    invoke-static {v2}, Lcom/unity3d/splash/UnityAds$UnityAdsError;->valueOf(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$UnityAdsError;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/splash/services/ads/api/Listener$6;->val$message:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/unity3d/splash/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_8

    :cond_24
    return-void
.end method
