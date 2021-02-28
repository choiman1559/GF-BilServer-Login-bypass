.class public final Lcopy/google/json/internal/Primitives;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .registers 2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_e

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isWrapperType(Ljava/lang/reflect/Type;)Z
    .registers 2

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static unwrap(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_e

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_6

    :cond_e
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_15

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_6

    :cond_15
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_1c

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_6

    :cond_1c
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_23

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_6

    :cond_23
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_2a

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_6

    :cond_2a
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_31

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_6

    :cond_31
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_38

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_6

    :cond_38
    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_6

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_6
.end method

.method public static wrap(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Integer;

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    const-class p0, Ljava/lang/Float;

    goto :goto_6

    :cond_e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    const-class p0, Ljava/lang/Byte;

    goto :goto_6

    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    const-class p0, Ljava/lang/Double;

    goto :goto_6

    :cond_1c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    const-class p0, Ljava/lang/Long;

    goto :goto_6

    :cond_23
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    const-class p0, Ljava/lang/Character;

    goto :goto_6

    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    const-class p0, Ljava/lang/Boolean;

    goto :goto_6

    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_38

    const-class p0, Ljava/lang/Short;

    goto :goto_6

    :cond_38
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Void;

    goto :goto_6
.end method
