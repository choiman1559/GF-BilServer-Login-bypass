.class final Lbsgamesdkhttp/z$1;
.super Lbsgamesdkhttp/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsgamesdkhttp/z;->a(Lbsgamesdkhttp/t;JLbsgamesdkio/e;)Lbsgamesdkhttp/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsgamesdkhttp/t;

.field final synthetic b:J

.field final synthetic c:Lbsgamesdkio/e;


# direct methods
.method constructor <init>(Lbsgamesdkhttp/t;JLbsgamesdkio/e;)V
    .registers 5

    iput-object p1, p0, Lbsgamesdkhttp/z$1;->a:Lbsgamesdkhttp/t;

    iput-wide p2, p0, Lbsgamesdkhttp/z$1;->b:J

    iput-object p4, p0, Lbsgamesdkhttp/z$1;->c:Lbsgamesdkio/e;

    invoke-direct {p0}, Lbsgamesdkhttp/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/t;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/z$1;->a:Lbsgamesdkhttp/t;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lbsgamesdkhttp/z$1;->b:J

    return-wide v0
.end method

.method public c()Lbsgamesdkio/e;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/z$1;->c:Lbsgamesdkio/e;

    return-object v0
.end method
