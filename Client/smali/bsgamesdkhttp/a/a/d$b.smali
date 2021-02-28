.class final Lbsgamesdkhttp/a/a/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Lbsgamesdkhttp/a/a/d$a;

.field g:J


# virtual methods
.method a(Lbsgamesdkio/d;)V
    .registers 8

    iget-object v1, p0, Lbsgamesdkhttp/a/a/d$b;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_14

    aget-wide v4, v1, v0

    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lbsgamesdkio/d;->i(I)Lbsgamesdkio/d;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lbsgamesdkio/d;->k(J)Lbsgamesdkio/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method
