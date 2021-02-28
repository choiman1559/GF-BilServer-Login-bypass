.class Lbsgamesdkio/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkio/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkio/a;->a(Lbsgamesdkio/p;)Lbsgamesdkio/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkio/p;

.field final synthetic b:Lbsgamesdkio/a;


# direct methods
.method constructor <init>(Lbsgamesdkio/a;Lbsgamesdkio/p;)V
    .registers 3

    iput-object p1, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    iput-object p2, p0, Lbsgamesdkio/a$2;->a:Lbsgamesdkio/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkio/c;J)J
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    invoke-virtual {v0}, Lbsgamesdkio/a;->c()V

    :try_start_6
    iget-object v0, p0, Lbsgamesdkio/a$2;->a:Lbsgamesdkio/p;

    invoke-interface {v0, p1, p2, p3}, Lbsgamesdkio/p;->a(Lbsgamesdkio/c;J)J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_13
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    move-result-wide v0

    const/4 v2, 0x1

    iget-object v3, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    invoke-virtual {v3, v2}, Lbsgamesdkio/a;->a(Z)V

    return-wide v0

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v2, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    invoke-virtual {v2, v0}, Lbsgamesdkio/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    iget-object v2, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    invoke-virtual {v2, v1}, Lbsgamesdkio/a;->a(Z)V

    throw v0
.end method

.method public a()Lbsgamesdkio/q;
    .registers 2

    iget-object v0, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    return-object v0
.end method

.method public close()V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lbsgamesdkio/a$2;->a:Lbsgamesdkio/p;

    invoke-interface {v0}, Lbsgamesdkio/p;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_d
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    const/4 v0, 0x1

    iget-object v1, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    invoke-virtual {v1, v0}, Lbsgamesdkio/a;->a(Z)V

    return-void

    :catch_d
    move-exception v0

    :try_start_e
    iget-object v2, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    invoke-virtual {v2, v0}, Lbsgamesdkio/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    iget-object v2, p0, Lbsgamesdkio/a$2;->b:Lbsgamesdkio/a;

    invoke-virtual {v2, v1}, Lbsgamesdkio/a;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkio/a$2;->a:Lbsgamesdkio/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
