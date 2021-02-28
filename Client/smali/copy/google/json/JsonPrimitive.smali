.class public final Lcopy/google/json/JsonPrimitive;
.super Lcopy/google/json/JsonElement;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0}, Lcopy/google/json/JsonElement;-><init>()V

    invoke-static {p1}, Lcopy/google/json/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .registers 3

    invoke-direct {p0}, Lcopy/google/json/JsonElement;-><init>()V

    invoke-static {p1}, Lcopy/google/json/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    invoke-direct {p0}, Lcopy/google/json/JsonElement;-><init>()V

    invoke-static {p1}, Lcopy/google/json/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcopy/google/json/JsonElement;-><init>()V

    invoke-static {p1}, Lcopy/google/json/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method private static isIntegral(Lcopy/google/json/JsonPrimitive;)Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    instance-of v2, v0, Ljava/math/BigInteger;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_1f

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20

    :cond_23
    move v0, v1

    goto :goto_20
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcopy/google/json/JsonElement;
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->deepCopy()Lcopy/google/json/JsonPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcopy/google/json/JsonPrimitive;
    .registers 1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcopy/google/json/JsonPrimitive;

    iget-object v2, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    invoke-static {p0}, Lcopy/google/json/JsonPrimitive;->isIntegral(Lcopy/google/json/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {p1}, Lcopy/google/json/JsonPrimitive;->isIntegral(Lcopy/google/json/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_70

    iget-object v2, p1, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_70

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_6d

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_6d
    move v1, v0

    :cond_6e
    move v0, v1

    goto :goto_4

    :cond_70
    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigDecimal;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getAsBoolean()Z
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method public getAsByte()B
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_e
.end method

.method public getAsCharacter()C
    .registers 3

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getAsDouble()D
    .registers 3

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_e
.end method

.method public getAsFloat()F
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_e
.end method

.method public getAsInt()I
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public getAsLong()J
    .registers 3

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_e
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    new-instance v1, Lcopy/google/json/internal/LazilyParsedNumber;

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcopy/google/json/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    goto :goto_10
.end method

.method public getAsShort()S
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_e
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hashCode()I
    .registers 5

    const/16 v2, 0x20

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v0, :cond_9

    const/16 v0, 0x1f

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcopy/google/json/JsonPrimitive;->isIntegral(Lcopy/google/json/JsonPrimitive;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcopy/google/json/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_8

    :cond_33
    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8
.end method

.method public isBoolean()Z
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isNumber()Z
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .registers 2

    iget-object v0, p0, Lcopy/google/json/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method
