.class public final enum Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

.field public static final enum ERROR:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

.field public static final enum OK:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->ERROR:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->ERROR:Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->$VALUES:[Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->$VALUES:[Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    return-object v0
.end method