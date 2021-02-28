.class final Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcopy/google/json/TypeAdapter;


# annotations
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
.field private final context:Lcopy/google/json/JSON;

.field private final delegate:Lcopy/google/json/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcopy/google/json/JSON;Lcopy/google/json/TypeAdapter;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcopy/google/json/JSON;

    iput-object p2, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcopy/google/json/TypeAdapter;

    iput-object p3, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .registers 4

    if-eqz p2, :cond_12

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_e

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_12

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_12
    return-object p1
.end method


# virtual methods
.method public read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
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

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcopy/google/json/TypeAdapter;

    invoke-virtual {v0, p1}, Lcopy/google/json/TypeAdapter;->read(Lcopy/google/json/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcopy/google/json/TypeAdapter;

    iget-object v1, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1a

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcopy/google/json/JSON;

    invoke-static {v1}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v1, :cond_1e

    :cond_1a
    :goto_1a
    invoke-virtual {v0, p1, p2}, Lcopy/google/json/TypeAdapter;->write(Lcopy/google/json/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_1e
    iget-object v1, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcopy/google/json/TypeAdapter;

    instance-of v1, v1, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v1, :cond_1a

    iget-object v0, p0, Lcopy/google/json/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcopy/google/json/TypeAdapter;

    goto :goto_1a
.end method
