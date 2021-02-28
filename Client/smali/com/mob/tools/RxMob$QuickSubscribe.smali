.class public abstract Lcom/mob/tools/RxMob$QuickSubscribe;
.super Ljava/lang/Object;
.source "RxMob.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QuickSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mob/tools/RxMob$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 160
    .local p0, "this":Lcom/mob/tools/RxMob$QuickSubscribe;, "Lcom/mob/tools/RxMob$QuickSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/mob/tools/RxMob$QuickSubscribe;, "Lcom/mob/tools/RxMob$QuickSubscribe<TT;>;"
    .local p1, "subscriber":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onStart()V

    .line 164
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/mob/tools/RxMob$QuickSubscribe;->doNext(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 165
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9} :catch_a

    .line 169
    :goto_9
    return-void

    .line 166
    :catch_a
    move-exception v0

    .line 167
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected abstract doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
