.class public final Lcopy/google/json/JsonArray;
.super Lcopy/google/json/JsonElement;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcopy/google/json/JsonElement;",
        "Ljava/lang/Iterable",
        "<",
        "Lcopy/google/json/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
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
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcopy/google/json/JsonElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcopy/google/json/JsonElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcopy/google/json/JsonElement;)V
    .registers 3

    if-nez p1, :cond_4

    sget-object p1, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :cond_4
    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v1, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_a

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_6
.end method

.method public add(Ljava/lang/Character;)V
    .registers 4

    iget-object v1, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_a

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    goto :goto_6
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4

    iget-object v1, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_a

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_6
.end method

.method public add(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_a

    sget-object v0, Lcopy/google/json/JsonNull;->INSTANCE:Lcopy/google/json/JsonNull;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance v0, Lcopy/google/json/JsonPrimitive;

    invoke-direct {v0, p1}, Lcopy/google/json/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public addAll(Lcopy/google/json/JsonArray;)V
    .registers 4

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p1, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public contains(Lcopy/google/json/JsonElement;)Z
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deepCopy()Lcopy/google/json/JsonArray;
    .registers 4

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v1, Lcopy/google/json/JsonArray;

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcopy/google/json/JsonArray;-><init>(I)V

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->deepCopy()Lcopy/google/json/JsonElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcopy/google/json/JsonArray;->add(Lcopy/google/json/JsonElement;)V

    goto :goto_19

    :cond_2d
    move-object v0, v1

    :goto_2e
    return-object v0

    :cond_2f
    new-instance v0, Lcopy/google/json/JsonArray;

    invoke-direct {v0}, Lcopy/google/json/JsonArray;-><init>()V

    goto :goto_2e
.end method

.method public bridge synthetic deepCopy()Lcopy/google/json/JsonElement;
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonArray;->deepCopy()Lcopy/google/json/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcopy/google/json/JsonArray;

    if-eqz v0, :cond_14

    check-cast p1, Lcopy/google/json/JsonArray;

    iget-object v0, p1, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public get(I)Lcopy/google/json/JsonElement;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    return-object v0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsByte()B

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsInt()I

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsShort()S

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    invoke-virtual {v0}, Lcopy/google/json/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcopy/google/json/JsonElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcopy/google/json/JsonElement;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    return-object v0
.end method

.method public remove(Lcopy/google/json/JsonElement;)Z
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILcopy/google/json/JsonElement;)Lcopy/google/json/JsonElement;
    .registers 4

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/JsonElement;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
