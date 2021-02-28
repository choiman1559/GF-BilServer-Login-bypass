.class public final Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcopy/google/json/internal/ConstructorConstructor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/reflect/TypeToken",
            "<TT;>;)",
            "Lcopy/google/json/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcopy/google/json/annotations/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcopy/google/json/annotations/JsonAdapter;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcopy/google/json/internal/ConstructorConstructor;Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/annotations/JsonAdapter;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    goto :goto_f
.end method

.method getTypeAdapter(Lcopy/google/json/internal/ConstructorConstructor;Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/annotations/JsonAdapter;)Lcopy/google/json/TypeAdapter;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/internal/ConstructorConstructor;",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;",
            "Lcopy/google/json/annotations/JsonAdapter;",
            ")",
            "Lcopy/google/json/TypeAdapter",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p4}, Lcopy/google/json/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/Class;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcopy/google/json/internal/ConstructorConstructor;->get(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/internal/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lcopy/google/json/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcopy/google/json/TypeAdapter;

    if-eqz v1, :cond_24

    check-cast v0, Lcopy/google/json/TypeAdapter;

    :goto_17
    if-eqz v0, :cond_23

    invoke-interface {p4}, Lcopy/google/json/annotations/JsonAdapter;->nullSafe()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcopy/google/json/TypeAdapter;->nullSafe()Lcopy/google/json/TypeAdapter;

    move-result-object v0

    :cond_23
    return-object v0

    :cond_24
    instance-of v1, v0, Lcopy/google/json/TypeAdapterFactory;

    if-eqz v1, :cond_2f

    check-cast v0, Lcopy/google/json/TypeAdapterFactory;

    invoke-interface {v0, p2, p3}, Lcopy/google/json/TypeAdapterFactory;->create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v0

    goto :goto_17

    :cond_2f
    instance-of v1, v0, Lcopy/google/json/JsonSerializer;

    if-nez v1, :cond_37

    instance-of v1, v0, Lcopy/google/json/JsonDeserializer;

    if-eqz v1, :cond_51

    :cond_37
    instance-of v1, v0, Lcopy/google/json/JsonSerializer;

    if-eqz v1, :cond_4d

    move-object v1, v0

    check-cast v1, Lcopy/google/json/JsonSerializer;

    :goto_3e
    instance-of v2, v0, Lcopy/google/json/JsonDeserializer;

    if-eqz v2, :cond_4f

    check-cast v0, Lcopy/google/json/JsonDeserializer;

    move-object v2, v0

    :goto_45
    new-instance v0, Lcopy/google/json/internal/bind/TreeTypeAdapter;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcopy/google/json/internal/bind/TreeTypeAdapter;-><init>(Lcopy/google/json/JsonSerializer;Lcopy/google/json/JsonDeserializer;Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/TypeAdapterFactory;)V

    goto :goto_17

    :cond_4d
    move-object v1, v5

    goto :goto_3e

    :cond_4f
    move-object v2, v5

    goto :goto_45

    :cond_51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attempt to bind an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as a @JsonAdapter for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcopy/google/json/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
