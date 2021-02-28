.class public final enum Lbsgamesdkhttp/Protocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbsgamesdkhttp/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HTTP_1_0:Lbsgamesdkhttp/Protocol;

.field public static final enum HTTP_1_1:Lbsgamesdkhttp/Protocol;

.field public static final enum HTTP_2:Lbsgamesdkhttp/Protocol;

.field public static final enum SPDY_3:Lbsgamesdkhttp/Protocol;

.field private static final synthetic b:[Lbsgamesdkhttp/Protocol;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lbsgamesdkhttp/Protocol;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lbsgamesdkhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/Protocol;->HTTP_1_0:Lbsgamesdkhttp/Protocol;

    new-instance v0, Lbsgamesdkhttp/Protocol;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lbsgamesdkhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/Protocol;->HTTP_1_1:Lbsgamesdkhttp/Protocol;

    new-instance v0, Lbsgamesdkhttp/Protocol;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, Lbsgamesdkhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/Protocol;->SPDY_3:Lbsgamesdkhttp/Protocol;

    new-instance v0, Lbsgamesdkhttp/Protocol;

    const-string v1, "HTTP_2"

    const-string v2, "h2"

    invoke-direct {v0, v1, v6, v2}, Lbsgamesdkhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/Protocol;->HTTP_2:Lbsgamesdkhttp/Protocol;

    const/4 v0, 0x4

    new-array v0, v0, [Lbsgamesdkhttp/Protocol;

    sget-object v1, Lbsgamesdkhttp/Protocol;->HTTP_1_0:Lbsgamesdkhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lbsgamesdkhttp/Protocol;->HTTP_1_1:Lbsgamesdkhttp/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lbsgamesdkhttp/Protocol;->SPDY_3:Lbsgamesdkhttp/Protocol;

    aput-object v1, v0, v5

    sget-object v1, Lbsgamesdkhttp/Protocol;->HTTP_2:Lbsgamesdkhttp/Protocol;

    aput-object v1, v0, v6

    sput-object v0, Lbsgamesdkhttp/Protocol;->b:[Lbsgamesdkhttp/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbsgamesdkhttp/Protocol;->a:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lbsgamesdkhttp/Protocol;
    .registers 4

    sget-object v0, Lbsgamesdkhttp/Protocol;->HTTP_1_0:Lbsgamesdkhttp/Protocol;

    iget-object v0, v0, Lbsgamesdkhttp/Protocol;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lbsgamesdkhttp/Protocol;->HTTP_1_0:Lbsgamesdkhttp/Protocol;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lbsgamesdkhttp/Protocol;->HTTP_1_1:Lbsgamesdkhttp/Protocol;

    iget-object v0, v0, Lbsgamesdkhttp/Protocol;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lbsgamesdkhttp/Protocol;->HTTP_1_1:Lbsgamesdkhttp/Protocol;

    goto :goto_c

    :cond_1a
    sget-object v0, Lbsgamesdkhttp/Protocol;->HTTP_2:Lbsgamesdkhttp/Protocol;

    iget-object v0, v0, Lbsgamesdkhttp/Protocol;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lbsgamesdkhttp/Protocol;->HTTP_2:Lbsgamesdkhttp/Protocol;

    goto :goto_c

    :cond_27
    sget-object v0, Lbsgamesdkhttp/Protocol;->SPDY_3:Lbsgamesdkhttp/Protocol;

    iget-object v0, v0, Lbsgamesdkhttp/Protocol;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lbsgamesdkhttp/Protocol;->SPDY_3:Lbsgamesdkhttp/Protocol;

    goto :goto_c

    :cond_34
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbsgamesdkhttp/Protocol;
    .registers 2

    const-class v0, Lbsgamesdkhttp/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/Protocol;

    return-object v0
.end method

.method public static values()[Lbsgamesdkhttp/Protocol;
    .registers 1

    sget-object v0, Lbsgamesdkhttp/Protocol;->b:[Lbsgamesdkhttp/Protocol;

    invoke-virtual {v0}, [Lbsgamesdkhttp/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsgamesdkhttp/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/Protocol;->a:Ljava/lang/String;

    return-object v0
.end method
