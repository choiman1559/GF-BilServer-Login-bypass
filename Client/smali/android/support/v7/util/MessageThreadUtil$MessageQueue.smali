.class Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .registers 3

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v1, :cond_8

    .line 237
    const/4 v0, 0x0

    .line 241
    :goto_6
    monitor-exit p0

    return-object v0

    .line 239
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 240
    .local v0, "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_6

    .line 236
    .end local v0    # "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removeMessages(I)V
    .registers 6
    .param p1, "what"    # I

    .prologue
    .line 262
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1a

    .line 263
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 264
    .local v0, "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget-object v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iput-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 265
    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_1

    .line 262
    .end local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3

    .line 267
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_33

    .line 268
    iget-object v2, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 269
    .local v2, "prev":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget-object v0, v2, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 270
    .restart local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_22
    if-eqz v0, :cond_33

    .line 271
    iget-object v1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 272
    .local v1, "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_31

    .line 273
    iput-object v1, v2, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 274
    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_17

    .line 278
    :goto_2f
    move-object v0, v1

    .line 279
    goto :goto_22

    .line 276
    :cond_31
    move-object v2, v0

    goto :goto_2f

    .line 281
    .end local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .end local v1    # "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .end local v2    # "prev":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :cond_33
    monitor-exit p0

    return-void
.end method

.method declared-synchronized sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .registers 4
    .param p1, "item"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 250
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_9

    .line 251
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 259
    :goto_7
    monitor-exit p0

    return-void

    .line 254
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 255
    .local v0, "last":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_b
    iget-object v1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_12

    .line 256
    iget-object v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    goto :goto_b

    .line 258
    :cond_12
    iput-object p1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_7

    .line 250
    .end local v0    # "last":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .registers 3
    .param p1, "item"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 246
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 247
    monitor-exit p0

    return-void

    .line 245
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
