.class Lcom/onevcat/uniwebview/UniWebViewDialog$7;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->goBack()Z
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


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$7;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 559
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog$7;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 561
    return-void
.end method
