.class public final enum Lcom/unity3d/splash/UnityAds$PlacementState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlacementState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/UnityAds$PlacementState;

.field public static final enum DISABLED:Lcom/unity3d/splash/UnityAds$PlacementState;

.field public static final enum NOT_AVAILABLE:Lcom/unity3d/splash/UnityAds$PlacementState;

.field public static final enum NO_FILL:Lcom/unity3d/splash/UnityAds$PlacementState;

.field public static final enum READY:Lcom/unity3d/splash/UnityAds$PlacementState;

.field public static final enum WAITING:Lcom/unity3d/splash/UnityAds$PlacementState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/splash/UnityAds$PlacementState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->READY:Lcom/unity3d/splash/UnityAds$PlacementState;

    new-instance v0, Lcom/unity3d/splash/UnityAds$PlacementState;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/splash/UnityAds$PlacementState;

    new-instance v0, Lcom/unity3d/splash/UnityAds$PlacementState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/splash/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/splash/UnityAds$PlacementState;

    new-instance v0, Lcom/unity3d/splash/UnityAds$PlacementState;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/splash/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->WAITING:Lcom/unity3d/splash/UnityAds$PlacementState;

    new-instance v0, Lcom/unity3d/splash/UnityAds$PlacementState;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/splash/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/splash/UnityAds$PlacementState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unity3d/splash/UnityAds$PlacementState;

    sget-object v1, Lcom/unity3d/splash/UnityAds$PlacementState;->READY:Lcom/unity3d/splash/UnityAds$PlacementState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/splash/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/splash/UnityAds$PlacementState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/splash/UnityAds$PlacementState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/splash/UnityAds$PlacementState;->WAITING:Lcom/unity3d/splash/UnityAds$PlacementState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/splash/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/splash/UnityAds$PlacementState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->$VALUES:[Lcom/unity3d/splash/UnityAds$PlacementState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$PlacementState;
    .registers 2

    const-class v0, Lcom/unity3d/splash/UnityAds$PlacementState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/UnityAds$PlacementState;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/UnityAds$PlacementState;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/UnityAds$PlacementState;->$VALUES:[Lcom/unity3d/splash/UnityAds$PlacementState;

    invoke-virtual {v0}, [Lcom/unity3d/splash/UnityAds$PlacementState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/UnityAds$PlacementState;

    return-object v0
.end method
