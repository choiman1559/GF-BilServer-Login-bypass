.class final Lcom/onevcat/uniwebview/UniWebViewInterface$49;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->setDefaultFontSize(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 738
    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$49;->val$size:I

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 741
    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$49;->val$size:I

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setDefaultFontSize(I)V

    .line 742
    return-void
.end method
