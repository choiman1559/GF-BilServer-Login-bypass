.class public final enum Lcom/paypal/android/sdk/dr;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/dr;

.field private static enum b:Lcom/paypal/android/sdk/dr;

.field private static enum c:Lcom/paypal/android/sdk/dr;

.field private static enum d:Lcom/paypal/android/sdk/dr;

.field private static enum e:Lcom/paypal/android/sdk/dr;

.field private static enum f:Lcom/paypal/android/sdk/dr;

.field private static enum g:Lcom/paypal/android/sdk/dr;

.field private static enum h:Lcom/paypal/android/sdk/dr;

.field private static enum i:Lcom/paypal/android/sdk/dr;

.field private static final synthetic j:[Lcom/paypal/android/sdk/dr;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "AMEX"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->b:Lcom/paypal/android/sdk/dr;

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "DINERSCLUB"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->c:Lcom/paypal/android/sdk/dr;

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->d:Lcom/paypal/android/sdk/dr;

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "JCB"

    invoke-direct {v0, v1, v6}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->e:Lcom/paypal/android/sdk/dr;

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "MASTERCARD"

    invoke-direct {v0, v1, v7}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->f:Lcom/paypal/android/sdk/dr;

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "VISA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->g:Lcom/paypal/android/sdk/dr;

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "MAESTRO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->h:Lcom/paypal/android/sdk/dr;

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->a:Lcom/paypal/android/sdk/dr;

    new-instance v0, Lcom/paypal/android/sdk/dr;

    const-string v1, "INSUFFICIENT_DIGITS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/dr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dr;->i:Lcom/paypal/android/sdk/dr;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/paypal/android/sdk/dr;

    sget-object v1, Lcom/paypal/android/sdk/dr;->b:Lcom/paypal/android/sdk/dr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/sdk/dr;->c:Lcom/paypal/android/sdk/dr;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/dr;->d:Lcom/paypal/android/sdk/dr;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/dr;->e:Lcom/paypal/android/sdk/dr;

    aput-object v1, v0, v6

    sget-object v1, Lcom/paypal/android/sdk/dr;->f:Lcom/paypal/android/sdk/dr;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/paypal/android/sdk/dr;->g:Lcom/paypal/android/sdk/dr;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/paypal/android/sdk/dr;->h:Lcom/paypal/android/sdk/dr;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/paypal/android/sdk/dr;->a:Lcom/paypal/android/sdk/dr;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/paypal/android/sdk/dr;->i:Lcom/paypal/android/sdk/dr;

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/sdk/dr;->j:[Lcom/paypal/android/sdk/dr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/paypal/android/sdk/dr;
    .registers 6

    if-nez p0, :cond_5

    sget-object v0, Lcom/paypal/android/sdk/dr;->a:Lcom/paypal/android/sdk/dr;

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/paypal/android/sdk/dr;->values()[Lcom/paypal/android/sdk/dr;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_26

    aget-object v0, v2, v1

    sget-object v4, Lcom/paypal/android/sdk/dr;->a:Lcom/paypal/android/sdk/dr;

    if-eq v0, v4, :cond_22

    sget-object v4, Lcom/paypal/android/sdk/dr;->i:Lcom/paypal/android/sdk/dr;

    if-eq v0, v4, :cond_22

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dr;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_26
    sget-object v0, Lcom/paypal/android/sdk/dr;->a:Lcom/paypal/android/sdk/dr;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/dr;
    .registers 2

    const-class v0, Lcom/paypal/android/sdk/dr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/dr;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/dr;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/dr;->j:[Lcom/paypal/android/sdk/dr;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/dr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/dr;

    return-object v0
.end method
