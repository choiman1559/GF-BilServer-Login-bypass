.class final Lcom/onevcat/uniwebview/UniWebViewInterface$28;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->canGoForward(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 520
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$28;->val$result:[Z

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$28;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 5
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$28;->val$result:[Z

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isCanGoForward()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 524
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$28;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 525
    return-void
.end method
