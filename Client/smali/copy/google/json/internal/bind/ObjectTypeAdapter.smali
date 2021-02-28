.class public final Lcopy/google/json/internal/bind/ObjectTypeAdapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcopy/google/json/TypeAdapterFactory;


# instance fields
.field private final gson:Lcopy/google/json/JSON;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcopy/google/json/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    return-void
.end method

.method constructor <init>(Lcopy/google/json/JSON;)V
    .registers 2

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcopy/google/json/internal/bind/ObjectTypeAdapter;->gson:Lcopy/google/json/JSON;

    return-void
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$copy$google$json$stream$JsonToken:[I

    invoke-virtual {v0}, Lcopy/google/json/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginArray()V

    :goto_1d
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/ObjectTypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2b
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    :goto_2e
    return-object v0

    :pswitch_2f
    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcopy/google/json/internal/LinkedTreeMap;-><init>()V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginObject()V

    :goto_37
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcopy/google/json/internal/bind/ObjectTypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_49
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endObject()V

    goto :goto_2e

    :pswitch_4d
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :pswitch_52
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2e

    :pswitch_5b
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e

    :pswitch_64
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    goto :goto_2e

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2f
        :pswitch_4d
        :pswitch_52
        :pswitch_5b
        :pswitch_64
    .end packed-switch
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 5
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
    iget-object v0, p0, Lcopy/google/json/internal/bind/ObjectTypeAdapter;->gson:Lcopy/google/json/JSON;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcopy/google/json/JSON;->getAdapter(Ljava/lang/Class;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lcopy/google/json/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginObject()Lcopy/google/json/stream/JsonWriter;

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endObject()Lcopy/google/json/stream/JsonWriter;

    goto :goto_5

    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_5
.end method
