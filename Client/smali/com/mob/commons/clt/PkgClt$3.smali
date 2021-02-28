.class Lcom/mob/commons/clt/PkgClt$3;
.super Landroid/content/BroadcastReceiver;
.source "PkgClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/PkgClt;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/clt/PkgClt;


# direct methods
.method constructor <init>(Lcom/mob/commons/clt/PkgClt;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mob/commons/clt/PkgClt$3;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 225
    const/4 v0, 0x0

    .line 226
    if-eqz p2, :cond_8

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_8
    iget-object v1, p0, Lcom/mob/commons/clt/PkgClt$3;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-static {v1, v0}, Lcom/mob/commons/clt/PkgClt;->a(Lcom/mob/commons/clt/PkgClt;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt$3;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-static {v0}, Lcom/mob/commons/clt/PkgClt;->d(Lcom/mob/commons/clt/PkgClt;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 231
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt$3;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-static {v0}, Lcom/mob/commons/clt/PkgClt;->d(Lcom/mob/commons/clt/PkgClt;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt$3;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-static {v0}, Lcom/mob/commons/clt/PkgClt;->d(Lcom/mob/commons/clt/PkgClt;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    :cond_2c
    return-void
.end method
