.class public final Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcopy/google/json/internal/ConstructorConstructor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 7
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

    move-result-object v0

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {v0, v1}, Lcopy/google/json/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v2

    iget-object v0, p0, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcopy/google/json/internal/ConstructorConstructor;->get(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/internal/ObjectConstructor;

    move-result-object v3

    new-instance v0, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v0, p1, v1, v2, v3}, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcopy/google/json/JSON;Ljava/lang/reflect/Type;Lcopy/google/json/TypeAdapter;Lcopy/google/json/internal/ObjectConstructor;)V

    goto :goto_11
.end method
