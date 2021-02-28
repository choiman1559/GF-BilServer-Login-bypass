.class final Lcom/onevcat/uniwebview/UniWebViewInterface$51;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->showWebViewDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-boolean p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$51;->val$show:Z

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$51;->val$show:Z

    if-eqz v0, :cond_b

    .line 763
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goForeground()V

    .line 764
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSystemUI()V

    .line 768
    :goto_a
    return-void

    .line 766
    :cond_b
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goBackground()V

    goto :goto_a
.end method
