.class public final Lcopy/google/json/JsonObject;
.super Lcopy/google/json/JsonElement;


# instance fields
.field private final members:Lcopy/google/json/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcopy/google/json/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcopy/google/json/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcopy/google/json/JsonElement;-><init>()V

    new-instance v0, Lcopy/google/json/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcopy/google/json/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcopy/google/json/JsonElement;)V
    .registers 4

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    if-nez p2, :cond_6

    sget-object p2, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :cond_6
    invoke-virtual {v0, p1, p2}, Lcopy/google/json/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    if-nez p2, :cond_8

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lcopy/google/json/JsonObject;->add(Ljava/lang/String;Lcopy/google/json/JsonElement;)V

    return-void

    :cond_8
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p2}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_4
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .registers 4

    if-nez p2, :cond_8

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lcopy/google/json/JsonObject;->add(Ljava/lang/String;Lcopy/google/json/JsonElement;)V

    return-void

    :cond_8
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p2}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    goto :goto_4
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    if-nez p2, :cond_8

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lcopy/google/json/JsonObject;->add(Ljava/lang/String;Lcopy/google/json/JsonElement;)V

    return-void

    :cond_8
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p2}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_4
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_8

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lcopy/google/json/JsonObject;->add(Ljava/lang/String;Lcopy/google/json/JsonElement;)V

    return-void

    :cond_8
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p2}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public bridge synthetic deepCopy()Lcopy/google/json/JsonElement;
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonObject;->deepCopy()Lcopy/google/json/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcopy/google/json/JsonObject;
    .registers 5

    new-instance v2, Lcopy/google/json/JsonObject;

    invoke-direct {v2}, Lcopy/google/json/JsonObject;-><init>()V

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcopy/google/json/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->deepCopy()Lcopy/google/json/JsonElement;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcopy/google/json/JsonObject;->add(Ljava/lang/String;Lcopy/google/json/JsonElement;)V

    goto :goto_f

    :cond_2f
    return-object v2
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcopy/google/json/JsonElement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcopy/google/json/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcopy/google/json/JsonObject;

    if-eqz v0, :cond_14

    check-cast p1, Lcopy/google/json/JsonObject;

    iget-object v0, p1, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    iget-object v1, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lcopy/google/json/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public get(Ljava/lang/String;)Lcopy/google/json/JsonElement;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    return-object v0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcopy/google/json/JsonArray;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcopy/google/json/JsonObject;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcopy/google/json/JsonPrimitive;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcopy/google/json/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcopy/google/json/internal/LinkedTreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcopy/google/json/JsonElement;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcopy/google/json/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JsonObject;->members:Lcopy/google/json/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcopy/google/json/internal/LinkedTreeMap;->size()I

    move-result v0

    return v0
.end method
