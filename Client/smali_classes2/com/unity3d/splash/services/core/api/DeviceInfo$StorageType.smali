.class public final enum Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/api/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

.field public static final enum EXTERNAL:Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

.field public static final enum INTERNAL:Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;->EXTERNAL:Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    new-instance v0, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;->INTERNAL:Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    sget-object v1, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;->EXTERNAL:Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;->INTERNAL:Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;->$VALUES:[Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;->$VALUES:[Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/api/DeviceInfo$StorageType;

    return-object v0
.end method
