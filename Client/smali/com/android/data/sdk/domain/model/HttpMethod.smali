.class public final enum Lcom/android/data/sdk/domain/model/HttpMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/data/sdk/domain/model/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/data/sdk/domain/model/HttpMethod;

.field public static final enum GET:Lcom/android/data/sdk/domain/model/HttpMethod;

.field public static final enum POST:Lcom/android/data/sdk/domain/model/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/data/sdk/domain/model/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/android/data/sdk/domain/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/data/sdk/domain/model/HttpMethod;->GET:Lcom/android/data/sdk/domain/model/HttpMethod;

    new-instance v0, Lcom/android/data/sdk/domain/model/HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/android/data/sdk/domain/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/data/sdk/domain/model/HttpMethod;->POST:Lcom/android/data/sdk/domain/model/HttpMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/data/sdk/domain/model/HttpMethod;

    sget-object v1, Lcom/android/data/sdk/domain/model/HttpMethod;->GET:Lcom/android/data/sdk/domain/model/HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/data/sdk/domain/model/HttpMethod;->POST:Lcom/android/data/sdk/domain/model/HttpMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/data/sdk/domain/model/HttpMethod;->$VALUES:[Lcom/android/data/sdk/domain/model/HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/data/sdk/domain/model/HttpMethod;
    .registers 2

    const-class v0, Lcom/android/data/sdk/domain/model/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/data/sdk/domain/model/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/android/data/sdk/domain/model/HttpMethod;
    .registers 1

    sget-object v0, Lcom/android/data/sdk/domain/model/HttpMethod;->$VALUES:[Lcom/android/data/sdk/domain/model/HttpMethod;

    invoke-virtual {v0}, [Lcom/android/data/sdk/domain/model/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/data/sdk/domain/model/HttpMethod;

    return-object v0
.end method
