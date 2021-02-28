.class Lcom/onevcat/uniwebview/UniWebViewDialog$11;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->onVisibilityChanged(Z)V
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
    .line 845
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$11;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$11;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hideSystemUI()V

    .line 849
    return-void
.end method
