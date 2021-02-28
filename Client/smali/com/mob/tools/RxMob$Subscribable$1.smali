.class Lcom/mob/tools/RxMob$Subscribable$1;
.super Ljava/lang/Object;
.source "RxMob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/RxMob$Subscribable;

.field final synthetic val$subscriber:Lcom/mob/tools/RxMob$Subscriber;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mob/tools/RxMob$Subscribable;

    .prologue
    .line 125
    .local p0, "this":Lcom/mob/tools/RxMob$Subscribable$1;, "Lcom/mob/tools/RxMob$Subscribable$1;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable$1;->this$0:Lcom/mob/tools/RxMob$Subscribable;

    iput-object p2, p0, Lcom/mob/tools/RxMob$Subscribable$1;->val$subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    .local p0, "this":Lcom/mob/tools/RxMob$Subscribable$1;, "Lcom/mob/tools/RxMob$Subscribable$1;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable$1;->this$0:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v0}, Lcom/mob/tools/RxMob$Subscribable;->access$100(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$OnSubscribe;

    move-result-object v0

    new-instance v1, Lcom/mob/tools/RxMob$SubscriberWarpper;

    iget-object v2, p0, Lcom/mob/tools/RxMob$Subscribable$1;->this$0:Lcom/mob/tools/RxMob$Subscribable;

    iget-object v3, p0, Lcom/mob/tools/RxMob$Subscribable$1;->val$subscriber:Lcom/mob/tools/RxMob$Subscriber;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/RxMob$SubscriberWarpper;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    invoke-interface {v0, v1}, Lcom/mob/tools/RxMob$OnSubscribe;->call(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 128
    const/4 v0, 0x0

    return v0
.end method
