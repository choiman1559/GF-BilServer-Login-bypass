.class Lbsgamesdkhttp/a/e/n$j$c;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n$j;->a(Lbsgamesdkhttp/a/e/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/a/e/i;

.field final synthetic c:Lbsgamesdkhttp/a/e/n$j;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n$j;Ljava/lang/String;[Ljava/lang/Object;Lbsgamesdkhttp/a/e/i;)V
    .registers 5

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$j$c;->c:Lbsgamesdkhttp/a/e/n$j;

    iput-object p4, p0, Lbsgamesdkhttp/a/e/n$j$c;->a:Lbsgamesdkhttp/a/e/i;

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$j$c;->c:Lbsgamesdkhttp/a/e/n$j;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n$j;->c:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/n$j$c;->a:Lbsgamesdkhttp/a/e/i;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/a/e/e;->a(Lbsgamesdkhttp/a/e/i;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method
