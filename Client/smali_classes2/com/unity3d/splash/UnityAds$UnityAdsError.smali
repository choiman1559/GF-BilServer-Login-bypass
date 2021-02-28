.class public final enum Lcom/unity3d/splash/UnityAds$UnityAdsError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsError"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum AD_BLOCKER_DETECTED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum DEVICE_ID_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum FILE_IO_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum INITIALIZE_FAILED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum INIT_SANITY_CHECK_FAIL:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum INTERNAL_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum SHOW_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum VIDEO_PLAYER_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "INITIALIZE_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "INVALID_ARGUMENT"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "VIDEO_PLAYER_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "INIT_SANITY_CHECK_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "AD_BLOCKER_DETECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "FILE_IO_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->FILE_IO_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "DEVICE_ID_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->DEVICE_ID_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "SHOW_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/unity3d/splash/UnityAds$UnityAdsError;

    sget-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/splash/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/splash/UnityAds$UnityAdsError;->FILE_IO_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/splash/UnityAds$UnityAdsError;->DEVICE_ID_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/splash/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/splash/UnityAds$UnityAdsError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$UnityAdsError;
    .registers 2

    const-class v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/UnityAds$UnityAdsError;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/splash/UnityAds$UnityAdsError;

    invoke-virtual {v0}, [Lcom/unity3d/splash/UnityAds$UnityAdsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/UnityAds$UnityAdsError;

    return-object v0
.end method
