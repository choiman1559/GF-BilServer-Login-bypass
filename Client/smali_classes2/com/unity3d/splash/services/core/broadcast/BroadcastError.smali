.class public final enum Lcom/unity3d/splash/services/core/broadcast/BroadcastError;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

.field public static final enum JSON_ERROR:Lcom/unity3d/splash/services/core/broadcast/BroadcastError;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    const-string v1, "JSON_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;->JSON_ERROR:Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    sget-object v1, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;->JSON_ERROR:Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;->$VALUES:[Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/broadcast/BroadcastError;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/broadcast/BroadcastError;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/broadcast/BroadcastError;->$VALUES:[Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/broadcast/BroadcastError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/broadcast/BroadcastError;

    return-object v0
.end method
