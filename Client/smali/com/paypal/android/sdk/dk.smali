.class public final enum Lcom/paypal/android/sdk/dk;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/dk;

.field public static final enum b:Lcom/paypal/android/sdk/dk;

.field private static final synthetic c:[Lcom/paypal/android/sdk/dk;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/dk;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dk;->a:Lcom/paypal/android/sdk/dk;

    new-instance v0, Lcom/paypal/android/sdk/dk;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/dk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dk;->b:Lcom/paypal/android/sdk/dk;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/paypal/android/sdk/dk;

    sget-object v1, Lcom/paypal/android/sdk/dk;->a:Lcom/paypal/android/sdk/dk;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/dk;->b:Lcom/paypal/android/sdk/dk;

    aput-object v1, v0, v3

    sput-object v0, Lcom/paypal/android/sdk/dk;->c:[Lcom/paypal/android/sdk/dk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/dk;
    .registers 2

    const-class v0, Lcom/paypal/android/sdk/dk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/dk;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/dk;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/dk;->c:[Lcom/paypal/android/sdk/dk;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/dk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/dk;

    return-object v0
.end method
