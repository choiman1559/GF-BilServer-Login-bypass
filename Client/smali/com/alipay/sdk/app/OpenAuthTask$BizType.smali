.class public final enum Lcom/alipay/sdk/app/OpenAuthTask$BizType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/OpenAuthTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BizType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/sdk/app/OpenAuthTask$BizType;

.field public static final enum AccountAuth:Lcom/alipay/sdk/app/OpenAuthTask$BizType;

.field public static final enum Deduct:Lcom/alipay/sdk/app/OpenAuthTask$BizType;

.field public static final enum Invoice:Lcom/alipay/sdk/app/OpenAuthTask$BizType;


# instance fields
.field private appId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    const-string v1, "Invoice"

    const-string v2, "20000920"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->Invoice:Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    new-instance v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    const-string v1, "AccountAuth"

    const-string v2, "20000067"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->AccountAuth:Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    new-instance v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    const-string v1, "Deduct"

    const-string v2, "60000157"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->Deduct:Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    sget-object v1, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->Invoice:Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->AccountAuth:Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->Deduct:Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->$VALUES:[Lcom/alipay/sdk/app/OpenAuthTask$BizType;

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

    iput-object p3, p0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->appId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/sdk/app/OpenAuthTask$BizType;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/app/OpenAuthTask$BizType;
    .registers 2

    const-class v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/app/OpenAuthTask$BizType;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->$VALUES:[Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    invoke-virtual {v0}, [Lcom/alipay/sdk/app/OpenAuthTask$BizType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/app/OpenAuthTask$BizType;

    return-object v0
.end method
