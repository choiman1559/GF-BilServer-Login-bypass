.class Lcom/lohanry/android/framework/action/BaseAction$3;
.super Ljava/lang/Object;
.source "BaseAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lohanry/android/framework/action/BaseAction;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lohanry/android/framework/action/BaseAction;


# direct methods
.method constructor <init>(Lcom/lohanry/android/framework/action/BaseAction;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lohanry/android/framework/action/BaseAction;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lohanry/android/framework/action/BaseAction$3;->this$0:Lcom/lohanry/android/framework/action/BaseAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction$3;->this$0:Lcom/lohanry/android/framework/action/BaseAction;

    invoke-static {v0}, Lcom/lohanry/android/framework/action/BaseAction;->access$000(Lcom/lohanry/android/framework/action/BaseAction;)Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction$3;->this$0:Lcom/lohanry/android/framework/action/BaseAction;

    invoke-static {v0}, Lcom/lohanry/android/framework/action/BaseAction;->access$000(Lcom/lohanry/android/framework/action/BaseAction;)Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/lohanry/android/framework/action/BaseAction$3;->this$0:Lcom/lohanry/android/framework/action/BaseAction;

    invoke-interface {v0, v1}, Lcom/lohanry/android/framework/action/callback/BaseActionResultCallBack;->onCancel(Lcom/lohanry/android/framework/action/BaseAction;)V

    .line 76
    :cond_13
    iget-object v0, p0, Lcom/lohanry/android/framework/action/BaseAction$3;->this$0:Lcom/lohanry/android/framework/action/BaseAction;

    invoke-virtual {v0}, Lcom/lohanry/android/framework/action/BaseAction;->onFinish()V

    .line 77
    return-void
.end method
