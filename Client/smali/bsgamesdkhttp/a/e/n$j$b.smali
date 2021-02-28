.class Lbsgamesdkhttp/a/e/n$j$b;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n$j;->a(ZLbsgamesdkhttp/a/e/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/a/e/n$j;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$j$b;->a:Lbsgamesdkhttp/a/e/n$j;

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j$b;->a:Lbsgamesdkhttp/a/e/n$j;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->c:Lbsgamesdkhttp/a/e/n$i;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j$b;->a:Lbsgamesdkhttp/a/e/n$j;

    iget-object v1, v1, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/n$i;->a(Lbsgamesdkhttp/a/e/n;)V

    return-void
.end method
