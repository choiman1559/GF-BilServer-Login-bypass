.class public final Lbsgamesdkhttp/p;
.super Lbsgamesdkhttp/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/p$a;
    }
.end annotation


# static fields
.field private static final a:Lbsgamesdkhttp/t;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lbsgamesdkhttp/t;->a(Ljava/lang/String;)Lbsgamesdkhttp/t;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/p;->a:Lbsgamesdkhttp/t;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lbsgamesdkhttp/x;-><init>()V

    invoke-static {p1}, Lbsgamesdkhttp/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/p;->b:Ljava/util/List;

    invoke-static {p2}, Lbsgamesdkhttp/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/p;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lbsgamesdkio/d;Z)J
    .registers 9

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_3a

    new-instance v0, Lbsgamesdkio/c;

    invoke-direct {v0}, Lbsgamesdkio/c;-><init>()V

    move-object v1, v0

    :goto_a
    const/4 v0, 0x0

    iget-object v4, p0, Lbsgamesdkhttp/p;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_12
    if-ge v4, v5, :cond_40

    if-lez v4, :cond_1b

    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    :cond_1b
    iget-object v0, p0, Lbsgamesdkhttp/p;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbsgamesdkio/c;->a(Ljava/lang/String;)Lbsgamesdkio/c;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Lbsgamesdkio/c;->b(I)Lbsgamesdkio/c;

    iget-object v0, p0, Lbsgamesdkhttp/p;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbsgamesdkio/c;->a(Ljava/lang/String;)Lbsgamesdkio/c;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_12

    :cond_3a
    invoke-interface {p1}, Lbsgamesdkio/d;->c()Lbsgamesdkio/c;

    move-result-object v0

    move-object v1, v0

    goto :goto_a

    :cond_40
    if-eqz p2, :cond_49

    invoke-virtual {v1}, Lbsgamesdkio/c;->b()J

    move-result-wide v2

    invoke-virtual {v1}, Lbsgamesdkio/c;->q()V

    :cond_49
    move-wide v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/t;
    .registers 2

    sget-object v0, Lbsgamesdkhttp/p;->a:Lbsgamesdkhttp/t;

    return-object v0
.end method

.method public a(Lbsgamesdkio/d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsgamesdkhttp/p;->a(Lbsgamesdkio/d;Z)J

    return-void
.end method

.method public b()J
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbsgamesdkhttp/p;->a(Lbsgamesdkio/d;Z)J

    move-result-wide v0

    return-wide v0
.end method
