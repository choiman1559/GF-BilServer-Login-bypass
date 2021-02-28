.class final Lcom/mob/tools/utils/UIHandler$1;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/UIHandler;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/mob/tools/utils/UIHandler;->access$000(Landroid/os/Message;)V

    .line 66
    const/4 v0, 0x0

    return v0
.end method
