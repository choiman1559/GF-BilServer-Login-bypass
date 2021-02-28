.class public final Lcopy/google/json/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcopy/google/json/internal/ConstructorConstructor;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    iput-boolean p2, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return-void
.end method

.method private getKeyAdapter(Lcopy/google/json/JSON;Ljava/lang/reflect/Type;)Lcopy/google/json/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JSON;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcopy/google/json/TypeAdapter",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_b

    :cond_8
    sget-object v0, Lcopy/google/json/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcopy/google/json/TypeAdapter;

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p2}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 11
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

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-static {v0}, Lcopy/google/json/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcopy/google/json/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcopy/google/json/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcopy/google/json/JSON;Ljava/lang/reflect/Type;)Lcopy/google/json/TypeAdapter;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v6

    iget-object v0, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcopy/google/json/internal/ConstructorConstructor;->get(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/internal/ObjectConstructor;

    move-result-object v7

    new-instance v0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcopy/google/json/internal/bind/MapTypeAdapterFactory;Lcopy/google/json/JSON;Ljava/lang/reflect/Type;Lcopy/google/json/TypeAdapter;Ljava/lang/reflect/Type;Lcopy/google/json/TypeAdapter;Lcopy/google/json/internal/ObjectConstructor;)V

    goto :goto_13
.end method
