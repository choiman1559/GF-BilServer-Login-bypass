.class Lcom/mob/tools/FakeActivity$2;
.super Ljava/lang/Object;
.source "FakeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/FakeActivity;->runOnUIThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/FakeActivity;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mob/tools/FakeActivity;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mob/tools/FakeActivity;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/mob/tools/FakeActivity$2;->this$0:Lcom/mob/tools/FakeActivity;

    iput-object p2, p0, Lcom/mob/tools/FakeActivity$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mob/tools/FakeActivity$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 299
    const/4 v0, 0x0

    return v0
.end method