.class Lcom/unity3d/splash/services/ads/video/VideoPlayerView$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->startVideoProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$1;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v8, 0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$1;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->isPlaying()Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_24

    move-result v1

    :try_start_8
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->PROGRESS:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$1;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v7}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->getCurrentPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_23} :catch_4d

    :goto_23
    return-void

    :catch_24
    move-exception v0

    move v1, v2

    :goto_26
    const-string v3, "Exception while sending current position to webapp"

    invoke-static {v3, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->ILLEGAL_STATE:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->PROGRESS:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$1;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v2}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->access$000(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_23

    :catch_4d
    move-exception v0

    goto :goto_26
.end method
