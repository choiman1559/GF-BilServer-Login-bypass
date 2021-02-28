.class final Lbsgamesdkhttp/x$1;
.super Lbsgamesdkhttp/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/x;->a(Lbsgamesdkhttp/t;[BII)Lbsgamesdkhttp/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/t;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lbsgamesdkhttp/t;I[BI)V
    .registers 5

    iput-object p1, p0, Lbsgamesdkhttp/x$1;->a:Lbsgamesdkhttp/t;

    iput p2, p0, Lbsgamesdkhttp/x$1;->b:I

    iput-object p3, p0, Lbsgamesdkhttp/x$1;->c:[B

    iput p4, p0, Lbsgamesdkhttp/x$1;->d:I

    invoke-direct {p0}, Lbsgamesdkhttp/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/t;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/x$1;->a:Lbsgamesdkhttp/t;

    return-object v0
.end method

.method public a(Lbsgamesdkio/d;)V
    .registers 5

    iget-object v0, p0, Lbsgamesdkhttp/x$1;->c:[B

    iget v1, p0, Lbsgamesdkhttp/x$1;->d:I

    iget v2, p0, Lbsgamesdkhttp/x$1;->b:I

    invoke-interface {p1, v0, v1, v2}, Lbsgamesdkio/d;->c([BII)Lbsgamesdkio/d;

    return-void
.end method

.method public b()J
    .registers 3

    iget v0, p0, Lbsgamesdkhttp/x$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
