.class Lcom/onevcat/uniwebview/UniWebViewDialog$8;
.super Lcom/onevcat/uniwebview/UniWebView;
.source "UniWebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->addWebViewContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$8;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0, p2}, Lcom/onevcat/uniwebview/UniWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCustomizeHeaders()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Get header!!!"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$8;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
