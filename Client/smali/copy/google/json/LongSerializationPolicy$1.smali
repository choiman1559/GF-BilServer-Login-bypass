.class final enum Lcopy/google/json/LongSerializationPolicy$1;
.super Lcopy/google/json/LongSerializationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcopy/google/json/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcopy/google/json/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcopy/google/json/JsonElement;
    .registers 3

    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
