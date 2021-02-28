.class public final enum Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum CLASS_NOT_EXPOSED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum CLASS_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum DATA_GET_PARAMETER_VALUE_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum DATA_JSON_PARSE_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum DATA_PARAMETER_NULL:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum GETALLOWEDMETHODS_INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum GETALLOWEDMETHODS_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum METHOD_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

.field public static final enum METHOD_UNALLOWED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "CLASS_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->CLASS_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "CLASS_NOT_EXPOSED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->CLASS_NOT_EXPOSED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "GETALLOWEDMETHODS_NOT_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->GETALLOWEDMETHODS_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "GETALLOWEDMETHODS_INVOCATION_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->GETALLOWEDMETHODS_INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "METHOD_NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->METHOD_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "METHOD_UNALLOWED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->METHOD_UNALLOWED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "DATA_JSON_PARSE_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->DATA_JSON_PARSE_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "DATA_GET_PARAMETER_VALUE_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->DATA_GET_PARAMETER_VALUE_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "DATA_PARAMETER_NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->DATA_PARAMETER_NULL:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const-string v1, "INVOCATION_FAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->CLASS_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->CLASS_NOT_EXPOSED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->GETALLOWEDMETHODS_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->GETALLOWEDMETHODS_INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->METHOD_NOT_FOUND:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->METHOD_UNALLOWED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->DATA_JSON_PARSE_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->DATA_GET_PARAMETER_VALUE_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->DATA_PARAMETER_NULL:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->$VALUES:[Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->$VALUES:[Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/webview/bridge/WebViewBridgeError;

    return-object v0
.end method
