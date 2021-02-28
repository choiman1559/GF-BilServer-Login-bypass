.class Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;
.super Lcom/mob/tools/MobHandlerThread;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-direct {p0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->access$600(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)V

    .line 174
    invoke-super {p0}, Lcom/mob/tools/MobHandlerThread;->run()V

    .line 175
    return-void
.end method
