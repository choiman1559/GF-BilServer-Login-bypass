.class public final enum Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

.field public static final enum APPLICATION_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

.field public static final enum JSON_ERROR:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

.field public static final enum LISTENER_NOT_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    const-string v1, "APPLICATION_NULL"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->APPLICATION_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    new-instance v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    const-string v1, "LISTENER_NOT_NULL"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->LISTENER_NOT_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    new-instance v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    const-string v1, "JSON_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->JSON_ERROR:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    sget-object v1, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->APPLICATION_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->LISTENER_NOT_NULL:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->JSON_ERROR:Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->$VALUES:[Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->$VALUES:[Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/lifecycle/LifecycleError;

    return-object v0
.end method