.class final Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcopy/google/json/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcopy/google/json/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/TypeAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcopy/google/json/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcopy/google/json/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcopy/google/json/internal/bind/MapTypeAdapterFactory;Lcopy/google/json/JSON;Ljava/lang/reflect/Type;Lcopy/google/json/TypeAdapter;Ljava/lang/reflect/Type;Lcopy/google/json/TypeAdapter;Lcopy/google/json/internal/ObjectConstructor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JSON;",
            "Ljava/lang/reflect/Type;",
            "Lcopy/google/json/TypeAdapter",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcopy/google/json/TypeAdapter",
            "<TV;>;",
            "Lcopy/google/json/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcopy/google/json/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcopy/google/json/JSON;Lcopy/google/json/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcopy/google/json/TypeAdapter;

    new-instance v0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p6, p5}, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcopy/google/json/JSON;Lcopy/google/json/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcopy/google/json/TypeAdapter;

    iput-object p7, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcopy/google/json/internal/ObjectConstructor;

    return-void
.end method

.method private keyToString(Lcopy/google/json/JsonElement;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcopy/google/json/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcopy/google/json/JsonElement;->getAsJsonPrimitive()Lcopy/google/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_28
    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_39
    invoke-virtual {p1}, Lcopy/google/json/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "null"

    goto :goto_18

    :cond_42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v1

    sget-object v0, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    if-ne v1, v0, :cond_d

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcopy/google/json/internal/ObjectConstructor;

    invoke-interface {v0}, Lcopy/google/json/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcopy/google/json/stream/JsonToken;->BEGIN_ARRAY:Lcopy/google/json/stream/JsonToken;

    if-ne v1, v2, :cond_58

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginArray()V

    :goto_1c
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginArray()V

    iget-object v1, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v1, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v2, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_50

    new-instance v0, Lcopy/google/json/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    goto :goto_1c

    :cond_54
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    goto :goto_c

    :cond_58
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginObject()V

    :cond_5b
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    sget-object v1, Lcopy/google/json/internal/JsonReaderInternalAccess;->INSTANCE:Lcopy/google/json/internal/JsonReaderInternalAccess;

    invoke-virtual {v1, p1}, Lcopy/google/json/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcopy/google/json/stream/JsonReader;)V

    iget-object v1, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v1, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v2, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5b

    new-instance v0, Lcopy/google/json/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endObject()V

    goto/16 :goto_c
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/stream/JsonWriter;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcopy/google/json/internal/bind/MapTypeAdapterFactory;

    iget-boolean v0, v0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginObject()Lcopy/google/json/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    iget-object v2, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_18

    :cond_39
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endObject()Lcopy/google/json/stream/JsonWriter;

    goto :goto_6

    :cond_3d
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcopy/google/json/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcopy/google/json/JsonElement;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcopy/google/json/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {v6}, Lcopy/google/json/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_84
    const/4 v0, 0x1

    :goto_85
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_58

    :cond_88
    move v0, v2

    goto :goto_85

    :cond_8a
    if-eqz v1, :cond_b5

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginArray()Lcopy/google/json/stream/JsonWriter;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_93
    if-ge v2, v1, :cond_b0

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginArray()Lcopy/google/json/stream/JsonWriter;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-static {v0, p1}, Lcopy/google/json/internal/Streams;->write(Lcopy/google/json/JsonElement;Lcopy/google/json/stream/JsonWriter;)V

    iget-object v0, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endArray()Lcopy/google/json/stream/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    :cond_b0
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endArray()Lcopy/google/json/stream/JsonWriter;

    goto/16 :goto_6

    :cond_b5
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginObject()Lcopy/google/json/stream/JsonWriter;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_bc
    if-ge v2, v1, :cond_d7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcopy/google/json/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    iget-object v0, p0, Lcopy/google/json/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :cond_d7
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endObject()Lcopy/google/json/stream/JsonWriter;

    goto/16 :goto_6
.end method
