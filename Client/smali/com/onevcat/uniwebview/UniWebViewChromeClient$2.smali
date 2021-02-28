.class Lcom/onevcat/uniwebview/UniWebViewChromeClient$2;
.super Ljava/lang/Object;
.source "UniWebViewChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/webkit/JsResult;)V
    .registers 3
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 143
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->access$102(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 144
    return-void
.end method
