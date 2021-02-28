.class public Lcom/unity3d/splash/services/ads/api/VideoPlayer;
.super Ljava/lang/Object;


# static fields
.field private static _videoPlayerView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentPosition(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public static getProgressEventInterval(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->getProgressEventInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public static getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->_videoPlayerView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    return-object v0
.end method

.method public static getVideoViewRectangle(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 8
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->getVideoViewRectangle()[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aget v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aget v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_34
    return-void

    :cond_35
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_34
.end method

.method public static getVolume(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->getVolume()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public static pause(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Pausing current video"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/api/VideoPlayer$4;

    invoke-direct {v0}, Lcom/unity3d/splash/services/ads/api/VideoPlayer$4;-><init>()V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_19
    return-void

    :cond_1a
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public static play(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Starting playback of prepared video"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/api/VideoPlayer$3;

    invoke-direct {v0}, Lcom/unity3d/splash/services/ads/api/VideoPlayer$3;-><init>()V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_19
    return-void

    :cond_1a
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public static prepare(Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->prepare(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V

    return-void
.end method

.method public static prepare(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preparing video for playback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/api/VideoPlayer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/splash/services/ads/api/VideoPlayer$2;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p3, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_29
    return-void

    :cond_2a
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_29
.end method

.method public static seekTo(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seeking video to time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/api/VideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/api/VideoPlayer$6;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_27

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_26
    return-void

    :cond_27
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_26
.end method

.method public static setInfoListenerEnabled(ZLcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 7
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_33

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setInfoListenerEnabled(Z)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->INFO:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    aput-object v1, v0, v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_2a
    return-void

    :cond_2b
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_2a

    :cond_33
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->API_LEVEL_ERROR:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_2a
.end method

.method public static setProgressEventInterval(Ljava/lang/Integer;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 4
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/unity3d/splash/services/ads/api/VideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/api/VideoPlayer$1;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_15

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public static setVideoPlayerView(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V
    .registers 1

    sput-object p0, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->_videoPlayerView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    return-void
.end method

.method public static setVolume(Ljava/lang/Double;Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 5
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting video volume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setVolume(Ljava/lang/Float;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_30
    return-void

    :cond_31
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_30
.end method

.method public static stop(Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;)V
    .registers 3
    .annotation runtime Lcom/unity3d/splash/services/core/webview/bridge/WebViewExposed;
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Stopping current video"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/splash/services/ads/api/VideoPlayer$5;

    invoke-direct {v0}, Lcom/unity3d/splash/services/ads/api/VideoPlayer$5;-><init>()V

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    :goto_19
    return-void

    :cond_1a
    sget-object v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/splash/services/ads/video/VideoPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_19
.end method
