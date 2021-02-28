.class final enum Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INVALID_HOST:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_PORT:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

.field public static final enum MISSING_SCHEME:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

.field public static final enum SUCCESS:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

.field public static final enum UNSUPPORTED_SCHEME:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

.field private static final synthetic a:[Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    new-instance v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "MISSING_SCHEME"

    invoke-direct {v0, v1, v3}, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    new-instance v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v1, v4}, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    new-instance v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "INVALID_PORT"

    invoke-direct {v0, v1, v5}, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    new-instance v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "INVALID_HOST"

    invoke-direct {v0, v1, v6}, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    const/4 v0, 0x5

    new-array v0, v0, [Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    sget-object v1, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v2

    sget-object v1, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v3

    sget-object v1, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v4

    sget-object v1, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v5

    sget-object v1, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v6

    sput-object v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->a:[Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;
    .registers 2

    const-class v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    return-object v0
.end method

.method public static values()[Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;
    .registers 1

    sget-object v0, Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->a:[Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    invoke-virtual {v0}, [Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsgamesdkhttp/HttpUrl$Builder$ParseResult;

    return-object v0
.end method
