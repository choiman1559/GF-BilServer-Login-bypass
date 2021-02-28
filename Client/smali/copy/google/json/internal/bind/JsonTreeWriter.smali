.class public final Lcopy/google/json/internal/bind/JsonTreeWriter;
.super Lcopy/google/json/stream/JsonWriter;


# static fields
.field private static final SENTINEL_CLOSED:Lcopy/google/json/JsonPrimitive;

.field private static final UNWRITABLE_WRITER:Ljava/io/Writer;


# instance fields
.field private pendingName:Ljava/lang/String;

.field private product:Lcopy/google/json/JsonElement;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcopy/google/json/internal/bind/JsonTreeWriter$1;

    invoke-direct {v0}, Lcopy/google/json/internal/bind/JsonTreeWriter$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    new-instance v0, Lcopy/google/json/JsonPrimitive;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcopy/google/json/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcopy/google/json/JsonPrimitive;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcopy/google/json/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    iput-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->product:Lcopy/google/json/JsonElement;

    return-void
.end method

.method private peek()Lcopy/google/json/JsonElement;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    return-object v0
.end method

.method private put(Lcopy/google/json/JsonElement;)V
    .registers 4

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcopy/google/json/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->getSerializeNulls()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_10
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->peek()Lcopy/google/json/JsonElement;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonObject;

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcopy/google/json/JsonObject;->add(Ljava/lang/String;Lcopy/google/json/JsonElement;)V

    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iput-object p1, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->product:Lcopy/google/json/JsonElement;

    goto :goto_1e

    :cond_2a
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->peek()Lcopy/google/json/JsonElement;

    move-result-object v0

    instance-of v1, v0, Lcopy/google/json/JsonArray;

    if-eqz v1, :cond_38

    check-cast v0, Lcopy/google/json/JsonArray;

    invoke-virtual {v0, p1}, Lcopy/google/json/JsonArray;->add(Lcopy/google/json/JsonElement;)V

    goto :goto_1e

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public beginArray()Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcopy/google/json/JsonArray;

    invoke-direct {v0}, Lcopy/google/json/JsonArray;-><init>()V

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public beginObject()Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcopy/google/json/JsonObject;

    invoke-direct {v0}, Lcopy/google/json/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v1, Lcopy/google/json/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcopy/google/json/JsonPrimitive;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endArray()Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->peek()Lcopy/google/json/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcopy/google/json/JsonArray;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public endObject()Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->peek()Lcopy/google/json/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcopy/google/json/JsonObject;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public get()Lcopy/google/json/JsonElement;
    .registers 4

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->product:Lcopy/google/json/JsonElement;

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->peek()Lcopy/google/json/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcopy/google/json/JsonObject;

    if-eqz v0, :cond_27

    iput-object p1, p0, Lcopy/google/json/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    return-object p0

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public nullValue()Lcopy/google/json/stream/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    return-object p0
.end method

.method public value(D)Lcopy/google/json/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    return-object p0
.end method

.method public value(J)Lcopy/google/json/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    goto :goto_6
.end method

.method public value(Ljava/lang/Number;)Lcopy/google/json/stream/JsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    goto :goto_6
.end method

.method public value(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    goto :goto_6
.end method

.method public value(Z)Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeWriter;->put(Lcopy/google/json/JsonElement;)V

    return-object p0
.end method
