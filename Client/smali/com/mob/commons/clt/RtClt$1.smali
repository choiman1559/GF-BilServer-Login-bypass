.class Lcom/mob/commons/clt/RtClt$1;
.super Ljava/lang/Thread;
.source "RtClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/RtClt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/clt/RtClt;


# direct methods
.method constructor <init>(Lcom/mob/commons/clt/RtClt;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mob/commons/clt/RtClt$1;->a:Lcom/mob/commons/clt/RtClt;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 51
    const-string v0, "comm/locks/.rc_lock"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/mob/commons/clt/RtClt$1$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/clt/RtClt$1$1;-><init>(Lcom/mob/commons/clt/RtClt$1;)V

    invoke-static {v0, v1}, Lcom/mob/commons/d;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)V

    .line 62
    return-void
.end method
