.class public final enum Lcom/bilibili/deviceutils/helper/WifiType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bilibili/deviceutils/helper/WifiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bilibili/deviceutils/helper/WifiType;

.field public static final enum BSSID:Lcom/bilibili/deviceutils/helper/WifiType;

.field public static final enum SSID:Lcom/bilibili/deviceutils/helper/WifiType;


# instance fields
.field private wifiType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bilibili/deviceutils/helper/WifiType;

    const-string v1, "SSID"

    const-string v2, "SSID"

    invoke-direct {v0, v1, v3, v2}, Lcom/bilibili/deviceutils/helper/WifiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/deviceutils/helper/WifiType;->SSID:Lcom/bilibili/deviceutils/helper/WifiType;

    new-instance v0, Lcom/bilibili/deviceutils/helper/WifiType;

    const-string v1, "BSSID"

    const-string v2, "BSSID"

    invoke-direct {v0, v1, v4, v2}, Lcom/bilibili/deviceutils/helper/WifiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bilibili/deviceutils/helper/WifiType;->BSSID:Lcom/bilibili/deviceutils/helper/WifiType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bilibili/deviceutils/helper/WifiType;

    sget-object v1, Lcom/bilibili/deviceutils/helper/WifiType;->SSID:Lcom/bilibili/deviceutils/helper/WifiType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bilibili/deviceutils/helper/WifiType;->BSSID:Lcom/bilibili/deviceutils/helper/WifiType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bilibili/deviceutils/helper/WifiType;->$VALUES:[Lcom/bilibili/deviceutils/helper/WifiType;

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

    iput-object p3, p0, Lcom/bilibili/deviceutils/helper/WifiType;->wifiType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bilibili/deviceutils/helper/WifiType;
    .registers 2

    const-class v0, Lcom/bilibili/deviceutils/helper/WifiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bilibili/deviceutils/helper/WifiType;

    return-object v0
.end method

.method public static values()[Lcom/bilibili/deviceutils/helper/WifiType;
    .registers 1

    sget-object v0, Lcom/bilibili/deviceutils/helper/WifiType;->$VALUES:[Lcom/bilibili/deviceutils/helper/WifiType;

    invoke-virtual {v0}, [Lcom/bilibili/deviceutils/helper/WifiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bilibili/deviceutils/helper/WifiType;

    return-object v0
.end method


# virtual methods
.method public getWifiType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/WifiType;->wifiType:Ljava/lang/String;

    return-object v0
.end method
