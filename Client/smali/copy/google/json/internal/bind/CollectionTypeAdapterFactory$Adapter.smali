.class final Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcopy/google/json/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lcopy/google/json/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcopy/google/json/JSON;Ljava/lang/reflect/Type;Lcopy/google/json/TypeAdapter;Lcopy/google/json/internal/ObjectConstructor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JSON;",
            "Ljava/lang/reflect/Type;",
            "Lcopy/google/json/TypeAdapter",
            "<TE;>;",
            "Lcopy/google/json/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p3, p2}, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcopy/google/json/JSON;Lcopy/google/json/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcopy/google/json/TypeAdapter;

    iput-object p4, p0, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcopy/google/json/internal/ObjectConstructor;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonReader;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcopy/google/json/internal/ObjectConstructor;

    invoke-interface {v0}, Lcopy/google/json/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginArray()V

    :goto_18
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v1, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_28
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    goto :goto_c
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonWriter;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginArray()Lcopy/google/json/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v2, p1, v1}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_d

    :cond_1d
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endArray()Lcopy/google/json/stream/JsonWriter;

    goto :goto_5
.end method
