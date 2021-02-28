.class final Lcom/onevcat/uniwebview/UniWebViewInterface$42;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->setLoadWithOverviewMode(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$overview:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 668
    iput-boolean p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$42;->val$overview:Z

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 4
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 671
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$42;->val$overview:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 672
    return-void
.end method
