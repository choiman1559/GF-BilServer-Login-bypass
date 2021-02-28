.class final Lbsgamesdkhttp/a/e/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:[Lbsgamesdkhttp/a/e/f$a;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lbsgamesdkhttp/a/e/f$a;

    iput-object v0, p0, Lbsgamesdkhttp/a/e/f$a;->a:[Lbsgamesdkhttp/a/e/f$a;

    iput v1, p0, Lbsgamesdkhttp/a/e/f$a;->b:I

    iput v1, p0, Lbsgamesdkhttp/a/e/f$a;->c:I

    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsgamesdkhttp/a/e/f$a;->a:[Lbsgamesdkhttp/a/e/f$a;

    iput p1, p0, Lbsgamesdkhttp/a/e/f$a;->b:I

    and-int/lit8 v0, p2, 0x7

    if-nez v0, :cond_e

    const/16 v0, 0x8

    :cond_e
    iput v0, p0, Lbsgamesdkhttp/a/e/f$a;->c:I

    return-void
.end method
