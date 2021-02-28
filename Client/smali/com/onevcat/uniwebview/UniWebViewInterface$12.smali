.class final Lcom/onevcat/uniwebview/UniWebViewInterface$12;
.super Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;
.source "UniWebViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface;->show(Ljava/lang/String;ZIFLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:F

.field final synthetic val$edge:I

.field final synthetic val$fade:Z

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[ZZIFLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$result:[Z

    iput-boolean p3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$fade:Z

    iput p4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$edge:I

    iput p5, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$duration:F

    iput-object p6, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$identifier:Ljava/lang/String;

    iput-object p7, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$DialogRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWith(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .registers 10
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 259
    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$result:[Z

    const/4 v7, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$fade:Z

    iget v3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$edge:I

    iget v4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$duration:F

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$identifier:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setShow(ZZIFLjava/lang/String;)Z

    move-result v0

    aput-boolean v0, v6, v7

    .line 260
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 261
    return-void
.end method
