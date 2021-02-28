.class final Lbsgamesdkhttp/a/e/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/a/e/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILbsgamesdkhttp/a/e/b;)V
    .registers 3

    return-void
.end method

.method public a(ILbsgamesdkio/e;IZ)Z
    .registers 7

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lbsgamesdkio/e;->g(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
