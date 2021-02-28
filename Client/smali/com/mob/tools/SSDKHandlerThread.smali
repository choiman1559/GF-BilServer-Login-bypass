.class public abstract Lcom/mob/tools/SSDKHandlerThread;
.super Ljava/lang/Object;
.source "SSDKHandlerThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_START:I = -0x1

.field private static final MSG_STOP:I = -0x2


# instance fields
.field protected final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/mob/tools/MobHandlerThread;

    invoke-direct {v0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    .line 16
    .local v0, "thread":Lcom/mob/tools/MobHandlerThread;
    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->start()V

    .line 17
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/MobHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/tools/SSDKHandlerThread;->handler:Landroid/os/Handler;

    .line 18
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 50
    invoke-virtual {p0, p1}, Lcom/mob/tools/SSDKHandlerThread;->onMessage(Landroid/os/Message;)V

    .line 52
    :goto_8
    const/4 v0, 0x0

    return v0

    .line 48
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/mob/tools/SSDKHandlerThread;->onStart(Landroid/os/Message;)V

    goto :goto_8

    .line 49
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/mob/tools/SSDKHandlerThread;->onStop(Landroid/os/Message;)V

    goto :goto_8

    .line 47
    :pswitch_data_12
    .packed-switch -0x2
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method

.method protected abstract onMessage(Landroid/os/Message;)V
.end method

.method protected onStart(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    return-void
.end method

.method protected onStop(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    return-void
.end method

.method public startThread()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/mob/tools/SSDKHandlerThread;->startThread(IILjava/lang/Object;)V

    .line 22
    return-void
.end method

.method public startThread(IILjava/lang/Object;)V
    .registers 6
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 25
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 26
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 27
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 28
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 29
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/mob/tools/SSDKHandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    return-void
.end method

.method public stopThread()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/mob/tools/SSDKHandlerThread;->stopThread(IILjava/lang/Object;)V

    .line 35
    return-void
.end method

.method public stopThread(IILjava/lang/Object;)V
    .registers 6
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 38
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 39
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 40
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 41
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 42
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/mob/tools/SSDKHandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    return-void
.end method
