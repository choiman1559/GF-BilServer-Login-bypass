.class Lcom/unity3d/splash/services/ads/video/VideoPlayerView$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->startPrepareTimer(J)V
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

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$2;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$2;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->PREPARE_TIMEOUT:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$2;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->access$000(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video player prepare timeout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$2;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->access$000(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    :cond_37
    return-void
.end method