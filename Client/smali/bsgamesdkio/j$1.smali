.class final Lbsgamesdkio/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkio/j;->a(Ljava/io/OutputStream;Lbsgamesdkio/q;)Lbsgamesdkio/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkio/q;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lbsgamesdkio/q;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lbsgamesdkio/j$1;->a:Lbsgamesdkio/q;

    iput-object p2, p0, Lbsgamesdkio/j$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/j$1;->a:Lbsgamesdkio/q;

    return-object v0
.end method

.method public a_(Lbsgamesdkio/c;J)V
    .registers 12

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lbsgamesdkio/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lbsgamesdkio/r;->a(JJJ)V

    :cond_8
    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_44

    iget-object v0, p0, Lbsgamesdkio/j$1;->a:Lbsgamesdkio/q;

    invoke-virtual {v0}, Lbsgamesdkio/q;->g()V

    iget-object v0, p1, Lbsgamesdkio/c;->a:Lbsgamesdkio/m;

    iget v1, v0, Lbsgamesdkio/m;->c:I

    iget v4, v0, Lbsgamesdkio/m;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lbsgamesdkio/j$1;->b:Ljava/io/OutputStream;

    iget-object v5, v0, Lbsgamesdkio/m;->a:[B

    iget v6, v0, Lbsgamesdkio/m;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v4, v0, Lbsgamesdkio/m;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lbsgamesdkio/m;->b:I

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-wide v4, p1, Lbsgamesdkio/c;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lbsgamesdkio/c;->b:J

    iget v1, v0, Lbsgamesdkio/m;->b:I

    iget v4, v0, Lbsgamesdkio/m;->c:I

    if-ne v1, v4, :cond_8

    invoke-virtual {v0}, Lbsgamesdkio/m;->a()Lbsgamesdkio/m;

    move-result-object v1

    iput-object v1, p1, Lbsgamesdkio/c;->a:Lbsgamesdkio/m;

    invoke-static {v0}, Lbsgamesdkio/n;->a(Lbsgamesdkio/m;)V

    goto :goto_8

    :cond_44
    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/j$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/j$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/j$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
