.class Lcom/mob/tools/RxMob$SubscriberWarpper$2;
.super Ljava/lang/Thread;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$SubscriberWarpper;->onStart()V
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
    .line 234
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$2;, "Lcom/mob/tools/RxMob$SubscriberWarpper$2;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$2;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 236
    .local p0, "this":Lcom/mob/tools/RxMob$SubscriberWarpper$2;, "Lcom/mob/tools/RxMob$SubscriberWarpper$2;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$SubscriberWarpper$2;->this$0:Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-static {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->access$400(Lcom/mob/tools/RxMob$SubscriberWarpper;)Lcom/mob/tools/RxMob$Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$Subscriber;->onStart()V

    .line 237
    return-void
.end method
