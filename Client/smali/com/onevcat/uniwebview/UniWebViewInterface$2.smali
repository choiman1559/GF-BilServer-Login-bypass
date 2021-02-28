.class final Lcom/onevcat/uniwebview/UniWebViewInterface$2;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->init(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$x:I

    iput p4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$y:I

    iput p5, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$width:I

    iput p6, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$height:I

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 53
    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;-><init>(Lcom/onevcat/uniwebview/UniWebViewInterface$2;)V

    .line 135
    .local v1, "listener":Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interface init: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$100()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;-><init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;)V

    .line 137
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$x:I

    iget v3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$y:I

    iget v4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$width:I

    iget v5, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$height:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setFrame(IIII)V

    .line 139
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/onevcat/uniwebview/UniWebViewManager;->setUniWebView(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 140
    return-void
.end method
