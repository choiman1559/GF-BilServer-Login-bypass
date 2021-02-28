.class public final enum Lcom/bilibili/deviceutils/exception/ExceptionUtils;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/deviceutils/exception/ExceptionUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/deviceutils/exception/ExceptionUtils;

.field public static final enum NULL:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

.field public static final enum SUCCESS:Lcom/bilibili/deviceutils/exception/ExceptionUtils;


# instance fields
.field private exceptionString:Ljava/lang/String;

.field private execptionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    const-string v1, "SUCCESS"

    const-string v2, "C0000"

    const-string v3, "\u6210\u529f"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/bilibili/deviceutils/exception/ExceptionUtils;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->SUCCESS:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    new-instance v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    const-string v1, "NULL"

    const-string v2, "C0001"

    const-string v3, "\u5185\u5bb9\u4e3a\u7a7a"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/bilibili/deviceutils/exception/ExceptionUtils;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->NULL:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    sget-object v1, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->SUCCESS:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->NULL:Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->$VALUES:[Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->exceptionString:Ljava/lang/String;

    iput-object p3, p0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->execptionCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/deviceutils/exception/ExceptionUtils;
    .registers 2

    const-class v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/deviceutils/exception/ExceptionUtils;
    .registers 1

    sget-object v0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->$VALUES:[Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    invoke-virtual {v0}, [Lcom/bilibili/deviceutils/exception/ExceptionUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/deviceutils/exception/ExceptionUtils;

    return-object v0
.end method


# virtual methods
.method public getExceptionString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->exceptionString:Ljava/lang/String;

    return-object v0
.end method

.method public getExecptionCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/deviceutils/exception/ExceptionUtils;->execptionCode:Ljava/lang/String;

    return-object v0
.end method
