.class Lcom/mob/tools/RxMob$SubscriberWarpper$7;
.super Ljava/lang/Object;
.source "RxMob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 309
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$7;, "Lcom/mob/tools/RxMob$SubscriberWarpper$7;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    iput-object p2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 311
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$7;, "Lcom/mob/tools/RxMob$SubscriberWarpper$7;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-static {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->access$400(Lcom/mob/tools/RxMob$SubscriberWarpper;)Lcom/mob/tools/RxMob$Subscriber;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->val$t:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 312
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$7;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    .line 313
    const/4 v0, 0x0

    return v0
.end method
