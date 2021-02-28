.class public final enum Lcom/bilibili/track/constants/TrackType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/track/constants/TrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/track/constants/TrackType;

.field public static final enum AUTO_TRACK:Lcom/bilibili/track/constants/TrackType;

.field public static final enum CLICK:Lcom/bilibili/track/constants/TrackType;

.field public static final enum CUSTOM:Lcom/bilibili/track/constants/TrackType;

.field public static final enum EXPOSURE:Lcom/bilibili/track/constants/TrackType;

.field public static final enum FLUTTER_CLICK:Lcom/bilibili/track/constants/TrackType;

.field public static final enum FLUTTER_CUSTOM:Lcom/bilibili/track/constants/TrackType;

.field public static final enum FLUTTER_EXPOSURE:Lcom/bilibili/track/constants/TrackType;

.field public static final enum FLUTTER_PV:Lcom/bilibili/track/constants/TrackType;

.field public static final enum FLUTTER_SYSTEM:Lcom/bilibili/track/constants/TrackType;

.field public static final enum H5CLICK:Lcom/bilibili/track/constants/TrackType;

.field public static final enum H5EXPOSURE:Lcom/bilibili/track/constants/TrackType;

.field public static final enum H5PV:Lcom/bilibili/track/constants/TrackType;

.field public static final enum PV:Lcom/bilibili/track/constants/TrackType;

.field public static final enum SYSTEM:Lcom/bilibili/track/constants/TrackType;


# instance fields
.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "CLICK"

    const-string v2, "click"

    invoke-direct {v0, v1, v4, v2}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->CLICK:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "SYSTEM"

    const-string v2, "system"

    invoke-direct {v0, v1, v5, v2}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->SYSTEM:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "PV"

    const-string v2, "pv"

    invoke-direct {v0, v1, v6, v2}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->PV:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "EXPOSURE"

    const-string v2, "exposure"

    invoke-direct {v0, v1, v7, v2}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "H5CLICK"

    const-string v2, "h5click"

    invoke-direct {v0, v1, v8, v2}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->H5CLICK:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "H5PV"

    const/4 v2, 0x5

    const-string v3, "h5pv"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->H5PV:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "H5EXPOSURE"

    const/4 v2, 0x6

    const-string v3, "h5exposure"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->H5EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "FLUTTER_CLICK"

    const/4 v2, 0x7

    const-string v3, "flutter_click"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_CLICK:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "FLUTTER_PV"

    const/16 v2, 0x8

    const-string v3, "flutter_pv"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_PV:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "FLUTTER_CUSTOM"

    const/16 v2, 0x9

    const-string v3, "flutter_custom"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_CUSTOM:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "FLUTTER_EXPOSURE"

    const/16 v2, 0xa

    const-string v3, "flutter_exposure"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "CUSTOM"

    const/16 v2, 0xb

    const-string v3, "custom"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->CUSTOM:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "AUTO_TRACK"

    const/16 v2, 0xc

    const-string v3, "autotrack"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->AUTO_TRACK:Lcom/bilibili/track/constants/TrackType;

    new-instance v0, Lcom/bilibili/track/constants/TrackType;

    const-string v1, "FLUTTER_SYSTEM"

    const/16 v2, 0xd

    const-string v3, "flutter_system"

    invoke-direct {v0, v1, v2, v3}, Lcom/bilibili/track/constants/TrackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->FLUTTER_SYSTEM:Lcom/bilibili/track/constants/TrackType;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/bilibili/track/constants/TrackType;

    sget-object v1, Lcom/bilibili/track/constants/TrackType;->CLICK:Lcom/bilibili/track/constants/TrackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bilibili/track/constants/TrackType;->SYSTEM:Lcom/bilibili/track/constants/TrackType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bilibili/track/constants/TrackType;->PV:Lcom/bilibili/track/constants/TrackType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bilibili/track/constants/TrackType;->EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bilibili/track/constants/TrackType;->H5CLICK:Lcom/bilibili/track/constants/TrackType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->H5PV:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->H5EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->FLUTTER_CLICK:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->FLUTTER_PV:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->FLUTTER_CUSTOM:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->FLUTTER_EXPOSURE:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->CUSTOM:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->AUTO_TRACK:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/bilibili/track/constants/TrackType;->FLUTTER_SYSTEM:Lcom/bilibili/track/constants/TrackType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bilibili/track/constants/TrackType;->$VALUES:[Lcom/bilibili/track/constants/TrackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bilibili/track/constants/TrackType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/track/constants/TrackType;
    .registers 2

    const-class v0, Lcom/bilibili/track/constants/TrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/track/constants/TrackType;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/track/constants/TrackType;
    .registers 1

    sget-object v0, Lcom/bilibili/track/constants/TrackType;->$VALUES:[Lcom/bilibili/track/constants/TrackType;

    invoke-virtual {v0}, [Lcom/bilibili/track/constants/TrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/track/constants/TrackType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/track/constants/TrackType;->type:Ljava/lang/String;

    return-object v0
.end method
