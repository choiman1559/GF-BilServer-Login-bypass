.class public Lcom/unity3d/splash/services/ads/video/VideoPlayerView;
.super Landroid/widget/VideoView;


# instance fields
.field private _infoListenerEnabled:Z

.field private _mediaPlayer:Landroid/media/MediaPlayer;

.field private _prepareTimer:Ljava/util/Timer;

.field private _progressEventInterval:I

.field private _videoTimer:Ljava/util/Timer;

.field private _videoUrl:Ljava/lang/String;

.field private _volume:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_progressEventInterval:I

    iput-object v1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_volume:Ljava/lang/Float;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_infoListenerEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private startPrepareTimer(J)V
    .registers 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$2;

    invoke-direct {v1, p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$2;-><init>(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private startVideoProgressTimer()V
    .registers 7

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$1;

    invoke-direct {v1, p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$1;-><init>(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V

    iget v2, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_progressEventInterval:I

    int-to-long v2, v2

    iget v4, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_progressEventInterval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public getProgressEventInterval()I
    .registers 2

    iget v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_progressEventInterval:I

    return v0
.end method

.method public getVideoViewRectangle()[I
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [I

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->getLocationInWindow([I)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    aget v2, v0, v3

    aput v2, v1, v3

    aget v0, v0, v4

    aput v0, v1, v4

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->getMeasuredWidth()I

    move-result v0

    aput v0, v1, v5

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->getMeasuredHeight()I

    move-result v2

    aput v2, v1, v0

    return-object v1
.end method

.method public getVolume()F
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_volume:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    :try_start_2
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1a

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->PAUSE:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->PAUSE_ERROR:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    const-string v1, "Error pausing video"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_19
.end method

.method public play()V
    .registers 7

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    new-instance v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$5;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$5;-><init>(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->start()V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    invoke-direct {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->startVideoProgressTimer()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->PLAY:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method

.method public prepare(Ljava/lang/String;FI)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    new-instance v2, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$3;

    invoke-direct {v2, p0, p2}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$3;-><init>(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;F)V

    invoke-virtual {p0, v2}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v2, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;

    invoke-direct {v2, p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;-><init>(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-boolean v2, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_infoListenerEnabled:Z

    invoke-virtual {p0, v2}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setInfoListenerEnabled(Z)V

    if-lez p3, :cond_22

    int-to-long v2, p3

    invoke-direct {p0, v2, v3}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->startPrepareTimer(J)V

    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setVideoPath(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    :goto_27
    return v0

    :catch_28
    move-exception v2

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->PREPARE_ERROR:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v6, v0, v1

    invoke-virtual {v3, v4, v5, v0}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Error preparing video: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_27
.end method

.method public seekTo(I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v6, 0x0

    :try_start_2
    invoke-super {p0, p1}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_17

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->SEEKTO:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->SEEKTO_ERROR:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    const-string v1, "Error seeking video"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method public setInfoListenerEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_infoListenerEnabled:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_infoListenerEnabled:Z

    if-eqz v0, :cond_15

    new-instance v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$6;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$6;-><init>(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    goto :goto_14
.end method

.method public setProgressEventInterval(I)V
    .registers 3

    iput p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_progressEventInterval:I

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    invoke-direct {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->startVideoProgressTimer()V

    :cond_c
    return-void
.end method

.method public setVolume(Ljava/lang/Float;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_volume:Ljava/lang/Float;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "MediaPlayer generic error"

    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public stop()V
    .registers 7

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopPlayback()V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->STOP:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method

.method public stopPrepareTimer()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_prepareTimer:Ljava/util/Timer;

    :cond_11
    return-void
.end method

.method public stopVideoProgressTimer()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    :cond_11
    return-void
.end method
