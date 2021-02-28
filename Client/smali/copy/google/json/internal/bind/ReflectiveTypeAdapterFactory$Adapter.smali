.class public final Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
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
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lcopy/google/json/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcopy/google/json/internal/ObjectConstructor;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/ObjectConstructor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcopy/google/json/internal/ObjectConstructor;

    iput-object p2, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 5
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

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcopy/google/json/internal/ObjectConstructor;

    invoke-interface {v0}, Lcopy/google/json/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    :try_start_13
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginObject()V

    :goto_16
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-eqz v0, :cond_2e

    iget-boolean v2, v0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v2, :cond_39

    :cond_2e
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->skipValue()V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_31} :catch_3d

    goto :goto_16

    :catch_32
    move-exception v0

    new-instance v1, Lcopy/google/json/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_39
    :try_start_39
    invoke-virtual {v0, p1, v1}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lcopy/google/json/stream/JsonReader;Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_44
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endObject()V

    move-object v0, v1

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

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->beginObject()Lcopy/google/json/stream/JsonWriter;

    :try_start_9
    iget-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    invoke-virtual {v0, p2}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->writeField(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcopy/google/json/stream/JsonWriter;->name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_13

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_35
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endObject()Lcopy/google/json/stream/JsonWriter;

    goto :goto_5
.end method
