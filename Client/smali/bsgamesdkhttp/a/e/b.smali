.class public final enum Lbsgamesdkhttp/a/e/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbsgamesdkhttp/a/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbsgamesdkhttp/a/e/b;

.field public static final enum b:Lbsgamesdkhttp/a/e/b;

.field public static final enum c:Lbsgamesdkhttp/a/e/b;

.field public static final enum d:Lbsgamesdkhttp/a/e/b;

.field public static final enum e:Lbsgamesdkhttp/a/e/b;

.field public static final enum f:Lbsgamesdkhttp/a/e/b;

.field private static final synthetic h:[Lbsgamesdkhttp/a/e/b;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lbsgamesdkhttp/a/e/b;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lbsgamesdkhttp/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbsgamesdkhttp/a/e/b;->a:Lbsgamesdkhttp/a/e/b;

    new-instance v0, Lbsgamesdkhttp/a/e/b;

    const-string v1, "PROTOCOL_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lbsgamesdkhttp/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbsgamesdkhttp/a/e/b;->b:Lbsgamesdkhttp/a/e/b;

    new-instance v0, Lbsgamesdkhttp/a/e/b;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lbsgamesdkhttp/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbsgamesdkhttp/a/e/b;->c:Lbsgamesdkhttp/a/e/b;

    new-instance v0, Lbsgamesdkhttp/a/e/b;

    const-string v1, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lbsgamesdkhttp/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbsgamesdkhttp/a/e/b;->d:Lbsgamesdkhttp/a/e/b;

    new-instance v0, Lbsgamesdkhttp/a/e/b;

    const-string v1, "REFUSED_STREAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lbsgamesdkhttp/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbsgamesdkhttp/a/e/b;->e:Lbsgamesdkhttp/a/e/b;

    new-instance v0, Lbsgamesdkhttp/a/e/b;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lbsgamesdkhttp/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;

    const/4 v0, 0x6

    new-array v0, v0, [Lbsgamesdkhttp/a/e/b;

    sget-object v1, Lbsgamesdkhttp/a/e/b;->a:Lbsgamesdkhttp/a/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lbsgamesdkhttp/a/e/b;->b:Lbsgamesdkhttp/a/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lbsgamesdkhttp/a/e/b;->c:Lbsgamesdkhttp/a/e/b;

    aput-object v1, v0, v6

    sget-object v1, Lbsgamesdkhttp/a/e/b;->d:Lbsgamesdkhttp/a/e/b;

    aput-object v1, v0, v7

    sget-object v1, Lbsgamesdkhttp/a/e/b;->e:Lbsgamesdkhttp/a/e/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lbsgamesdkhttp/a/e/b;->f:Lbsgamesdkhttp/a/e/b;

    aput-object v2, v0, v1

    sput-object v0, Lbsgamesdkhttp/a/e/b;->h:[Lbsgamesdkhttp/a/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbsgamesdkhttp/a/e/b;->g:I

    return-void
.end method

.method public static a(I)Lbsgamesdkhttp/a/e/b;
    .registers 6

    invoke-static {}, Lbsgamesdkhttp/a/e/b;->values()[Lbsgamesdkhttp/a/e/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    iget v4, v0, Lbsgamesdkhttp/a/e/b;->g:I

    if-ne v4, p0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lbsgamesdkhttp/a/e/b;
    .registers 2

    const-class v0, Lbsgamesdkhttp/a/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/e/b;

    return-object v0
.end method

.method public static values()[Lbsgamesdkhttp/a/e/b;
    .registers 1

    sget-object v0, Lbsgamesdkhttp/a/e/b;->h:[Lbsgamesdkhttp/a/e/b;

    invoke-virtual {v0}, [Lbsgamesdkhttp/a/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsgamesdkhttp/a/e/b;

    return-object v0
.end method
