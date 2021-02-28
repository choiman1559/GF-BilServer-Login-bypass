.class public Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "VideoEnabledWebChromeClient.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;
    }
.end annotation


# instance fields
.field private activityNonVideoView:Landroid/view/View;

.field private activityVideoView:Landroid/view/ViewGroup;

.field private isVideoFullscreen:Z

.field private loadingView:Landroid/view/View;

.field private toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

.field private videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private videoViewContainer:Landroid/widget/FrameLayout;

.field private webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "activityNonVideoView"    # Landroid/view/View;
    .param p2, "activityVideoView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    .line 64
    iput-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    .line 65
    iput-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "activityNonVideoView"    # Landroid/view/View;
    .param p2, "activityVideoView"    # Landroid/view/ViewGroup;
    .param p3, "loadingView"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    .line 79
    iput-object p2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    .line 80
    iput-object p3, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/VideoEnabledWebView;)V
    .registers 6
    .param p1, "activityNonVideoView"    # Landroid/view/View;
    .param p2, "activityVideoView"    # Landroid/view/ViewGroup;
    .param p3, "loadingView"    # Landroid/view/View;
    .param p4, "webView"    # Lcom/onevcat/uniwebview/VideoEnabledWebView;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    .line 97
    iput-object p2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    .line 98
    iput-object p3, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    .line 99
    iput-object p4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    .line 101
    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 236
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    .line 241
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_c
.end method

.method public isVideoFullscreen()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    if-eqz v0, :cond_9

    .line 276
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onHideCustomView()V

    .line 277
    const/4 v0, 0x1

    .line 281
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onHideCustomView()V

    .line 258
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public onHideCustomView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 202
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    if-eqz v0, :cond_42

    .line 205
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 212
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 216
    :cond_33
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    .line 217
    iput-object v3, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    .line 218
    iput-object v3, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 221
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    if-eqz v0, :cond_42

    .line 223
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    invoke-interface {v0, v2}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;->toggledFullscreen(Z)V

    .line 227
    :cond_42
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Clear Focus"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->clearFocus()V

    .line 229
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 250
    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_b
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 193
    invoke-virtual {p0, p1, p3}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 194
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 125
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    const-string v5, "onShowCustomView!!!"

    invoke-virtual {v4, v5}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 126
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4d

    move-object v1, p1

    .line 129
    check-cast v1, Landroid/widget/FrameLayout;

    .line 130
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "focusedChild":Landroid/view/View;
    iput-boolean v8, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    .line 134
    iput-object v1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    .line 135
    iput-object p2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 138
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 142
    instance-of v4, v0, Landroid/widget/VideoView;

    if-eqz v4, :cond_4e

    move-object v3, v0

    .line 145
    check-cast v3, Landroid/widget/VideoView;

    .line 148
    .local v3, "videoView":Landroid/widget/VideoView;
    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 149
    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 150
    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 183
    .end local v3    # "videoView":Landroid/widget/VideoView;
    :cond_44
    :goto_44
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    if-eqz v4, :cond_4d

    .line 185
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    invoke-interface {v4, v8}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;->toggledFullscreen(Z)V

    .line 188
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_4d
    return-void

    .line 161
    .restart local v0    # "focusedChild":Landroid/view/View;
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_4e
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    invoke-virtual {v4}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v4

    if-eqz v4, :cond_44

    instance-of v4, v0, Landroid/view/SurfaceView;

    if-eqz v4, :cond_44

    .line 164
    const-string v2, "javascript:"

    .line 165
    .local v2, "js":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "var _ytrp_html5_video_last;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "var _ytrp_html5_video = document.getElementsByTagName(\'video\')[0];"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "if (_ytrp_html5_video != undefined && _ytrp_html5_video != _ytrp_html5_video_last) {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_ytrp_html5_video_last = _ytrp_html5_video;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "function _ytrp_html5_video_ended() {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "window.location.href = \'uniwebviewinternal://__uniwebview_internal_video_end\';"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_ytrp_html5_video.addEventListener(\'ended\', _ytrp_html5_video_ended);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    invoke-virtual {v4, v2}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_44
.end method

.method public setOnToggledFullscreen(Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    .line 120
    return-void
.end method
