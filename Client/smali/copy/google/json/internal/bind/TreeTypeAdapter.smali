.class public final Lcopy/google/json/internal/bind/TreeTypeAdapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcopy/google/json/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/bind/TreeTypeAdapter",
            "<TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lcopy/google/json/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcopy/google/json/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field final gson:Lcopy/google/json/JSON;

.field private final serializer:Lcopy/google/json/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcopy/google/json/TypeAdapterFactory;

.field private final typeToken:Lcopy/google/json/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcopy/google/json/JsonSerializer;Lcopy/google/json/JsonDeserializer;Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/TypeAdapterFactory;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JsonSerializer",
            "<TT;>;",
            "Lcopy/google/json/JsonDeserializer",
            "<TT;>;",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/reflect/TypeToken",
            "<TT;>;",
            "Lcopy/google/json/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcopy/google/json/internal/bind/TreeTypeAdapter;Lcopy/google/json/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->context:Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;

    iput-object p1, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->serializer:Lcopy/google/json/JsonSerializer;

    iput-object p2, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->deserializer:Lcopy/google/json/JsonDeserializer;

    iput-object p3, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->gson:Lcopy/google/json/JSON;

    iput-object p4, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->typeToken:Lcopy/google/json/reflect/TypeToken;

    iput-object p5, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->skipPast:Lcopy/google/json/TypeAdapterFactory;

    return-void
.end method

.method private delegate()Lcopy/google/json/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->delegate:Lcopy/google/json/TypeAdapter;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->gson:Lcopy/google/json/JSON;

    iget-object v1, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->skipPast:Lcopy/google/json/TypeAdapterFactory;

    iget-object v2, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->typeToken:Lcopy/google/json/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcopy/google/json/JSON;->getDelegateAdapter(Lcopy/google/json/TypeAdapterFactory;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->delegate:Lcopy/google/json/TypeAdapter;

    goto :goto_4
.end method

.method public static newFactory(Lcopy/google/json/reflect/TypeToken;Ljava/lang/Object;)Lcopy/google/json/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcopy/google/json/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcopy/google/json/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcopy/google/json/reflect/TypeToken;Ljava/lang/Object;)Lcopy/google/json/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcopy/google/json/TypeAdapterFactory;"
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_b
    new-instance v1, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcopy/google/json/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1

    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcopy/google/json/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcopy/google/json/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcopy/google/json/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcopy/google/json/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->deserializer:Lcopy/google/json/JsonDeserializer;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcopy/google/json/internal/bind/TreeTypeAdapter;->delegate()Lcopy/google/json/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1}, Lcopy/google/json/internal/Streams;->parse(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    goto :goto_c

    :cond_19
    iget-object v1, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->deserializer:Lcopy/google/json/JsonDeserializer;

    iget-object v2, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->typeToken:Lcopy/google/json/reflect/TypeToken;

    invoke-virtual {v2}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->context:Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v1, v0, v2, v3}, Lcopy/google/json/JsonDeserializer;->deserialize(Lcopy/google/json/JsonElement;Ljava/lang/reflect/Type;Lcopy/google/json/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->serializer:Lcopy/google/json/JsonSerializer;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcopy/google/json/internal/bind/TreeTypeAdapter;->delegate()Lcopy/google/json/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    if-nez p2, :cond_12

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    goto :goto_b

    :cond_12
    iget-object v0, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->serializer:Lcopy/google/json/JsonSerializer;

    iget-object v1, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->typeToken:Lcopy/google/json/reflect/TypeToken;

    invoke-virtual {v1}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/internal/bind/TreeTypeAdapter;->context:Lcopy/google/json/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lcopy/google/json/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcopy/google/json/JsonSerializationContext;)Lcopy/google/json/JsonElement;

    move-result-object v0

    invoke-static {v0, p1}, Lcopy/google/json/internal/Streams;->write(Lcopy/google/json/JsonElement;Lcopy/google/json/stream/JsonWriter;)V

    goto :goto_b
.end method
