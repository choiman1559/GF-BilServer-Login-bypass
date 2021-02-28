.class public final enum Lcom/unity3d/splash/services/ads/adunit/AdUnitError;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum ACTIVITY_ID:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum API_LEVEL_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum CORRUPTED_KEYEVENTLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum CORRUPTED_VIEWLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_JSON_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum GENERIC:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum ORIENTATION:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum SCREENVISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum SYSTEM_UI_VISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum UNKNOWN_VIEW:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "ADUNIT_NULL"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "ACTIVITY_ID"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->GENERIC:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ORIENTATION:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "SCREENVISIBILITY"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->SCREENVISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "CORRUPTED_VIEWLIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "CORRUPTED_KEYEVENTLIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "SYSTEM_UI_VISIBILITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->SYSTEM_UI_VISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "UNKNOWN_VIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "LAYOUT_NULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "MAX_MOTION_EVENT_COUNT_REACHED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "API_LEVEL_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->API_LEVEL_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "NO_DISPLAY_CUTOUT_AVAILABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "DISPLAY_CUTOUT_JSON_ERROR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_JSON_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "DISPLAY_CUTOUT_INVOKE_FAILED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->GENERIC:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ORIENTATION:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->SCREENVISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->SYSTEM_UI_VISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->API_LEVEL_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_JSON_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->$VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/AdUnitError;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/ads/adunit/AdUnitError;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->$VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    return-object v0
.end method
