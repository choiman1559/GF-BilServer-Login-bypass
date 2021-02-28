.class Landroid/support/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SnackbarManager$SnackbarRecord;,
        Landroid/support/design/widget/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static snackbarManager:Landroid/support/design/widget/SnackbarManager;


# instance fields
.field private currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/os/Handler;

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/SnackbarManager$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/SnackbarManager$1;-><init>(Landroid/support/design/widget/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .registers 5
    .param p1, "record"    # Landroid/support/design/widget/SnackbarManager$SnackbarRecord;
    .param p2, "event"    # I

    .prologue
    .line 202
    iget-object v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarManager$Callback;

    .line 203
    .local v0, "callback":Landroid/support/design/widget/SnackbarManager$Callback;
    if-eqz v0, :cond_14

    .line 205
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    invoke-interface {v0, p2}, Landroid/support/design/widget/SnackbarManager$Callback;->dismiss(I)V

    .line 207
    const/4 v1, 0x1

    .line 209
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method static getInstance()Landroid/support/design/widget/SnackbarManager;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Landroid/support/design/widget/SnackbarManager;

    invoke-direct {v0}, Landroid/support/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    .line 38
    :cond_b
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .registers 8
    .param p1, "r"    # Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .prologue
    .line 221
    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    .line 234
    :goto_5
    return-void

    .line 226
    :cond_6
    const/16 v0, 0xabe

    .line 227
    .local v0, "durationMs":I
    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_21

    .line 228
    iget v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 232
    :cond_e
    :goto_e
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 229
    :cond_21
    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 230
    const/16 v0, 0x5dc

    goto :goto_e
.end method

.method private showNextSnackbarLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_1a

    .line 188
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 189
    iput-object v2, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 191
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarManager$Callback;

    .line 192
    .local v0, "callback":Landroid/support/design/widget/SnackbarManager$Callback;
    if-eqz v0, :cond_1b

    .line 193
    invoke-interface {v0}, Landroid/support/design/widget/SnackbarManager$Callback;->show()V

    .line 199
    .end local v0    # "callback":Landroid/support/design/widget/SnackbarManager$Callback;
    :cond_1a
    :goto_1a
    return-void

    .line 196
    .restart local v0    # "callback":Landroid/support/design/widget/SnackbarManager$Callback;
    :cond_1b
    iput-object v2, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    goto :goto_1a
.end method


# virtual methods
.method public dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;
    .param p2, "event"    # I

    .prologue
    .line 104
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 106
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 110
    :cond_e
    :goto_e
    monitor-exit v1

    .line 111
    return-void

    .line 107
    :cond_10
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 108
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_e

    .line 110
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .registers 4
    .param p1, "record"    # Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .prologue
    .line 237
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_3
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eq v0, p1, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-ne v0, p1, :cond_f

    .line 239
    :cond_b
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 241
    :cond_f
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 160
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 162
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 166
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 168
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 118
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 122
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_13

    .line 123
    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 126
    :cond_13
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 134
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 136
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 138
    :cond_e
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public pauseTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 142
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean v0, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-nez v0, :cond_1b

    .line 144
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    .line 145
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    :cond_1b
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public restoreTimeoutIfPaused(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 151
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean v0, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-eqz v0, :cond_19

    .line 153
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    .line 154
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 156
    :cond_19
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public show(ILandroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 6
    .param p1, "duration"    # I
    .param p2, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 72
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_3
    invoke-direct {p0, p2}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 75
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 79
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 81
    monitor-exit v1

    .line 101
    :goto_1a
    return-void

    .line 82
    :cond_1b
    invoke-direct {p0, p2}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 84
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 90
    :goto_25
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x4

    .line 91
    invoke-direct {p0, v0, v2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 93
    monitor-exit v1

    goto :goto_1a

    .line 100
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0

    .line 87
    :cond_37
    :try_start_37
    new-instance v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;-><init>(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    goto :goto_25

    .line 96
    :cond_3f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 100
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_34

    goto :goto_1a
.end method
