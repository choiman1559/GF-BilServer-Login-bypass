.class final Lcom/mob/tools/RxMob$2;
.super Lcom/mob/tools/RxMob$QuickSubscribe;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob;->from(Ljava/util/Iterator;)Lcom/mob/tools/RxMob$Subscribable;
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
.field final synthetic val$datas:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mob/tools/RxMob$2;->val$datas:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$QuickSubscribe;-><init>()V

    return-void
.end method


# virtual methods
.method protected doNext(Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 3
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
    .line 96
    .local p1, "subscriber":Lcom/mob/tools/RxMob$Subscriber;, "Lcom/mob/tools/RxMob$Subscriber<TT;>;"
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/RxMob$2;->val$datas:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 97
    iget-object v0, p0, Lcom/mob/tools/RxMob$2;->val$datas:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_12
    return-void
.end method
