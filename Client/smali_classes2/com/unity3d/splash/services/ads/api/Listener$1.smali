.class final Lcom/unity3d/splash/services/ads/api/Listener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/ads/api/Listener;->sendReadyEvent(Ljava/lang/String;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/api/Listener$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {}, Lcom/unity3d/splash/services/ads/properties/AdsProperties;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/IUnityAdsListener;

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/api/Listener$1;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/unity3d/splash/IUnityAdsListener;->onUnityAdsReady(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    return-void
.end method
