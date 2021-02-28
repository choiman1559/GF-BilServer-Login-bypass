.class public Lcom/bilibili/track/dispather/TrackWindowCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Window$Callback;


# static fields
.field public static pressValue:Ljava/lang/String;


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->pressValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->pressValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public onContentChanged()V
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/bilibili/track/dispather/TrackWindowCallBack;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
