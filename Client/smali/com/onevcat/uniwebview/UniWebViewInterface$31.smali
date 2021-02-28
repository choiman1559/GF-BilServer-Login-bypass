.class final Lcom/onevcat/uniwebview/UniWebViewInterface$31;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->setOpenLinksInExternalBrowser(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 558
    iput-boolean p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$31;->val$flag:Z

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$31;->val$flag:Z

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setOpenLinksInExternalBrowser(Z)V

    .line 562
    return-void
.end method
