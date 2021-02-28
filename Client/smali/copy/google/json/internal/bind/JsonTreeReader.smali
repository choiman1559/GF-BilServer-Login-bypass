.class public final Lcopy/google/json/internal/bind/JsonTreeReader;
.super Lcopy/google/json/stream/JsonReader;


# static fields
.field private static final SENTINEL_CLOSED:Ljava/lang/Object;

.field private static final UNREADABLE_READER:Ljava/io/Reader;


# instance fields
.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private stack:[Ljava/lang/Object;

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcopy/google/json/internal/bind/JsonTreeReader$1;

    invoke-direct {v0}, Lcopy/google/json/internal/bind/JsonTreeReader$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcopy/google/json/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcopy/google/json/JsonElement;)V
    .registers 4

    const/16 v1, 0x20

    sget-object v0, Lcopy/google/json/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    invoke-direct {p0, p1}, Lcopy/google/json/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method private expect(Lcopy/google/json/stream/JsonToken;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    if-eq v0, p1, :cond_35

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    return-void
.end method

.method private locationString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private peekStack()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private popStack()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method private push(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    :cond_25
    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/stream/JsonToken;->BEGIN_ARRAY:Lcopy/google/json/stream/JsonToken;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->expect(Lcopy/google/json/stream/JsonToken;)V

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonArray;

    invoke-virtual {v0}, Lcopy/google/json/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/stream/JsonToken;->BEGIN_OBJECT:Lcopy/google/json/stream/JsonToken;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->expect(Lcopy/google/json/stream/JsonToken;)V

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonObject;

    invoke-virtual {v0}, Lcopy/google/json/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcopy/google/json/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iput v3, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    return-void
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/stream/JsonToken;->END_ARRAY:Lcopy/google/json/stream/JsonToken;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->expect(Lcopy/google/json/stream/JsonToken;)V

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_1b
    return-void
.end method

.method public endObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/stream/JsonToken;->END_OBJECT:Lcopy/google/json/stream/JsonToken;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->expect(Lcopy/google/json/stream/JsonToken;)V

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_1b
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    :goto_c
    iget v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-ge v0, v2, :cond_5d

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcopy/google/json/JsonArray;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_35

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_38
    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcopy/google/json/JsonObject;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_35

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->END_OBJECT:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcopy/google/json/stream/JsonToken;->END_ARRAY:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/stream/JsonToken;->BOOLEAN:Lcopy/google/json/stream/JsonToken;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->expect(Lcopy/google/json/stream/JsonToken;)V

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonPrimitive;

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_1f

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_1f
    return v0
.end method

.method public nextDouble()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_39

    sget-object v1, Lcopy/google/json/stream/JsonToken;->STRING:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_39

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonPrimitive;

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsDouble()D

    move-result-wide v0

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->isLenient()Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_55

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_55
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6e
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v2, :cond_81

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v3, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_81
    return-wide v0
.end method

.method public nextInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_39

    sget-object v1, Lcopy/google/json/stream/JsonToken;->STRING:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_39

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonPrimitive;

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsInt()I

    move-result v0

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_56

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_56
    return v0
.end method

.method public nextLong()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_39

    sget-object v1, Lcopy/google/json/stream/JsonToken;->STRING:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_39

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonPrimitive;

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v2, :cond_56

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v3, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_56
    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/stream/JsonToken;->NAME:Lcopy/google/json/stream/JsonToken;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->expect(Lcopy/google/json/stream/JsonToken;)V

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-object v1
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->expect(Lcopy/google/json/stream/JsonToken;)V

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_18

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_18
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->STRING:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_39

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    if-eq v0, v1, :cond_39

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcopy/google/json/stream/JsonToken;->STRING:Lcopy/google/json/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonPrimitive;

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_53

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_53
    return-object v0
.end method

.method public peek()Lcopy/google/json/stream/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-nez v0, :cond_7

    sget-object v0, Lcopy/google/json/stream/JsonToken;->END_DOCUMENT:Lcopy/google/json/stream/JsonToken;

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcopy/google/json/JsonObject;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz v1, :cond_26

    sget-object v0, Lcopy/google/json/stream/JsonToken;->NAME:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    goto :goto_6

    :cond_32
    if-eqz v1, :cond_37

    sget-object v0, Lcopy/google/json/stream/JsonToken;->END_OBJECT:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_37
    sget-object v0, Lcopy/google/json/stream/JsonToken;->END_ARRAY:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_3a
    instance-of v1, v0, Lcopy/google/json/JsonObject;

    if-eqz v1, :cond_41

    sget-object v0, Lcopy/google/json/stream/JsonToken;->BEGIN_OBJECT:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_41
    instance-of v1, v0, Lcopy/google/json/JsonArray;

    if-eqz v1, :cond_48

    sget-object v0, Lcopy/google/json/stream/JsonToken;->BEGIN_ARRAY:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_48
    instance-of v1, v0, Lcopy/google/json/JsonPrimitive;

    if-eqz v1, :cond_6f

    check-cast v0, Lcopy/google/json/JsonPrimitive;

    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_57

    sget-object v0, Lcopy/google/json/stream/JsonToken;->STRING:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_57
    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_60

    sget-object v0, Lcopy/google/json/stream/JsonToken;->BOOLEAN:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_60
    invoke-virtual {v0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_69
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6f
    instance-of v1, v0, Lcopy/google/json/JsonNull;

    if-eqz v1, :cond_76

    sget-object v0, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    goto :goto_6

    :cond_76
    sget-object v1, Lcopy/google/json/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    if-ne v0, v1, :cond_82

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public promoteNameToValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcopy/google/json/stream/JsonToken;->NAME:Lcopy/google/json/stream/JsonToken;

    invoke-direct {p0, v0}, Lcopy/google/json/internal/bind/JsonTreeReader;->expect(Lcopy/google/json/stream/JsonToken;)V

    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcopy/google/json/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    new-instance v1, Lcopy/google/json/JsonPrimitive;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcopy/google/json/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public skipValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcopy/google/json/stream/JsonToken;->NAME:Lcopy/google/json/stream/JsonToken;

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->nextName()Ljava/lang/String;

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x2

    const-string v2, "null"

    aput-object v2, v0, v1

    :cond_15
    :goto_15
    iget v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_25

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_25
    return-void

    :cond_26
    invoke-direct {p0}, Lcopy/google/json/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcopy/google/json/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
