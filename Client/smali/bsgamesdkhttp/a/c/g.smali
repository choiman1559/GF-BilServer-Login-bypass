.class public final Lbsgamesdkhttp/a/c/g;
.super Lbsgamesdkhttp/z;


# instance fields
.field private final a:Lbsgamesdkhttp/r;

.field private final b:Lbsgamesdkio/e;


# direct methods
.method public constructor <init>(Lbsgamesdkhttp/r;Lbsgamesdkio/e;)V
    .registers 3

    invoke-direct {p0}, Lbsgamesdkhttp/z;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/c/g;->a:Lbsgamesdkhttp/r;

    iput-object p2, p0, Lbsgamesdkhttp/a/c/g;->b:Lbsgamesdkio/e;

    return-void
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/t;
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/a/c/g;->a:Lbsgamesdkhttp/r;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lbsgamesdkhttp/t;->a(Ljava/lang/String;)Lbsgamesdkhttp/t;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/a/c/g;->a:Lbsgamesdkhttp/r;

    invoke-static {v0}, Lbsgamesdkhttp/a/c/e;->a(Lbsgamesdkhttp/r;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lbsgamesdkio/e;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/c/g;->b:Lbsgamesdkio/e;

    return-object v0
.end method
