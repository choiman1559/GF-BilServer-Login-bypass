.class final Lcom/mob/tools/RxMob$SubscriberWarpper;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriberWarpper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mob/tools/RxMob$Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private subscribable:Lcom/mob/tools/RxMob$Subscribable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$Subscribable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private subscriber:Lcom/mob/tools/RxMob$Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscribable",
            "<TT;>;",
            "Lcom/mob/tools/RxMob$Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper;, "Lcom/mob/tools/RxMob$SubscriberWarpper<TT;>;"
    .local p1, "subscribable":Lcom/mob/tools/RxMob$Subscribable;, "Lcom/mob/tools/RxMob$Subscribable<TT;>;"
    .local p2, "subscriber":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    .line 211
    iput-object p2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    .line 212
    invoke-static {p2, p0}, Lcom/mob/tools/RxMob$Subscriber;->access$200(Lcom/mob/tools/RxMob$Subscriber;Lcom/mob/tools/RxMob$SubscriberWarpper;)V

    .line 213
    return-void
.end method

.method static synthetic access$400(Lcom/mob/tools/RxMob$SubscriberWarpper;)Lcom/mob/tools/RxMob$Subscriber;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/RxMob$SubscriberWarpper;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    return-object v0
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 272
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper;, "Lcom/mob/tools/RxMob$SubscriberWarpper<TT;>;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    if-eqz v2, :cond_2e

    .line 273
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v2}, Lcom/mob/tools/RxMob$Subscribable;->access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_39

    .line 274
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 275
    .local v0, "mainThreadId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_2f

    .line 276
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-virtual {v2}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    .line 277
    invoke-virtual {p0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    .line 299
    .end local v0    # "mainThreadId":J
    :cond_2e
    :goto_2e
    return-void

    .line 279
    .restart local v0    # "mainThreadId":J
    :cond_2f
    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/RxMob$SubscriberWarpper$5;

    invoke-direct {v3, p0}, Lcom/mob/tools/RxMob$SubscriberWarpper$5;-><init>(Lcom/mob/tools/RxMob$SubscriberWarpper;)V

    invoke-static {v2, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_2e

    .line 287
    .end local v0    # "mainThreadId":J
    :cond_39
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v2}, Lcom/mob/tools/RxMob$Subscribable;->access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_4c

    .line 288
    new-instance v2, Lcom/mob/tools/RxMob$SubscriberWarpper$6;

    invoke-direct {v2, p0}, Lcom/mob/tools/RxMob$SubscriberWarpper$6;-><init>(Lcom/mob/tools/RxMob$SubscriberWarpper;)V

    .line 293
    invoke-virtual {v2}, Lcom/mob/tools/RxMob$SubscriberWarpper$6;->start()V

    goto :goto_2e

    .line 295
    :cond_4c
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-virtual {v2}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    .line 296
    invoke-virtual {p0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    goto :goto_2e
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 302
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper;, "Lcom/mob/tools/RxMob$SubscriberWarpper<TT;>;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    if-eqz v2, :cond_2e

    .line 303
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v2}, Lcom/mob/tools/RxMob$Subscribable;->access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_39

    .line 304
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 305
    .local v0, "mainThreadId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_2f

    .line 306
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-virtual {v2, p1}, Lcom/mob/tools/RxMob$Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 307
    invoke-virtual {p0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    .line 329
    .end local v0    # "mainThreadId":J
    :cond_2e
    :goto_2e
    return-void

    .line 309
    .restart local v0    # "mainThreadId":J
    :cond_2f
    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/RxMob$SubscriberWarpper$7;

    invoke-direct {v3, p0, p1}, Lcom/mob/tools/RxMob$SubscriberWarpper$7;-><init>(Lcom/mob/tools/RxMob$SubscriberWarpper;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_2e

    .line 317
    .end local v0    # "mainThreadId":J
    :cond_39
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v2}, Lcom/mob/tools/RxMob$Subscribable;->access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_4c

    .line 318
    new-instance v2, Lcom/mob/tools/RxMob$SubscriberWarpper$8;

    invoke-direct {v2, p0, p1}, Lcom/mob/tools/RxMob$SubscriberWarpper$8;-><init>(Lcom/mob/tools/RxMob$SubscriberWarpper;Ljava/lang/Throwable;)V

    .line 323
    invoke-virtual {v2}, Lcom/mob/tools/RxMob$SubscriberWarpper$8;->start()V

    goto :goto_2e

    .line 325
    :cond_4c
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-virtual {v2, p1}, Lcom/mob/tools/RxMob$Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 326
    invoke-virtual {p0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    goto :goto_2e
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper;, "Lcom/mob/tools/RxMob$SubscriberWarpper<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    if-eqz v2, :cond_2b

    .line 247
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v2}, Lcom/mob/tools/RxMob$Subscribable;->access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_36

    .line 248
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 249
    .local v0, "mainThreadId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_2c

    .line 250
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-virtual {v2, p1}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    .line 269
    .end local v0    # "mainThreadId":J
    :cond_2b
    :goto_2b
    return-void

    .line 252
    .restart local v0    # "mainThreadId":J
    :cond_2c
    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/RxMob$SubscriberWarpper$3;

    invoke-direct {v3, p0, p1}, Lcom/mob/tools/RxMob$SubscriberWarpper$3;-><init>(Lcom/mob/tools/RxMob$SubscriberWarpper;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_2b

    .line 259
    .end local v0    # "mainThreadId":J
    :cond_36
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v2}, Lcom/mob/tools/RxMob$Subscribable;->access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_49

    .line 260
    new-instance v2, Lcom/mob/tools/RxMob$SubscriberWarpper$4;

    invoke-direct {v2, p0, p1}, Lcom/mob/tools/RxMob$SubscriberWarpper$4;-><init>(Lcom/mob/tools/RxMob$SubscriberWarpper;Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v2}, Lcom/mob/tools/RxMob$SubscriberWarpper$4;->start()V

    goto :goto_2b

    .line 266
    :cond_49
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-virtual {v2, p1}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_2b
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 220
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper;, "Lcom/mob/tools/RxMob$SubscriberWarpper<TT;>;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    if-eqz v2, :cond_2b

    .line 221
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v2}, Lcom/mob/tools/RxMob$Subscribable;->access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_36

    .line 222
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 223
    .local v0, "mainThreadId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_2c

    .line 224
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-virtual {v2}, Lcom/mob/tools/RxMob$Subscriber;->onStart()V

    .line 243
    .end local v0    # "mainThreadId":J
    :cond_2b
    :goto_2b
    return-void

    .line 226
    .restart local v0    # "mainThreadId":J
    :cond_2c
    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/RxMob$SubscriberWarpper$1;

    invoke-direct {v3, p0}, Lcom/mob/tools/RxMob$SubscriberWarpper$1;-><init>(Lcom/mob/tools/RxMob$SubscriberWarpper;)V

    invoke-static {v2, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_2b

    .line 233
    .end local v0    # "mainThreadId":J
    :cond_36
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscribable:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v2}, Lcom/mob/tools/RxMob$Subscribable;->access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_49

    .line 234
    new-instance v2, Lcom/mob/tools/RxMob$SubscriberWarpper$2;

    invoke-direct {v2, p0}, Lcom/mob/tools/RxMob$SubscriberWarpper$2;-><init>(Lcom/mob/tools/RxMob$SubscriberWarpper;)V

    .line 238
    invoke-virtual {v2}, Lcom/mob/tools/RxMob$SubscriberWarpper$2;->start()V

    goto :goto_2b

    .line 240
    :cond_49
    iget-object v2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-virtual {v2}, Lcom/mob/tools/RxMob$Subscriber;->onStart()V

    goto :goto_2b
.end method

.method public removeSubscriber()V
    .registers 2

    .prologue
    .line 216
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper;, "Lcom/mob/tools/RxMob$SubscriberWarpper<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper;->subscriber:Lcom/mob/tools/RxMob$Subscriber;

    .line 217
    return-void
.end method
