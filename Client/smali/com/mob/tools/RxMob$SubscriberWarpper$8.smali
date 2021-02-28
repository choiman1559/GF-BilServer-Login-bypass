.class Lcom/mob/tools/RxMob$SubscriberWarpper$8;
.super Ljava/lang/Thread;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$SubscriberWarpper;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$SubscriberWarpper;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mob/tools/RxMob$SubscriberWarpper;

    .prologue
    .line 318
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$8;, "Lcom/mob/tools/RxMob$SubscriberWarpper$8;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$8;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    iput-object p2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$8;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 320
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$8;, "Lcom/mob/tools/RxMob$SubscriberWarpper$8;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$8;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-static {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->access$400(Lcom/mob/tools/RxMob$SubscriberWarpper;)Lcom/mob/tools/RxMob$Subscriber;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$8;->val$t:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 321
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$8;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    .line 322
    return-void
.end method
