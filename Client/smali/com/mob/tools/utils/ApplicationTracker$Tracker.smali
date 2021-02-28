.class public abstract Lcom/mob/tools/utils/ApplicationTracker$Tracker;
.super Ljava/lang/Object;
.source "ApplicationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/ApplicationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tracker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityConfigurationChanged(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 278
    return-void
.end method

.method protected onAttachAgent(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 398
    return-void
.end method

.method protected onBackgroundVisibleBehindChanged(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 370
    return-void
.end method

.method protected onBindApplication(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 222
    return-void
.end method

.method protected onBindService(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    return-void
.end method

.method protected onCancelVisibleBehind(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 366
    return-void
.end method

.method protected onCleanUpContext(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 254
    return-void
.end method

.method protected onConfigurationChanged(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 250
    return-void
.end method

.method protected onCreateBackupAgent(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    return-void
.end method

.method protected onCreateService(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 238
    return-void
.end method

.method protected onDestroyActivity(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 218
    return-void
.end method

.method protected onDestroyBackupAgent(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 294
    return-void
.end method

.method protected onDispatchPackageBroadcast(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 310
    return-void
.end method

.method protected onDumpActivity(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    return-void
.end method

.method protected onDumpHeap(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 318
    return-void
.end method

.method protected onDumpProvider(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 342
    return-void
.end method

.method protected onDumpService(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 270
    return-void
.end method

.method protected onEnableJit(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 306
    return-void
.end method

.method protected onEnterAnimationComplete(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 374
    return-void
.end method

.method protected onExitApplication(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 226
    return-void
.end method

.method protected onGcWhenIdle(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    return-void
.end method

.method protected onHideWindow(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    return-void
.end method

.method protected onInstallProvider(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 358
    return-void
.end method

.method protected onLaunchActivity(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    return-void
.end method

.method protected onLocalVoiceInteractionStarted(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 394
    return-void
.end method

.method protected onLowMemory(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 274
    return-void
.end method

.method protected onMultiWindowModeChanged(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 386
    return-void
.end method

.method protected onNewIntent(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 230
    return-void
.end method

.method protected onOnNewActivityOptions(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 362
    return-void
.end method

.method protected onPauseActivity(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    return-void
.end method

.method protected onPauseActivityFinishing(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    return-void
.end method

.method protected onPictureInPictureModeChanged(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 390
    return-void
.end method

.method protected onProfilerControl(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    return-void
.end method

.method protected onReceiver(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 234
    return-void
.end method

.method protected onRelaunchActivity(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 282
    return-void
.end method

.method protected onRemoveProvider(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    return-void
.end method

.method protected onRequestAssistContextExtras(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 350
    return-void
.end method

.method protected onResumeActivity(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 210
    return-void
.end method

.method protected onScheduleCrash(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 314
    return-void
.end method

.method protected onSendResult(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    return-void
.end method

.method protected onServiceArgs(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 242
    return-void
.end method

.method protected onSetCoreSettings(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 330
    return-void
.end method

.method protected onShowWindow(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    return-void
.end method

.method protected onSleeping(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 326
    return-void
.end method

.method protected onStartBinderTracking(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 378
    return-void
.end method

.method protected onStopActivityHide(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 198
    return-void
.end method

.method protected onStopActivityShow(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 194
    return-void
.end method

.method protected onStopBinderTrackingAndDump(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 382
    return-void
.end method

.method protected onStopService(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 246
    return-void
.end method

.method protected onSuicide(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 298
    return-void
.end method

.method protected onTranslucentConversionComplete(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 354
    return-void
.end method

.method protected onTrimMemory(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 338
    return-void
.end method

.method protected onUnbindService(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 266
    return-void
.end method

.method protected onUnstableProviderDied(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 346
    return-void
.end method

.method protected onUpdatePackageCompatibilityInfo(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 334
    return-void
.end method
