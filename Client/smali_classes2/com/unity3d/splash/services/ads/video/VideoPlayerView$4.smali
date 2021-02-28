.class Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->prepare(Ljava/lang/String;FI)Z
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

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 11

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopPrepareTimer()V

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v0, p1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->access$102(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_d
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->GENERIC_ERROR:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v5}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->access$000(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    return v6
.end method
