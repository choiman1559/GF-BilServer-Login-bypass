.class public Lcom/mob/tools/RxMob;
.super Ljava/lang/Object;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/RxMob$SubscriberWarpper;,
        Lcom/mob/tools/RxMob$Subscriber;,
        Lcom/mob/tools/RxMob$QuickSubscribe;,
        Lcom/mob/tools/RxMob$OnSubscribe;,
        Lcom/mob/tools/RxMob$Thread;,
        Lcom/mob/tools/RxMob$Subscribable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mob/tools/RxMob$OnSubscribe",
            "<TT;>;)",
            "Lcom/mob/tools/RxMob$Subscribable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "onSubscribe":Lcom/mob/tools/RxMob$OnSubscribe;, "Lcom/mob/tools/RxMob$OnSubscribe<TT;>;"
    new-instance v0, Lcom/mob/tools/RxMob$Subscribable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;-><init>(Lcom/mob/tools/RxMob$1;)V

    .line 79
    .local v0, "s":Lcom/mob/tools/RxMob$Subscribable;, "Lcom/mob/tools/RxMob$Subscribable<TT;>;"
    invoke-static {v0, p0}, Lcom/mob/tools/RxMob$Subscribable;->access$102(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$OnSubscribe;

    .line 80
    return-object v0
.end method

.method public static from(Ljava/util/Iterator;)Lcom/mob/tools/RxMob$Subscribable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Lcom/mob/tools/RxMob$Subscribable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "datas":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v0, Lcom/mob/tools/RxMob$2;

    invoke-direct {v0, p0}, Lcom/mob/tools/RxMob$2;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs just([Ljava/lang/Object;)Lcom/mob/tools/RxMob$Subscribable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/mob/tools/RxMob$Subscribable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "datas":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/mob/tools/RxMob$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/RxMob$1;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    return-object v0
.end method
