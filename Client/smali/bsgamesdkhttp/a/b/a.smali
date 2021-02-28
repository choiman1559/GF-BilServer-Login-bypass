.class public final Lbsgamesdkhttp/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/s;


# instance fields
.field public final a:Lbsgamesdkhttp/u;


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/u;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/b/a;->a:Lbsgamesdkhttp/u;

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/s$a;)Lbsgamesdkhttp/y;
    .registers 6

    check-cast p1, Lbsgamesdkhttp/a/c/f;

    invoke-virtual {p1}, Lbsgamesdkhttp/a/c/f;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    invoke-virtual {p1}, Lbsgamesdkhttp/a/c/f;->b()Lbsgamesdkhttp/a/b/g;

    move-result-object v2

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_17
    iget-object v3, p0, Lbsgamesdkhttp/a/b/a;->a:Lbsgamesdkhttp/u;

    invoke-virtual {v2, v3, v0}, Lbsgamesdkhttp/a/b/g;->a(Lbsgamesdkhttp/u;Z)Lbsgamesdkhttp/a/c/c;

    move-result-object v0

    invoke-virtual {v2}, Lbsgamesdkhttp/a/b/g;->b()Lbsgamesdkhttp/a/b/c;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lbsgamesdkhttp/a/c/f;->a(Lbsgamesdkhttp/w;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/c/c;Lbsgamesdkhttp/i;)Lbsgamesdkhttp/y;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_17
.end method
