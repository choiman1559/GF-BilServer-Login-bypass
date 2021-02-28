.class public final Lcom/mob/tools/RxMob$Subscribable;
.super Ljava/lang/Object;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscribable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private observeThread:Lcom/mob/tools/RxMob$Thread;

.field private onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field

.field private subscribeThread:Lcom/mob/tools/RxMob$Thread;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 108
    .local p0, "this":Lcom/mob/tools/RxMob$Subscribable;, "Lcom/mob/tools/RxMob$Subscribable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/RxMob$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/mob/tools/RxMob$1;

    .prologue
    .line 103
    .local p0, "this":Lcom/mob/tools/RxMob$Subscribable;, "Lcom/mob/tools/RxMob$Subscribable<TT;>;"
    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscribable;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$OnSubscribe;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/RxMob$Subscribable;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$OnSubscribe;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/RxMob$Subscribable;
    .param p1, "x1"    # Lcom/mob/tools/RxMob$OnSubscribe;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/RxMob$Subscribable;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->observeThread:Lcom/mob/tools/RxMob$Thread;

    return-object v0
.end method


# virtual methods
.method public observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;
    .registers 2
    .param p1, "thread"    # Lcom/mob/tools/RxMob$Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Thread;",
            ")",
            "Lcom/mob/tools/RxMob$Subscribable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/mob/tools/RxMob$Subscribable;, "Lcom/mob/tools/RxMob$Subscribable<TT;>;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->observeThread:Lcom/mob/tools/RxMob$Thread;

    .line 119
    return-object p0
.end method

.method public subscribe(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/mob/tools/RxMob$Subscribable;, "Lcom/mob/tools/RxMob$Subscribable<TT;>;"
    .local p1, "subscriber":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    if-eqz v0, :cond_13

    .line 124
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->subscribeThread:Lcom/mob/tools/RxMob$Thread;

    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v0, v1, :cond_14

    .line 125
    const/4 v0, 0x0

    new-instance v1, Lcom/mob/tools/RxMob$Subscribable$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/RxMob$Subscribable$1;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 141
    :cond_13
    :goto_13
    return-void

    .line 131
    :cond_14
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->subscribeThread:Lcom/mob/tools/RxMob$Thread;

    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v0, v1, :cond_23

    .line 132
    new-instance v0, Lcom/mob/tools/RxMob$Subscribable$2;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/RxMob$Subscribable$2;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    .line 136
    invoke-virtual {v0}, Lcom/mob/tools/RxMob$Subscribable$2;->start()V

    goto :goto_13

    .line 138
    :cond_23
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    new-instance v1, Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/RxMob$SubscriberWarpper;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    invoke-interface {v0, v1}, Lcom/mob/tools/RxMob$OnSubscribe;->call(Lcom/mob/tools/RxMob$Subscriber;)V

    goto :goto_13
.end method

.method public subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;
    .registers 2
    .param p1, "thread"    # Lcom/mob/tools/RxMob$Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Thread;",
            ")",
            "Lcom/mob/tools/RxMob$Subscribable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/mob/tools/RxMob$Subscribable;, "Lcom/mob/tools/RxMob$Subscribable<TT;>;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->subscribeThread:Lcom/mob/tools/RxMob$Thread;

    .line 114
    return-object p0
.end method

.method public subscribeOnNewThreadAndObserveOnUIThread(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/mob/tools/RxMob$Subscribable;, "Lcom/mob/tools/RxMob$Subscribable<TT;>;"
    .local p1, "subscriber":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 145
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 146
    invoke-virtual {p0, p1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 147
    return-void
.end method
