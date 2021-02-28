.class Lcom/onevcat/uniwebview/UniWebViewClient$1;
.super Ljava/lang/Object;
.source "UniWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewClient;->showHttpAuthDialog(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewClient;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewClient;Landroid/webkit/HttpAuthHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewClient;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewClient$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewClient;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewClient$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewClient$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 217
    return-void
.end method
