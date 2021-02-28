.class public final enum Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum ANALYTICS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum AR:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum BANNER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum BROADCAST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum DEVICEINFO:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum LIFECYCLE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum LOAD_API:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum PERMISSIONS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum PURCHASING:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum REQUEST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum RESOLVE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum STORAGE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum STORE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "ADUNIT"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "VIDEOPLAYER"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "RESOLVE"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->RESOLVE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "CACHE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "CONNECTIVITY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "STORAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "BROADCAST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->BROADCAST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "LIFECYCLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->LIFECYCLE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "DEVICEINFO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->DEVICEINFO:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "WEBPLAYER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "PURCHASING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->PURCHASING:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "ANALYTICS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ANALYTICS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "AR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->AR:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "PERMISSIONS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->PERMISSIONS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "STORE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const-string v1, "LOAD_API"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->LOAD_API:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->RESOLVE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->BROADCAST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->LIFECYCLE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->DEVICEINFO:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->PURCHASING:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ANALYTICS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->AR:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->PERMISSIONS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->LOAD_API:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->$VALUES:[Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->$VALUES:[Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    return-object v0
.end method
