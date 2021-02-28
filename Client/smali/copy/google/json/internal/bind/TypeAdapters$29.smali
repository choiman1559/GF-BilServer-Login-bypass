.class final Lcopy/google/json/internal/bind/TypeAdapters$29;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Lcopy/google/json/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/internal/bind/TypeAdapters$36;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_15
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_1e
    return-object v0

    :pswitch_1f
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcopy/google/json/JsonPrimitive;

    new-instance v2, Lcopy/google/json/internal/LazilyParsedNumber;

    invoke-direct {v2, v1}, Lcopy/google/json/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_1e

    :pswitch_2e
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_1e

    :pswitch_3c
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    goto :goto_1e

    :pswitch_42
    new-instance v0, Lcopy/google/json/JsonArray;

    invoke-direct {v0}, Lcopy/google/json/JsonArray;-><init>()V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginArray()V

    :goto_4a
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TypeAdapters$29;->read(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcopy/google/json/JsonArray;->add(Lcopy/google/json/JsonElement;)V

    goto :goto_4a

    :cond_58
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    goto :goto_1e

    :pswitch_5c
    new-instance v0, Lcopy/google/json/JsonObject;

    invoke-direct {v0}, Lcopy/google/json/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginObject()V

    :goto_64
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TypeAdapters$29;->read(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcopy/google/json/JsonObject;->add(Ljava/lang/String;Lcopy/google/json/JsonElement;)V

    goto :goto_64

    :cond_76
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endObject()V

    goto :goto_1e

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2e
        :pswitch_15
        :pswitch_3c
        :pswitch_42
        :pswitch_5c
    .end packed-switch
.end method

.method public bridge synthetic read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/TypeAdapters$29;->read(Lcopy/google/json/stream/JsonReader;)Lcopy/google/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Lcopy/google/json/JsonElement;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcopy/google/json/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Lcopy/google/json/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Lcopy/google/json/JsonElement;->getAsJsonPrimitive()Lcopy/google/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->value(Ljava/lang/Number;)Lcopy/google/json/stream/JsonWriter;

    goto :goto_b

    :cond_24
    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->value(Z)Lcopy/google/json/stream/JsonWriter;

    goto :goto_b

    :cond_32
    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/stream/JsonWriter;->value(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    goto :goto_b

    :cond_3a
    invoke-virtual {p2}, Lcopy/google/json/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginArray()Lcopy/google/json/stream/JsonWriter;

    invoke-virtual {p2}, Lcopy/google/json/JsonElement;->getAsJsonArray()Lcopy/google/json/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcopy/google/json/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcopy/google/json/internal/bind/TypeAdapters$29;->write(Lcopy/google/json/stream/JsonWriter;Lcopy/google/json/JsonElement;)V

    goto :goto_4b

    :cond_5b
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endArray()Lcopy/google/json/stream/JsonWriter;

    goto :goto_b

    :cond_5f
    invoke-virtual {p2}, Lcopy/google/json/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginObject()Lcopy/google/json/stream/JsonWriter;

    invoke-virtual {p2}, Lcopy/google/json/JsonElement;->getAsJsonObject()Lcopy/google/json/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcopy/google/json/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcopy/google/json/internal/bind/TypeAdapters$29;->write(Lcopy/google/json/stream/JsonWriter;Lcopy/google/json/JsonElement;)V

    goto :goto_74

    :cond_93
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endObject()Lcopy/google/json/stream/JsonWriter;

    goto/16 :goto_b

    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcopy/google/json/JsonElement;

    invoke-virtual {p0, p1, p2}, Lcopy/google/json/internal/bind/TypeAdapters$29;->write(Lcopy/google/json/stream/JsonWriter;Lcopy/google/json/JsonElement;)V

    return-void
.end method
