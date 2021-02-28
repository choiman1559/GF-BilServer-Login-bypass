.class public abstract enum Lcopy/google/json/LongSerializationPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcopy/google/json/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcopy/google/json/LongSerializationPolicy;

.field public static final enum DEFAULT:Lcopy/google/json/LongSerializationPolicy;

.field public static final enum STRING:Lcopy/google/json/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcopy/google/json/LongSerializationPolicy$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcopy/google/json/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcopy/google/json/LongSerializationPolicy;->DEFAULT:Lcopy/google/json/LongSerializationPolicy;

    new-instance v0, Lcopy/google/json/LongSerializationPolicy$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcopy/google/json/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcopy/google/json/LongSerializationPolicy;->STRING:Lcopy/google/json/LongSerializationPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcopy/google/json/LongSerializationPolicy;

    sget-object v1, Lcopy/google/json/LongSerializationPolicy;->DEFAULT:Lcopy/google/json/LongSerializationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcopy/google/json/LongSerializationPolicy;->STRING:Lcopy/google/json/LongSerializationPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcopy/google/json/LongSerializationPolicy;->$VALUES:[Lcopy/google/json/LongSerializationPolicy;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcopy/google/json/LongSerializationPolicy$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcopy/google/json/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcopy/google/json/LongSerializationPolicy;
    .registers 2

    const-class v0, Lcopy/google/json/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcopy/google/json/LongSerializationPolicy;

    return-object v0
.end method

.method public static values()[Lcopy/google/json/LongSerializationPolicy;
    .registers 1

    sget-object v0, Lcopy/google/json/LongSerializationPolicy;->$VALUES:[Lcopy/google/json/LongSerializationPolicy;

    invoke-virtual {v0}, [Lcopy/google/json/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcopy/google/json/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcopy/google/json/JsonElement;
.end method
