.class final Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;->val$activity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v2, "requestedOrientation"

    iget-object v3, p0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "rotation"

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_5f

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-string v0, "width"

    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_48
    const-string v0, "display"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_4d} :catch_72

    :goto_4d
    :try_start_4d
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/adunit/AdUnitOpen;->open(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    sget-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v2, "Webapp timeout, shutting down Unity Ads"

    invoke-static {v0, v1, v2}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->access$000(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4d .. :try_end_5e} :catch_79

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    :try_start_5f
    const-string v3, "width"

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "height"

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_71} :catch_72

    goto :goto_48

    :catch_72
    move-exception v0

    const-string v2, "JSON error while constructing show options"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4d

    :catch_79
    move-exception v0

    const-string v1, "Could not get callback method"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    sget-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v2, "Could not get com.unity3d.ads.properties.showCallback method"

    invoke-static {v0, v1, v2}, Lcom/unity3d/splash/services/ads/UnityAdsImplementation;->access$000(Ljava/lang/String;Lcom/unity3d/splash/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_5e
.end method
