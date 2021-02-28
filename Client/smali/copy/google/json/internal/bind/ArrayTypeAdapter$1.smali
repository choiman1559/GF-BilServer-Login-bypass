.class final Lcopy/google/json/internal/bind/ArrayTypeAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/ArrayTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/reflect/TypeToken",
            "<TT;>;)",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_17

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_15

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0

    :cond_17
    invoke-static {v1}, Lcopy/google/json/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v2

    new-instance v0, Lcopy/google/json/internal/bind/ArrayTypeAdapter;

    invoke-static {v1}, Lcopy/google/json/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcopy/google/json/internal/bind/ArrayTypeAdapter;-><init>(Lcopy/google/json/JSON;Lcopy/google/json/TypeAdapter;Ljava/lang/Class;)V

    goto :goto_16
.end method
