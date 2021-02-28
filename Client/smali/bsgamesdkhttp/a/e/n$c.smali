.class Lbsgamesdkhttp/a/e/n$c;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n;->a(ZIILbsgamesdkhttp/a/e/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lbsgamesdkhttp/a/e/g;

.field final synthetic f:Lbsgamesdkhttp/a/e/n;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;ZIILbsgamesdkhttp/a/e/g;)V
    .registers 8

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$c;->f:Lbsgamesdkhttp/a/e/n;

    iput-boolean p4, p0, Lbsgamesdkhttp/a/e/n$c;->a:Z

    iput p5, p0, Lbsgamesdkhttp/a/e/n$c;->c:I

    iput p6, p0, Lbsgamesdkhttp/a/e/n$c;->d:I

    iput-object p7, p0, Lbsgamesdkhttp/a/e/n$c;->e:Lbsgamesdkhttp/a/e/g;

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$c;->f:Lbsgamesdkhttp/a/e/n;

    iget-boolean v1, p0, Lbsgamesdkhttp/a/e/n$c;->a:Z

    iget v2, p0, Lbsgamesdkhttp/a/e/n$c;->c:I

    iget v3, p0, Lbsgamesdkhttp/a/e/n$c;->d:I

    iget-object v4, p0, Lbsgamesdkhttp/a/e/n$c;->e:Lbsgamesdkhttp/a/e/g;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbsgamesdkhttp/a/e/n;->b(ZIILbsgamesdkhttp/a/e/g;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method
