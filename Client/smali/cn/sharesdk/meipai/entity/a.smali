.class public abstract Lcn/sharesdk/meipai/entity/a;
.super Ljava/lang/Object;
.source "BaseObject.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 21
    const-string v0, "mp_transaction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/meipai/entity/a;->a:Ljava/lang/String;

    .line 22
    return-void
.end method
