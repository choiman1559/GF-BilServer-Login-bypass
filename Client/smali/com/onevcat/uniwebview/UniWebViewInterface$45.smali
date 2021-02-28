.class final Lcom/onevcat/uniwebview/UniWebViewInterface$45;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->setWebContentsDebuggingEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 698
    iput-boolean p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$45;->val$enabled:Z

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$45;->val$enabled:Z

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 702
    return-void
.end method
