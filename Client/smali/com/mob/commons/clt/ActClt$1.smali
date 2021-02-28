.class Lcom/mob/commons/clt/ActClt$1;
.super Ljava/lang/Thread;
.source "ActClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/ActClt;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/clt/ActClt;


# direct methods
.method constructor <init>(Lcom/mob/commons/clt/ActClt;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 31
    invoke-static {}, Lcom/mob/commons/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 32
    iget-object v0, p0, Lcom/mob/commons/clt/ActClt$1;->a:Lcom/mob/commons/clt/ActClt;

    invoke-static {v0}, Lcom/mob/commons/clt/ActClt;->a(Lcom/mob/commons/clt/ActClt;)V

    .line 33
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/clt/ActClt$1$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/clt/ActClt$1$1;-><init>(Lcom/mob/commons/clt/ActClt$1;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    .line 70
    :cond_1b
    return-void
.end method
