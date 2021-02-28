.class Lcom/mob/tools/RxMob$SubscriberWarpper$5;
.super Ljava/lang/Object;
.source "RxMob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$SubscriberWarpper;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$SubscriberWarpper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mob/tools/RxMob$SubscriberWarpper;

    .prologue
    .line 279
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$5;, "Lcom/mob/tools/RxMob$SubscriberWarpper$5;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$5;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 281
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$5;, "Lcom/mob/tools/RxMob$SubscriberWarpper$5;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$5;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-static {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->access$400(Lcom/mob/tools/RxMob$SubscriberWarpper;)Lcom/mob/tools/RxMob$Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V

    .line 282
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$5;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    .line 283
    const/4 v0, 0x0

    return v0
.end method
