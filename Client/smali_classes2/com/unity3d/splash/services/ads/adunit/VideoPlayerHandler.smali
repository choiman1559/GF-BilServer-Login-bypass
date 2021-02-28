.class public Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/splash/services/ads/adunit/IAdUnitViewHandler;


# instance fields
.field private _videoContainer:Landroid/widget/RelativeLayout;

.field private _videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)Z
    .registers 4

    const/4 v1, -0x1

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_f

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    :cond_f
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    if-nez v0, :cond_3a

    new-instance v0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-direct {v0, p1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v1, v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v0}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V

    :cond_3a
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()Z
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->entered()V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopPlayback()V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {v2}, Lcom/unity3d/splash/services/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V

    :cond_26
    iput-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoView:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    :cond_28
    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/unity3d/splash/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    iput-object v2, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->_videoContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onCreate(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->create(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)Z

    return-void
.end method

.method public onDestroy(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V
    .registers 2

    return-void
.end method

.method public onPause(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V
    .registers 2

    invoke-virtual {p0}, Lcom/unity3d/splash/services/ads/adunit/VideoPlayerHandler;->destroy()Z

    return-void
.end method

.method public onResume(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V
    .registers 2

    return-void
.end method

.method public onStart(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V
    .registers 2

    return-void
.end method

.method public onStop(Lcom/unity3d/splash/services/ads/adunit/AdUnitActivity;)V
    .registers 2

    return-void
.end method
