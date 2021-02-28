.class public final enum Lcom/unity3d/splash/services/core/request/ResolveHostEvent;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

.field public static final enum COMPLETE:Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

.field public static final enum FAILED:Lcom/unity3d/splash/services/core/request/ResolveHostEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;->COMPLETE:Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    new-instance v0, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;->FAILED:Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    sget-object v1, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;->COMPLETE:Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;->FAILED:Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;->$VALUES:[Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/request/ResolveHostEvent;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/request/ResolveHostEvent;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/request/ResolveHostEvent;->$VALUES:[Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/request/ResolveHostEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/request/ResolveHostEvent;

    return-object v0
.end method
