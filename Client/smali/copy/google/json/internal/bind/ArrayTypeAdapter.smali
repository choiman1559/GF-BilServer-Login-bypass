.class public final Lcopy/google/json/internal/bind/ArrayTypeAdapter;
.super Lcopy/google/json/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcopy/google/json/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcopy/google/json/TypeAdapterFactory;


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final componentTypeAdapter:Lcopy/google/json/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcopy/google/json/internal/bind/ArrayTypeAdapter$1;

    invoke-direct {v0}, Lcopy/google/json/internal/bind/ArrayTypeAdapter$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/bind/ArrayTypeAdapter;->FACTORY:Lcopy/google/json/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>(Lcopy/google/json/JSON;Lcopy/google/json/TypeAdapter;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/TypeAdapter",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    new-instance v0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcopy/google/json/JSON;Lcopy/google/json/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcopy/google/json/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcopy/google/json/TypeAdapter;

    iput-object p3, p0, Lcopy/google/json/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 7
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

    :cond_c
    return-object v0

    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->beginArray()V

    :goto_15
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcopy/google/json/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonReader;->endArray()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcopy/google/json/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v3, :cond_c

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33
.end method

.method public write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 7
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

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_e
    if-ge v0, v1, :cond_1c

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcopy/google/json/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v3, p1, v2}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    invoke-virtual {p1}, Lcopy/google/json/stream/JsonWriter;->endArray()Lcopy/google/json/stream/JsonWriter;

    goto :goto_5
.end method
