.class public abstract Lbsgamesdkhttp/x;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbsgamesdkhttp/t;[B)Lbsgamesdkhttp/x;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lbsgamesdkhttp/x;->a(Lbsgamesdkhttp/t;[BII)Lbsgamesdkhttp/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lbsgamesdkhttp/t;[BII)Lbsgamesdkhttp/x;
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lbsgamesdkhttp/a/c;->a(JJJ)V

    new-instance v0, Lbsgamesdkhttp/x$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lbsgamesdkhttp/x$1;-><init>(Lbsgamesdkhttp/t;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lbsgamesdkhttp/t;
.end method

.method public abstract a(Lbsgamesdkio/d;)V
.end method

.method public b()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method
