.class public final Lcopy/google/json/JsonNull;
.super Lcopy/google/json/JsonElement;


# static fields
.field public static final INSTANCE:Lcopy/google/json/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcopy/google/json/JsonNull;

    invoke-direct {v0}, Lcopy/google/json/JsonNull;-><init>()V

    sput-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcopy/google/json/JsonElement;
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonNull;->deepCopy()Lcopy/google/json/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcopy/google/json/JsonNull;
    .registers 2

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_6

    instance-of v0, p1, Lcopy/google/json/JsonNull;

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    const-class v0, Lcopy/google/json/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
