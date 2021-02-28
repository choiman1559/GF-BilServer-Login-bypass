.class Lbsgamesdkio/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkio/a;->a(Lbsgamesdkio/o;)Lbsgamesdkio/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkio/o;

.field final synthetic b:Lbsgamesdkio/a;


# direct methods
.method constructor <init>(Lbsgamesdkio/a;Lbsgamesdkio/o;)V
    .registers 3

    iput-object p1, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    iput-object p2, p0, Lbsgamesdkio/a$1;->a:Lbsgamesdkio/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    return-object v0
.end method

.method public a_(Lbsgamesdkio/c;J)V
    .registers 14

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lbsgamesdkio/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lbsgamesdkio/r;->a(JJJ)V

    move-wide v4, p2

    :goto_9
    cmp-long v0, v4, v2

    if-lez v0, :cond_4f

    iget-object v0, p1, Lbsgamesdkio/c;->a:Lbsgamesdkio/m;

    move-object v6, v0

    move-wide v0, v2

    :goto_11
    const-wide/32 v8, 0x10000

    cmp-long v7, v0, v8

    if-gez v7, :cond_28

    iget-object v7, p1, Lbsgamesdkio/c;->a:Lbsgamesdkio/m;

    iget v7, v7, Lbsgamesdkio/m;->c:I

    iget-object v8, p1, Lbsgamesdkio/c;->a:Lbsgamesdkio/m;

    iget v8, v8, Lbsgamesdkio/m;->b:I

    sub-int/2addr v7, v8

    int-to-long v8, v7

    add-long/2addr v8, v0

    cmp-long v0, v8, v4

    if-ltz v0, :cond_3b

    move-wide v0, v4

    :cond_28
    const/4 v6, 0x0

    iget-object v7, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v7}, Lbsgamesdkio/a;->c()V

    :try_start_2e
    iget-object v7, p0, Lbsgamesdkio/a$1;->a:Lbsgamesdkio/o;

    invoke-interface {v7, p1, v0, v1}, Lbsgamesdkio/o;->a_(Lbsgamesdkio/c;J)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_40
    .catchall {:try_start_2e .. :try_end_33} :catchall_48

    sub-long/2addr v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v1, v0}, Lbsgamesdkio/a;->a(Z)V

    goto :goto_9

    :cond_3b
    iget-object v0, v6, Lbsgamesdkio/m;->f:Lbsgamesdkio/m;

    move-object v6, v0

    move-wide v0, v8

    goto :goto_11

    :catch_40
    move-exception v0

    :try_start_41
    iget-object v1, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v1, v0}, Lbsgamesdkio/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    iget-object v1, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v1, v6}, Lbsgamesdkio/a;->a(Z)V

    throw v0

    :cond_4f
    return-void
.end method

.method public close()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v0}, Lbsgamesdkio/a;->c()V

    :try_start_6
    iget-object v0, p0, Lbsgamesdkio/a$1;->a:Lbsgamesdkio/o;

    invoke-interface {v0}, Lbsgamesdkio/o;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    const/4 v0, 0x1

    iget-object v1, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v1, v0}, Lbsgamesdkio/a;->a(Z)V

    return-void

    :catch_12
    move-exception v0

    :try_start_13
    iget-object v2, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v2, v0}, Lbsgamesdkio/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    iget-object v2, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v2, v1}, Lbsgamesdkio/a;->a(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v0}, Lbsgamesdkio/a;->c()V

    :try_start_6
    iget-object v0, p0, Lbsgamesdkio/a$1;->a:Lbsgamesdkio/o;

    invoke-interface {v0}, Lbsgamesdkio/o;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    const/4 v0, 0x1

    iget-object v1, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v1, v0}, Lbsgamesdkio/a;->a(Z)V

    return-void

    :catch_12
    move-exception v0

    :try_start_13
    iget-object v2, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v2, v0}, Lbsgamesdkio/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    iget-object v2, p0, Lbsgamesdkio/a$1;->b:Lbsgamesdkio/a;

    invoke-virtual {v2, v1}, Lbsgamesdkio/a;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/a$1;->a:Lbsgamesdkio/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
