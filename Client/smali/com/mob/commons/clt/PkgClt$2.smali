.class Lcom/mob/commons/clt/PkgClt$2;
.super Ljava/lang/Object;
.source "PkgClt.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 86
    iput-object p1, p0, Lcom/mob/commons/clt/PkgClt$2;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 96
    :goto_5
    const/4 v0, 0x0

    return v0

    .line 90
    :pswitch_7
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt$2;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-static {v0}, Lcom/mob/commons/clt/PkgClt;->b(Lcom/mob/commons/clt/PkgClt;)V

    goto :goto_5

    .line 93
    :pswitch_d
    iget-object v0, p0, Lcom/mob/commons/clt/PkgClt$2;->a:Lcom/mob/commons/clt/PkgClt;

    invoke-static {v0}, Lcom/mob/commons/clt/PkgClt;->c(Lcom/mob/commons/clt/PkgClt;)V

    goto :goto_5

    .line 88
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
