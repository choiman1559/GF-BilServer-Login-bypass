.class public final enum Lcom/unity3d/splash/services/core/api/Intent$IntentError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/api/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentError"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/api/Intent$IntentError;

.field public static final enum ACTIVITY_WAS_NULL:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

.field public static final enum COULDNT_PARSE_CATEGORIES:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

.field public static final enum COULDNT_PARSE_EXTRAS:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

.field public static final enum INTENT_WAS_NULL:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

.field public static final enum JSON_EXCEPTION:Lcom/unity3d/splash/services/core/api/Intent$IntentError;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    const-string v1, "COULDNT_PARSE_EXTRAS"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-instance v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    const-string v1, "COULDNT_PARSE_CATEGORIES"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/splash/services/core/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-instance v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    const-string v1, "INTENT_WAS_NULL"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/splash/services/core/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-instance v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    const-string v1, "JSON_EXCEPTION"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/splash/services/core/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->JSON_EXCEPTION:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    new-instance v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    const-string v1, "ACTIVITY_WAS_NULL"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/splash/services/core/api/Intent$IntentError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->JSON_EXCEPTION:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->$VALUES:[Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/api/Intent$IntentError;
    .registers 2

    const-class v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/api/Intent$IntentError;
    .registers 1

    sget-object v0, Lcom/unity3d/splash/services/core/api/Intent$IntentError;->$VALUES:[Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/api/Intent$IntentError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/api/Intent$IntentError;

    return-object v0
.end method