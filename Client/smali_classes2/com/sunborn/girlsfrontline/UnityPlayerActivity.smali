.class public Lcom/sunborn/girlsfrontline/UnityPlayerActivity;
.super Landroid/app/Activity;
.source "UnityPlayerActivity.java"


# instance fields
.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 106
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 107
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->requestWindowFeature(I)Z

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 24
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v0}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 74
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    .line 75
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 56
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 61
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->start()V

    .line 62
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 67
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->stop()V

    .line 68
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 81
    const/16 v0, 0xf

    if-ne p1, v0, :cond_c

    .line 83
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    .line 85
    :cond_c
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 98
    iget-object v0, p0, Lcom/sunborn/girlsfrontline/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 99
    return-void
.end method
