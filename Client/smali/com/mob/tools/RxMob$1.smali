.class final Lcom/mob/tools/RxMob$1;
.super Lcom/mob/tools/RxMob$QuickSubscribe;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob;->just([Ljava/lang/Object;)Lcom/mob/tools/RxMob$Subscribable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$QuickSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$datas:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mob/tools/RxMob$1;->val$datas:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$QuickSubscribe;-><init>()V

    return-void
.end method


# virtual methods
.method protected doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 6
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

    .prologue
    .line 86
    .local p1, "subscriber":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$1;->val$datas:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_e

    aget-object v0, v2, v1

    .line 87
    .local v0, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 89
    .end local v0    # "data":Ljava/lang/Object;, "TT;"
    :cond_e
    return-void
.end method
