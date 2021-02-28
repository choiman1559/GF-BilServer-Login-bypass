.class final Lcom/onevcat/uniwebview/UniWebViewInterface$38;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->addSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$domain:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 628
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$38;->val$domain:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 4
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getSslExceptionDomains()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$38;->val$domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 632
    return-void
.end method
