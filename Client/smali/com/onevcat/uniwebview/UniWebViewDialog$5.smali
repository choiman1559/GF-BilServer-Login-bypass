.class Lcom/onevcat/uniwebview/UniWebViewDialog$5;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->addJavaScript(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

.field final synthetic val$identifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->val$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 508
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive a call back of adding js interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 512
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 513
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->val$identifier:Ljava/lang/String;

    const-string v2, "0"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v0, "payload":Lcom/onevcat/uniwebview/UniWebViewResultPayload;
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v1, v1, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onAddJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 519
    :goto_3a
    return-void

    .line 516
    .end local v0    # "payload":Lcom/onevcat/uniwebview/UniWebViewResultPayload;
    :cond_3b
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->val$identifier:Ljava/lang/String;

    const-string v2, "-1"

    invoke-direct {v0, v1, v2, p1}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .restart local v0    # "payload":Lcom/onevcat/uniwebview/UniWebViewResultPayload;
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v1, v1, Lcom/onevcat/uniwebview/UniWebViewDialog;->listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onAddJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    goto :goto_3a
.end method
