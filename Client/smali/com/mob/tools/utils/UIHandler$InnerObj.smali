.class final Lcom/mob/tools/utils/UIHandler$InnerObj;
.super Ljava/lang/Object;
.source "UIHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/UIHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerObj"
.end annotation


# instance fields
.field public final callback:Landroid/os/Handler$Callback;

.field public final msg:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/os/Handler$Callback;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/mob/tools/utils/UIHandler$InnerObj;->msg:Landroid/os/Message;

    .line 144
    iput-object p2, p0, Lcom/mob/tools/utils/UIHandler$InnerObj;->callback:Landroid/os/Handler$Callback;

    .line 145
    return-void
.end method
