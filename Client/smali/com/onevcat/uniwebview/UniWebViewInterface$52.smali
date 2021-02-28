.class final Lcom/onevcat/uniwebview/UniWebViewInterface$52;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->scrollTo(Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animated:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIZ)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 774
    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$52;->val$x:I

    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$52;->val$y:I

    iput-boolean p4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$52;->val$animated:Z

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 5
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 777
    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$52;->val$x:I

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$52;->val$y:I

    iget-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$52;->val$animated:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->scrollTo(IIZ)V

    .line 778
    return-void
.end method
