.class Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.super Ljava/lang/Object;
.source "UniWebViewInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogRunnable"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;->name:Ljava/lang/String;

    .line 817
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 825
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 826
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_10

    .line 827
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;->runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 831
    :goto_f
    return-void

    .line 829
    :cond_10
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find the correct web view dialog for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    goto :goto_f
.end method

.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
