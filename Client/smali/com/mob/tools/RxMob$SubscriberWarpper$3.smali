.class Lcom/mob/tools/RxMob$SubscriberWarpper$3;
.super Ljava/lang/Object;
.source "RxMob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$SubscriberWarpper;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$SubscriberWarpper;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mob/tools/RxMob$SubscriberWarpper;

    .prologue
    .line 252
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$3;, "Lcom/mob/tools/RxMob$SubscriberWarpper$3;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$3;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    iput-object p2, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$3;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 254
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$3;, "Lcom/mob/tools/RxMob$SubscriberWarpper$3;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$3;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-static {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->access$400(Lcom/mob/tools/RxMob$SubscriberWarpper;)Lcom/mob/tools/RxMob$Subscriber;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$3;->val$data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscriber;->onNext(Ljava/lang/Object;)V

    .line 255
    const/4 v0, 0x0

    return v0
.end method
