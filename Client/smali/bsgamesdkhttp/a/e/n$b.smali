.class Lbsgamesdkhttp/a/e/n$b;
.super Lbsgamesdkhttp/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/a/e/n;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lbsgamesdkhttp/a/e/n;


# direct methods
.method varargs constructor <init>(Lbsgamesdkhttp/a/e/n;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 8

    iput-object p1, p0, Lbsgamesdkhttp/a/e/n$b;->d:Lbsgamesdkhttp/a/e/n;

    iput p4, p0, Lbsgamesdkhttp/a/e/n$b;->a:I

    iput-wide p5, p0, Lbsgamesdkhttp/a/e/n$b;->c:J

    invoke-direct {p0, p2, p3}, Lbsgamesdkhttp/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lbsgamesdkhttp/a/e/n$b;->d:Lbsgamesdkhttp/a/e/n;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/n;->p:Lbsgamesdkhttp/a/e/e;

    iget v1, p0, Lbsgamesdkhttp/a/e/n$b;->a:I

    iget-wide v2, p0, Lbsgamesdkhttp/a/e/n$b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lbsgamesdkhttp/a/e/e;->a(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method
