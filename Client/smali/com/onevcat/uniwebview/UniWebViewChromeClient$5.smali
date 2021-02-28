.class Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;
.super Ljava/lang/Object;
.source "UniWebViewChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V
    .registers 4
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 191
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 192
    .local v0, "editable":Landroid/text/Editable;
    const-string v1, ""

    .line 193
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_e
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 197
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->access$102(Lcom/onevcat/uniwebview/UniWebViewChromeClient;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 199
    return-void
.end method
