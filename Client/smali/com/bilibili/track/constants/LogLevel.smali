.class public final enum Lcom/bilibili/track/constants/LogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/track/constants/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/track/constants/LogLevel;

.field public static final enum dispensable:Lcom/bilibili/track/constants/LogLevel;

.field public static final enum full:Lcom/bilibili/track/constants/LogLevel;

.field public static final enum important:Lcom/bilibili/track/constants/LogLevel;

.field public static final enum normal:Lcom/bilibili/track/constants/LogLevel;


# instance fields
.field level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bilibili/track/constants/LogLevel;

    const-string v1, "normal"

    const-string v2, "2"

    invoke-direct {v0, v1, v3, v2}, Lcom/bilibili/track/constants/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/LogLevel;->normal:Lcom/bilibili/track/constants/LogLevel;

    new-instance v0, Lcom/bilibili/track/constants/LogLevel;

    const-string v1, "dispensable"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/bilibili/track/constants/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/LogLevel;->dispensable:Lcom/bilibili/track/constants/LogLevel;

    new-instance v0, Lcom/bilibili/track/constants/LogLevel;

    const-string v1, "important"

    const-string v2, "3"

    invoke-direct {v0, v1, v5, v2}, Lcom/bilibili/track/constants/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/LogLevel;->important:Lcom/bilibili/track/constants/LogLevel;

    new-instance v0, Lcom/bilibili/track/constants/LogLevel;

    const-string v1, "full"

    const-string v2, "4"

    invoke-direct {v0, v1, v6, v2}, Lcom/bilibili/track/constants/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/LogLevel;->full:Lcom/bilibili/track/constants/LogLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bilibili/track/constants/LogLevel;

    sget-object v1, Lcom/bilibili/track/constants/LogLevel;->normal:Lcom/bilibili/track/constants/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bilibili/track/constants/LogLevel;->dispensable:Lcom/bilibili/track/constants/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bilibili/track/constants/LogLevel;->important:Lcom/bilibili/track/constants/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bilibili/track/constants/LogLevel;->full:Lcom/bilibili/track/constants/LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bilibili/track/constants/LogLevel;->$VALUES:[Lcom/bilibili/track/constants/LogLevel;

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

    iput-object p3, p0, Lcom/bilibili/track/constants/LogLevel;->level:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/track/constants/LogLevel;
    .registers 2

    const-class v0, Lcom/bilibili/track/constants/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/constants/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/track/constants/LogLevel;
    .registers 1

    sget-object v0, Lcom/bilibili/track/constants/LogLevel;->$VALUES:[Lcom/bilibili/track/constants/LogLevel;

    invoke-virtual {v0}, [Lcom/bilibili/track/constants/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/track/constants/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/constants/LogLevel;->level:Ljava/lang/String;

    return-object v0
.end method
