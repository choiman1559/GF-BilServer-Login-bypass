.class public final enum Lcom/unity3d/splash/services/core/device/StorageEvent;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/device/StorageEvent;

.field public static final enum CLEAR:Lcom/unity3d/splash/services/core/device/StorageEvent;

.field public static final enum DELETE:Lcom/unity3d/splash/services/core/device/StorageEvent;

.field public static final enum INIT:Lcom/unity3d/splash/services/core/device/StorageEvent;

.field public static final enum READ:Lcom/unity3d/splash/services/core/device/StorageEvent;

.field public static final enum SET:Lcom/unity3d/splash/services/core/device/StorageEvent;

.field public static final enum WRITE:Lcom/unity3d/splash/services/core/device/StorageEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/device/StorageEvent;

    const-string v1, "SET"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/core/device/StorageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageEvent;->SET:Lcom/unity3d/splash/services/core/device/StorageEvent;

    new-instance v0, Lcom/unity3d/splash/services/core/device/StorageEvent;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/splash/services/core/device/StorageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageEvent;->DELETE:Lcom/unity3d/splash/services/core/device/StorageEvent;

    new-instance v0, Lcom/unity3d/splash/services/core/device/StorageEvent;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/splash/services/core/device/StorageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageEvent;->CLEAR:Lcom/unity3d/splash/services/core/device/StorageEvent;

    new-instance v0, Lcom/unity3d/splash/services/core/device/StorageEvent;

    const-string v1, "WRITE"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/splash/services/core/device/StorageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageEvent;->WRITE:Lcom/unity3d/splash/services/core/device/StorageEvent;

    new-instance v0, Lcom/unity3d/splash/services/core/device/StorageEvent;

    const-string v1, "READ"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/splash/services/core/device/StorageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageEvent;->READ:Lcom/unity3d/splash/services/core/device/StorageEvent;

    new-instance v0, Lcom/unity3d/splash/services/core/device/StorageEvent;

    const-string v1, "INIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/device/StorageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageEvent;->INIT:Lcom/unity3d/splash/services/core/device/StorageEvent;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/unity3d/splash/services/core/device/StorageEvent;

    sget-object v1, Lcom/unity3d/splash/services/core/device/StorageEvent;->SET:Lcom/unity3d/splash/services/core/device/StorageEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/services/core/device/StorageEvent;->DELETE:Lcom/unity3d/splash/services/core/device/StorageEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/splash/services/core/device/StorageEvent;->CLEAR:Lcom/unity3d/splash/services/core/device/StorageEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/splash/services/core/device/StorageEvent;->WRITE:Lcom/unity3d/splash/services/core/device/StorageEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/splash/services/core/device/StorageEvent;->READ:Lcom/unity3d/splash/services/core/device/StorageEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/splash/services/core/device/StorageEvent;->INIT:Lcom/unity3d/splash/services/core/device/StorageEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/splash/services/core/device/StorageEvent;->$VALUES:[Lcom/unity3d/splash/services/core/device/StorageEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/device/StorageEvent;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/device/StorageEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/device/StorageEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/device/StorageEvent;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/device/StorageEvent;->$VALUES:[Lcom/unity3d/splash/services/core/device/StorageEvent;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/device/StorageEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/device/StorageEvent;

    return-object v0
.end method
