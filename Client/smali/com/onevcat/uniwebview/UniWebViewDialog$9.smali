.class Lcom/onevcat/uniwebview/UniWebViewDialog$9;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


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
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$9;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 707
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UniWebView onDownloadStart for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->info(Ljava/lang/String;)V

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 710
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$9;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$400(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 711
    return-void
.end method
