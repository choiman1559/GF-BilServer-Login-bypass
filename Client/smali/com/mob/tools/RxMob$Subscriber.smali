.class public Lcom/mob/tools/RxMob$Subscriber;
.super Ljava/lang/Object;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subscriber"
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
.field private warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$SubscriberWarpper",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 174
    .local p0, "this":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/RxMob$Subscriber;Lcom/mob/tools/RxMob$SubscriberWarpper;)V
    .registers 2
    .param p0, "x0"    # Lcom/mob/tools/RxMob$Subscriber;
    .param p1, "x1"    # Lcom/mob/tools/RxMob$SubscriberWarpper;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/mob/tools/RxMob$Subscriber;->setWarpper(Lcom/mob/tools/RxMob$SubscriberWarpper;)V

    return-void
.end method

.method private setWarpper(Lcom/mob/tools/RxMob$SubscriberWarpper;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$SubscriberWarpper",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    .local p1, "warpper":Lcom/mob/tools/RxMob$SubscriberWarpper;, "Lcom/mob/tools/RxMob$SubscriberWarpper<TT;>;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscriber;->warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;

    .line 179
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 191
    .local p0, "this":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 195
    .local p0, "this":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 183
    .local p0, "this":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    return-void
.end method

.method public final unsubscribe()V
    .registers 2

    .prologue
    .line 198
    .local p0, "this":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscriber;->warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;

    if-eqz v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscriber;->warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/RxMob$Subscriber;->warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;

    .line 202
    :cond_c
    return-void
.end method
