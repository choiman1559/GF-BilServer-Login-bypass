.class Lcom/mob/commons/clt/RtClt$1$1;
.super Ljava/lang/Object;
.source "RtClt.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/RtClt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/clt/RtClt$1;


# direct methods
.method constructor <init>(Lcom/mob/commons/clt/RtClt$1;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mob/commons/clt/RtClt$1$1;->a:Lcom/mob/commons/clt/RtClt$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .registers 3

    .prologue
    .line 54
    const-string v0, "comm/tags/.rcTag"

    invoke-static {v0}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55
    const/4 v0, 0x0

    .line 59
    :goto_9
    return v0

    .line 58
    :cond_a
    iget-object v0, p0, Lcom/mob/commons/clt/RtClt$1$1;->a:Lcom/mob/commons/clt/RtClt$1;

    iget-object v0, v0, Lcom/mob/commons/clt/RtClt$1;->a:Lcom/mob/commons/clt/RtClt;

    invoke-static {v0}, Lcom/mob/commons/clt/RtClt;->a(Lcom/mob/commons/clt/RtClt;)V

    .line 59
    const/4 v0, 0x1

    goto :goto_9
.end method
