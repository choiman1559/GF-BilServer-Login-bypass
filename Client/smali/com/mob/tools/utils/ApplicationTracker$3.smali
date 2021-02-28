.class final Lcom/mob/tools/utils/ApplicationTracker$3;
.super Ljava/lang/Object;
.source "ApplicationTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/ApplicationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$backup:Landroid/os/Handler$Callback;

.field final synthetic val$fThread:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/os/Handler$Callback;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$backup:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    invoke-static {}, Lcom/mob/tools/utils/ApplicationTracker;->access$000()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_193

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ApplicationTracker$Tracker;

    .line 101
    .local v0, "t":Lcom/mob/tools/utils/ApplicationTracker$Tracker;
    :try_start_14
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1a4

    :pswitch_19
    goto :goto_8

    .line 102
    :pswitch_1a
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onLaunchActivity(Ljava/lang/Object;Landroid/os/Message;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_8

    .line 158
    :catch_20
    move-exception v1

    .line 159
    .local v1, "tt":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_8

    .line 103
    .end local v1    # "tt":Ljava/lang/Throwable;
    :pswitch_29
    :try_start_29
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onPauseActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 104
    :pswitch_2f
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onPauseActivityFinishing(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 105
    :pswitch_35
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStopActivityShow(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 106
    :pswitch_3b
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStopActivityHide(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 107
    :pswitch_41
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onShowWindow(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 108
    :pswitch_47
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onHideWindow(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 109
    :pswitch_4d
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onResumeActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 110
    :pswitch_53
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onSendResult(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 111
    :pswitch_59
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDestroyActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 112
    :pswitch_5f
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onBindApplication(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 113
    :pswitch_65
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onExitApplication(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 114
    :pswitch_6b
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onNewIntent(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 115
    :pswitch_71
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onReceiver(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 116
    :pswitch_77
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onCreateService(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 117
    :pswitch_7d
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onServiceArgs(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 118
    :pswitch_83
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStopService(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 119
    :pswitch_89
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onConfigurationChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 120
    :pswitch_90
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onCleanUpContext(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 121
    :pswitch_97
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onGcWhenIdle(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 122
    :pswitch_9e
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onBindService(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 123
    :pswitch_a5
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onUnbindService(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 124
    :pswitch_ac
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDumpService(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 125
    :pswitch_b3
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onLowMemory(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 126
    :pswitch_ba
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onActivityConfigurationChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 127
    :pswitch_c1
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onRelaunchActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 128
    :pswitch_c8
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onProfilerControl(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 129
    :pswitch_cf
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onCreateBackupAgent(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 130
    :pswitch_d6
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDestroyBackupAgent(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 131
    :pswitch_dd
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onSuicide(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 132
    :pswitch_e4
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onRemoveProvider(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 133
    :pswitch_eb
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onEnableJit(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 134
    :pswitch_f2
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDispatchPackageBroadcast(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 135
    :pswitch_f9
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onScheduleCrash(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 136
    :pswitch_100
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDumpHeap(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 137
    :pswitch_107
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDumpActivity(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 138
    :pswitch_10e
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onSleeping(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 139
    :pswitch_115
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onSetCoreSettings(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 140
    :pswitch_11c
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onUpdatePackageCompatibilityInfo(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 141
    :pswitch_123
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onTrimMemory(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 142
    :pswitch_12a
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onDumpProvider(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 143
    :pswitch_131
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onUnstableProviderDied(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 144
    :pswitch_138
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onRequestAssistContextExtras(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 145
    :pswitch_13f
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onTranslucentConversionComplete(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 146
    :pswitch_146
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onInstallProvider(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 147
    :pswitch_14d
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onOnNewActivityOptions(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 148
    :pswitch_154
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onCancelVisibleBehind(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 149
    :pswitch_15b
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onBackgroundVisibleBehindChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 150
    :pswitch_162
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onEnterAnimationComplete(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 151
    :pswitch_169
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStartBinderTracking(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 152
    :pswitch_170
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onStopBinderTrackingAndDump(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 153
    :pswitch_177
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onMultiWindowModeChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 154
    :pswitch_17e
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onPictureInPictureModeChanged(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 155
    :pswitch_185
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onLocalVoiceInteractionStarted(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 156
    :pswitch_18c
    iget-object v3, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$fThread:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/utils/ApplicationTracker$Tracker;->onAttachAgent(Ljava/lang/Object;Landroid/os/Message;)V
    :try_end_191
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_191} :catch_20

    goto/16 :goto_8

    .line 163
    .end local v0    # "t":Lcom/mob/tools/utils/ApplicationTracker$Tracker;
    :cond_193
    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$backup:Landroid/os/Handler$Callback;

    if-eqz v2, :cond_1a1

    iget-object v2, p0, Lcom/mob/tools/utils/ApplicationTracker$3;->val$backup:Landroid/os/Handler$Callback;

    invoke-interface {v2, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    const/4 v2, 0x1

    :goto_1a0
    return v2

    :cond_1a1
    const/4 v2, 0x0

    goto :goto_1a0

    .line 101
    nop

    :pswitch_data_1a4
    .packed-switch 0x64
        :pswitch_1a
        :pswitch_29
        :pswitch_2f
        :pswitch_35
        :pswitch_3b
        :pswitch_41
        :pswitch_47
        :pswitch_4d
        :pswitch_53
        :pswitch_59
        :pswitch_5f
        :pswitch_65
        :pswitch_6b
        :pswitch_71
        :pswitch_77
        :pswitch_7d
        :pswitch_83
        :pswitch_19
        :pswitch_89
        :pswitch_90
        :pswitch_97
        :pswitch_9e
        :pswitch_a5
        :pswitch_ac
        :pswitch_b3
        :pswitch_ba
        :pswitch_c1
        :pswitch_c8
        :pswitch_cf
        :pswitch_d6
        :pswitch_dd
        :pswitch_e4
        :pswitch_eb
        :pswitch_f2
        :pswitch_f9
        :pswitch_100
        :pswitch_107
        :pswitch_10e
        :pswitch_115
        :pswitch_11c
        :pswitch_123
        :pswitch_12a
        :pswitch_131
        :pswitch_138
        :pswitch_13f
        :pswitch_146
        :pswitch_14d
        :pswitch_154
        :pswitch_15b
        :pswitch_162
        :pswitch_169
        :pswitch_170
        :pswitch_177
        :pswitch_17e
        :pswitch_185
        :pswitch_18c
    .end packed-switch
.end method
