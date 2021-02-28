.class Lbsgamesdkhttp/a/e/n$a;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n;->a(ILbsgamesdkhttp/a/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lbsgamesdkhttp/a/e/b;

.field final synthetic d:Lbsgamesdkhttp/a/e/n;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ILbsgamesdkhttp/a/e/b;)V
    .registers 6

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$a;->d:Lbsgamesdkhttp/a/e/n;

    iput p4, p0, Lbsgamesdkhttp/a/e/n$a;->a:I

    iput-object p5, p0, Lbsgamesdkhttp/a/e/n$a;->c:Lbsgamesdkhttp/a/e/b;

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$a;->d:Lbsgamesdkhttp/a/e/n;

    iget v1, p0, Lbsgamesdkhttp/a/e/n$a;->a:I

    iget-object v2, p0, Lbsgamesdkhttp/a/e/n$a;->c:Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v0, v1, v2}, Lbsgamesdkhttp/a/e/n;->b(ILbsgamesdkhttp/a/e/b;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method
