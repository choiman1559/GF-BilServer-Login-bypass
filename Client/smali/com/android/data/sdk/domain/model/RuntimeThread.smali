.class public final enum Lcom/android/data/sdk/domain/model/RuntimeThread;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/data/sdk/domain/model/RuntimeThread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/data/sdk/domain/model/RuntimeThread;

.field public static final enum CALLER:Lcom/android/data/sdk/domain/model/RuntimeThread;

.field public static final enum EXECUTOR:Lcom/android/data/sdk/domain/model/RuntimeThread;

.field public static final enum MAIN:Lcom/android/data/sdk/domain/model/RuntimeThread;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/data/sdk/domain/model/RuntimeThread;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/android/data/sdk/domain/model/RuntimeThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/data/sdk/domain/model/RuntimeThread;->MAIN:Lcom/android/data/sdk/domain/model/RuntimeThread;

    new-instance v0, Lcom/android/data/sdk/domain/model/RuntimeThread;

    const-string v1, "CALLER"

    invoke-direct {v0, v1, v3}, Lcom/android/data/sdk/domain/model/RuntimeThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/data/sdk/domain/model/RuntimeThread;->CALLER:Lcom/android/data/sdk/domain/model/RuntimeThread;

    new-instance v0, Lcom/android/data/sdk/domain/model/RuntimeThread;

    const-string v1, "EXECUTOR"

    invoke-direct {v0, v1, v4}, Lcom/android/data/sdk/domain/model/RuntimeThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/data/sdk/domain/model/RuntimeThread;->EXECUTOR:Lcom/android/data/sdk/domain/model/RuntimeThread;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/data/sdk/domain/model/RuntimeThread;

    sget-object v1, Lcom/android/data/sdk/domain/model/RuntimeThread;->MAIN:Lcom/android/data/sdk/domain/model/RuntimeThread;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/data/sdk/domain/model/RuntimeThread;->CALLER:Lcom/android/data/sdk/domain/model/RuntimeThread;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/data/sdk/domain/model/RuntimeThread;->EXECUTOR:Lcom/android/data/sdk/domain/model/RuntimeThread;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/data/sdk/domain/model/RuntimeThread;->$VALUES:[Lcom/android/data/sdk/domain/model/RuntimeThread;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/data/sdk/domain/model/RuntimeThread;
    .registers 2

    const-class v0, Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/data/sdk/domain/model/RuntimeThread;

    return-object v0
.end method

.method public static values()[Lcom/android/data/sdk/domain/model/RuntimeThread;
    .registers 1

    sget-object v0, Lcom/android/data/sdk/domain/model/RuntimeThread;->$VALUES:[Lcom/android/data/sdk/domain/model/RuntimeThread;

    invoke-virtual {v0}, [Lcom/android/data/sdk/domain/model/RuntimeThread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/data/sdk/domain/model/RuntimeThread;

    return-object v0
.end method
