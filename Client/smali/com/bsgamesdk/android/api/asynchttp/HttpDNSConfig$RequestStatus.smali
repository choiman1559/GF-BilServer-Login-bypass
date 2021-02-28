.class public final enum Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum UnParse:Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

.field private static final synthetic a:[Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    const-string v1, "UnParse"

    invoke-direct {v0, v1, v2}, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;->UnParse:Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    sget-object v1, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;->UnParse:Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;->a:[Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;
    .registers 2

    const-class v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;
    .registers 1

    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;->a:[Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    invoke-virtual {v0}, [Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$RequestStatus;

    return-object v0
.end method
