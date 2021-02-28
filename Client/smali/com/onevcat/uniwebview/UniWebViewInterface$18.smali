.class final Lcom/onevcat/uniwebview/UniWebViewInterface$18;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->removeUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$18;->val$scheme:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 5
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 352
    invoke-static {}, Lcom/onevcat/uniwebview/Logger;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing url scheme to web view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$18;->val$scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getSchemes()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$18;->val$scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method
