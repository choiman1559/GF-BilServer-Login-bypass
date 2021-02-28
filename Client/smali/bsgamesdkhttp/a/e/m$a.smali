.class Lbsgamesdkhttp/a/e/m$a;
.super Lbsgamesdkio/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/a/e/m;


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/a/e/m;Lbsgamesdkio/p;)V
    .registers 3

    iput-object p1, p0, Lbsgamesdkhttp/a/e/m$a;->a:Lbsgamesdkhttp/a/e/m;

    invoke-direct {p0, p2}, Lbsgamesdkio/f;-><init>(Lbsgamesdkio/p;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/a/e/m$a;->a:Lbsgamesdkhttp/a/e/m;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/m;->a:Lbsgamesdkhttp/a/b/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lbsgamesdkhttp/a/e/m$a;->a:Lbsgamesdkhttp/a/e/m;

    invoke-virtual {v0, v1, v2}, Lbsgamesdkhttp/a/b/g;->a(ZLbsgamesdkhttp/a/c/c;)V

    invoke-super {p0}, Lbsgamesdkio/f;->close()V

    return-void
.end method
