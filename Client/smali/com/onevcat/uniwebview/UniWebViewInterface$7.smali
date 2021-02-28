.class final Lcom/onevcat/uniwebview/UniWebViewInterface$7;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->stop(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$7;->val$name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 190
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$7;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 191
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_f

    .line 192
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->stop()V

    .line 194
    :cond_f
    return-void
.end method
