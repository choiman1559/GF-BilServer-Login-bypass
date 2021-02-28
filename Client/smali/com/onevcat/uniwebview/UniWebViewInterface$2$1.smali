.class Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;
.super Ljava/lang/Object;
.source "UniWebViewInterface.java"

# interfaces
.implements Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewInterface$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 6
    .param p1, "uniWebViewDialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "onAddJavaScriptFinished"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "AddJavaScriptFinished"

    invoke-static {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onAnimationFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 6
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished, animation id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "AnimateToFinished"

    invoke-static {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onDialogClose(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 4
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 98
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "onDialogClose"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->getInstance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v1, v1, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewManager;->removeUniWebView(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onDialogClosedByBackButton(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 5
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 86
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "onDialogClosedByBackButton"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "WebViewDone"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onDialogKeyDown(Lcom/onevcat/uniwebview/UniWebViewDialog;I)V
    .registers 6
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "keyCode"    # I

    .prologue
    .line 92
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogKeyDown, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "WebViewKeyDown"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onHideTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 5
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "onHideTransitionFinished"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "HideTransitionFinished"

    invoke-static {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 6
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "onEvalJavaScriptFinished"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "EvalJavaScriptFinished"

    invoke-static {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onPageFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;)V
    .registers 8
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "statusCode"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    const-string v1, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "payload":Lcom/onevcat/uniwebview/UniWebViewResultPayload;
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v1, v1, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v2, "PageFinished"

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onPageStarted(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 6
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "PageStarted"

    invoke-static {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error Description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    const-string v1, ""

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, "payload":Lcom/onevcat/uniwebview/UniWebViewResultPayload;
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v1, v1, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v2, "PageErrorReceived"

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onSendMessageReceived(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 5
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "MessageReceived"

    invoke-static {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onShowTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 5
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "onShowTransitionFinished"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$2$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewInterface$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewInterface$2;->val$name:Ljava/lang/String;

    const-string v1, "ShowTransitionFinished"

    invoke-static {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->shouldOverride(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
