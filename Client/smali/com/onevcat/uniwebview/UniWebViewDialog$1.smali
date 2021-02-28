.class Lcom/onevcat/uniwebview/UniWebViewDialog$1;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;-><init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isUserInteractionEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
