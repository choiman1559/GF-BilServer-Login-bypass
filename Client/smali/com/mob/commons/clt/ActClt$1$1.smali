.class Lcom/mob/commons/clt/ActClt$1$1;
.super Ljava/lang/Object;
.source "ActClt.java"

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/ActClt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/clt/ActClt$1;


# direct methods
.method constructor <init>(Lcom/mob/commons/clt/ActClt$1;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mob/commons/clt/ActClt$1$1;->a:Lcom/mob/commons/clt/ActClt$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 36
    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/mob/commons/clt/ActClt$1$1;->onStopped(Landroid/app/Activity;)V

    .line 63
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 52
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt$1$1;->a:Lcom/mob/commons/clt/ActClt$1;

    iget-object v0, v0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    invoke-static {v0}, Lcom/mob/commons/clt/ActClt;->b(Lcom/mob/commons/clt/ActClt;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 44
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt$1$1;->a:Lcom/mob/commons/clt/ActClt$1;

    iget-object v0, v0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    invoke-static {v0}, Lcom/mob/commons/clt/ActClt;->a(Lcom/mob/commons/clt/ActClt;)V

    .line 46
    :cond_11
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt$1$1;->a:Lcom/mob/commons/clt/ActClt$1;

    iget-object v0, v0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mob/commons/clt/ActClt;->a(Lcom/mob/commons/clt/ActClt;Z)Z

    .line 47
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt$1$1;->a:Lcom/mob/commons/clt/ActClt$1;

    iget-object v0, v0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    invoke-static {v0, p1}, Lcom/mob/commons/clt/ActClt;->a(Lcom/mob/commons/clt/ActClt;Landroid/app/Activity;)Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 67
    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 40
    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt$1$1;->a:Lcom/mob/commons/clt/ActClt$1;

    iget-object v0, v0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    invoke-static {v0}, Lcom/mob/commons/clt/ActClt;->c(Lcom/mob/commons/clt/ActClt;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 56
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt$1$1;->a:Lcom/mob/commons/clt/ActClt$1;

    iget-object v0, v0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/commons/clt/ActClt;->a(Lcom/mob/commons/clt/ActClt;Z)Z

    .line 57
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt$1$1;->a:Lcom/mob/commons/clt/ActClt$1;

    iget-object v0, v0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/commons/clt/ActClt;->a(Lcom/mob/commons/clt/ActClt;Landroid/app/Activity;)Landroid/app/Activity;

    .line 59
    :cond_1e
    return-void
.end method
