.class final Lcom/onevcat/uniwebview/UniWebViewInterface$4;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->load(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$4;->val$url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$4;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->load(Ljava/lang/String;)V

    .line 160
    return-void
.end method
