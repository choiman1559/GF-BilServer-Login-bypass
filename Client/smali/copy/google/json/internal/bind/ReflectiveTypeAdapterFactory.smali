.class public final Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final accessor:Lcopy/google/json/internal/reflect/ReflectionAccessor;

.field private final constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

.field private final excluder:Lcopy/google/json/internal/Excluder;

.field private final fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcopy/google/json/internal/ConstructorConstructor;Lcopy/google/json/FieldNamingStrategy;Lcopy/google/json/internal/Excluder;Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcopy/google/json/internal/reflect/ReflectionAccessor;->getInstance()Lcopy/google/json/internal/reflect/ReflectionAccessor;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lcopy/google/json/internal/reflect/ReflectionAccessor;

    iput-object p1, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    iput-object p2, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

    iput-object p3, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcopy/google/json/internal/Excluder;

    iput-object p4, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method

.method private createBoundField(Lcopy/google/json/JSON;Ljava/lang/reflect/Field;Ljava/lang/String;Lcopy/google/json/reflect/TypeToken;ZZ)Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JSON;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;ZZ)",
            "Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    invoke-virtual {p4}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcopy/google/json/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v10

    const-class v0, Lcopy/google/json/annotations/JsonAdapter;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcopy/google/json/annotations/JsonAdapter;

    const/4 v7, 0x0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-virtual {v1, v2, p1, p4, v0}, Lcopy/google/json/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcopy/google/json/internal/ConstructorConstructor;Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Lcopy/google/json/annotations/JsonAdapter;)Lcopy/google/json/TypeAdapter;

    move-result-object v7

    :cond_1b
    if-eqz v7, :cond_33

    const/4 v6, 0x1

    :goto_1e
    if-nez v7, :cond_24

    invoke-virtual {p1, p4}, Lcopy/google/json/JSON;->getAdapter(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;

    move-result-object v7

    :cond_24
    new-instance v0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, p0

    move-object v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object v8, p1

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcopy/google/json/TypeAdapter;Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Z)V

    return-object v0

    :cond_33
    const/4 v6, 0x0

    goto :goto_1e
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLcopy/google/json/internal/Excluder;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcopy/google/json/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lcopy/google/json/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getBoundFields(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcopy/google/json/JSON;",
            "Lcopy/google/json/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v9

    :goto_c
    return-object v1

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    :goto_11
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_bb

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_1e
    if-ge v11, v14, :cond_a3

    aget-object v3, v13, v11

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    if-nez v6, :cond_38

    if-nez v7, :cond_38

    :cond_34
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1e

    :cond_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lcopy/google/json/internal/reflect/ReflectionAccessor;

    invoke-virtual {v1, v3}, Lcopy/google/json/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual/range {p2 .. p2}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcopy/google/json/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v16

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move v10, v1

    :goto_5a
    move/from16 v0, v17

    if-ge v10, v0, :cond_82

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v10, :cond_69

    const/4 v6, 0x0

    :cond_69
    invoke-static {v15}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcopy/google/json/JSON;Ljava/lang/reflect/Field;Ljava/lang/String;Lcopy/google/json/reflect/TypeToken;ZZ)Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v1

    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-nez v8, :cond_be

    :goto_7d
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-object v8, v1

    goto :goto_5a

    :cond_82
    if-eqz v8, :cond_34

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a3
    invoke-virtual/range {p2 .. p2}, Lcopy/google/json/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcopy/google/json/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcopy/google/json/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcopy/google/json/reflect/TypeToken;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_11

    :cond_bb
    move-object v1, v9

    goto/16 :goto_c

    :cond_be
    move-object v1, v8

    goto :goto_7d
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcopy/google/json/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcopy/google/json/annotations/SerializedName;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcopy/google/json/FieldNamingStrategy;

    invoke-interface {v0, p1}, Lcopy/google/json/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-interface {v0}, Lcopy/google/json/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcopy/google/json/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-nez v0, :cond_25

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v2

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v3, :cond_14

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_32
.end method


# virtual methods
.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 6
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

    move-result-object v1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcopy/google/json/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcopy/google/json/internal/ConstructorConstructor;->get(Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/internal/ObjectConstructor;

    move-result-object v2

    new-instance v0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v1}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcopy/google/json/internal/ObjectConstructor;Ljava/util/Map;)V

    goto :goto_d
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    iget-object v0, p0, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcopy/google/json/internal/Excluder;

    invoke-static {p1, p2, v0}, Lcopy/google/json/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLcopy/google/json/internal/Excluder;)Z

    move-result v0

    return v0
.end method
