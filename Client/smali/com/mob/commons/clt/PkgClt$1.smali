.class Lcom/mob/commons/clt/PkgClt$1;
.super Lcom/mob/tools/MobHandlerThread;
.source "PkgClt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/clt/PkgClt;->a()V
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
    .line 67
    iput-object p1, p0, Lcom/mob/commons/clt/PkgClt$1;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-direct {p0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    return-void
.end method

.method private a()V
    .registers 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/mob/tools/MobHandlerThread;->run()V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/mob/commons/clt/PkgClt$1;)V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mob/commons/clt/PkgClt$1;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 69
    const-string v0, "comm/locks/.pkg_lock"

    invoke-static {v0}, Lcom/mob/commons/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/mob/commons/clt/PkgClt$1$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/clt/PkgClt$1$1;-><init>(Lcom/mob/commons/clt/PkgClt$1;)V

    invoke-static {v0, v1}, Lcom/mob/commons/d;->a(Ljava/io/File;Lcom/mob/commons/LockAction;)V

    .line 79
    return-void
.end method
