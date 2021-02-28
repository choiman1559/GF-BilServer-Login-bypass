.class public final Lcopy/google/json/internal/Excluder;
.super Ljava/lang/Object;

# interfaces
.implements Lcopy/google/json/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcopy/google/json/internal/Excluder;

.field private static final IGNORE_VERSIONS:D = -1.0


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcopy/google/json/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcopy/google/json/internal/Excluder;

    invoke-direct {v0}, Lcopy/google/json/internal/Excluder;-><init>()V

    sput-object v0, Lcopy/google/json/internal/Excluder;->DEFAULT:Lcopy/google/json/internal/Excluder;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcopy/google/json/internal/Excluder;->version:D

    const/16 v0, 0x88

    iput v0, p0, Lcopy/google/json/internal/Excluder;->modifiers:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/internal/Excluder;->serializeInnerClasses:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method private excludeClassChecks(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-wide v0, p0, Lcopy/google/json/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_21

    const-class v0, Lcopy/google/json/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcopy/google/json/annotations/Since;

    const-class v1, Lcopy/google/json/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcopy/google/json/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcopy/google/json/internal/Excluder;->isValidVersion(Lcopy/google/json/annotations/Since;Lcopy/google/json/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    :goto_20
    return v0

    :cond_21
    iget-boolean v0, p0, Lcopy/google/json/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_2d

    invoke-direct {p0, p1}, Lcopy/google/json/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    goto :goto_20

    :cond_2d
    invoke-direct {p0, p1}, Lcopy/google/json/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v2

    goto :goto_20

    :cond_35
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private excludeClassInStrategy(Ljava/lang/Class;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_1c

    iget-object v0, p0, Lcopy/google/json/internal/Excluder;->serializationStrategies:Ljava/util/List;

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/ExclusionStrategy;

    invoke-interface {v0, p1}, Lcopy/google/json/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    iget-object v0, p0, Lcopy/google/json/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    goto :goto_4

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcopy/google/json/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isValidSince(Lcopy/google/json/annotations/Since;)Z
    .registers 6

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcopy/google/json/annotations/Since;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcopy/google/json/internal/Excluder;->version:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private isValidUntil(Lcopy/google/json/annotations/Until;)Z
    .registers 6

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcopy/google/json/annotations/Until;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcopy/google/json/internal/Excluder;->version:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private isValidVersion(Lcopy/google/json/annotations/Since;Lcopy/google/json/annotations/Until;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcopy/google/json/internal/Excluder;->isValidSince(Lcopy/google/json/annotations/Since;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2}, Lcopy/google/json/internal/Excluder;->isValidUntil(Lcopy/google/json/annotations/Until;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected clone()Lcopy/google/json/internal/Excluder;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/internal/Excluder;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcopy/google/json/internal/Excluder;->clone()Lcopy/google/json/internal/Excluder;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)Lcopy/google/json/TypeAdapter;
    .registers 9
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

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcopy/google/json/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcopy/google/json/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-direct {p0, v1, v0}, Lcopy/google/json/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_12
    move v3, v0

    :goto_13
    if-nez v4, :cond_1b

    invoke-direct {p0, v1, v2}, Lcopy/google/json/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    move v2, v0

    :cond_1c
    if-nez v3, :cond_24

    if-nez v2, :cond_24

    const/4 v0, 0x0

    :goto_21
    return-object v0

    :cond_22
    move v3, v2

    goto :goto_13

    :cond_24
    new-instance v0, Lcopy/google/json/internal/Excluder$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcopy/google/json/internal/Excluder$1;-><init>(Lcopy/google/json/internal/Excluder;ZZLcopy/google/json/JSON;Lcopy/google/json/reflect/TypeToken;)V

    goto :goto_21
.end method

.method public disableInnerClassSerialization()Lcopy/google/json/internal/Excluder;
    .registers 3

    invoke-virtual {p0}, Lcopy/google/json/internal/Excluder;->clone()Lcopy/google/json/internal/Excluder;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcopy/google/json/internal/Excluder;->serializeInnerClasses:Z

    return-object v0
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcopy/google/json/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcopy/google/json/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 9

    const/4 v2, 0x1

    iget v0, p0, Lcopy/google/json/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move v0, v2

    :goto_b
    return v0

    :cond_c
    iget-wide v0, p0, Lcopy/google/json/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2c

    const-class v0, Lcopy/google/json/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcopy/google/json/annotations/Since;

    const-class v1, Lcopy/google/json/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcopy/google/json/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcopy/google/json/internal/Excluder;->isValidVersion(Lcopy/google/json/annotations/Since;Lcopy/google/json/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v2

    goto :goto_b

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v2

    goto :goto_b

    :cond_34
    iget-boolean v0, p0, Lcopy/google/json/internal/Excluder;->requireExpose:Z

    if-eqz v0, :cond_52

    const-class v0, Lcopy/google/json/annotations/Expose;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcopy/google/json/annotations/Expose;

    if-eqz v0, :cond_4a

    if-eqz p2, :cond_4c

    invoke-interface {v0}, Lcopy/google/json/annotations/Expose;->serialize()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_4a
    move v0, v2

    goto :goto_b

    :cond_4c
    invoke-interface {v0}, Lcopy/google/json/annotations/Expose;->deserialize()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_52
    iget-boolean v0, p0, Lcopy/google/json/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_62

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcopy/google/json/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v2

    goto :goto_b

    :cond_62
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcopy/google/json/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v2

    goto :goto_b

    :cond_6e
    if-eqz p2, :cond_96

    iget-object v0, p0, Lcopy/google/json/internal/Excluder;->serializationStrategies:Ljava/util/List;

    :goto_72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_99

    new-instance v1, Lcopy/google/json/FieldAttributes;

    invoke-direct {v1, p1}, Lcopy/google/json/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_81
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcopy/google/json/ExclusionStrategy;

    invoke-interface {v0, v1}, Lcopy/google/json/ExclusionStrategy;->shouldSkipField(Lcopy/google/json/FieldAttributes;)Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v2

    goto/16 :goto_b

    :cond_96
    iget-object v0, p0, Lcopy/google/json/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    goto :goto_72

    :cond_99
    const/4 v0, 0x0

    goto/16 :goto_b
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcopy/google/json/internal/Excluder;
    .registers 3

    invoke-virtual {p0}, Lcopy/google/json/internal/Excluder;->clone()Lcopy/google/json/internal/Excluder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcopy/google/json/internal/Excluder;->requireExpose:Z

    return-object v0
.end method

.method public withExclusionStrategy(Lcopy/google/json/ExclusionStrategy;ZZ)Lcopy/google/json/internal/Excluder;
    .registers 7

    invoke-virtual {p0}, Lcopy/google/json/internal/Excluder;->clone()Lcopy/google/json/internal/Excluder;

    move-result-object v0

    if-eqz p2, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcopy/google/json/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcopy/google/json/internal/Excluder;->serializationStrategies:Ljava/util/List;

    iget-object v1, v0, Lcopy/google/json/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz p3, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcopy/google/json/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcopy/google/json/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    iget-object v1, v0, Lcopy/google/json/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-object v0
.end method

.method public varargs withModifiers([I)Lcopy/google/json/internal/Excluder;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcopy/google/json/internal/Excluder;->clone()Lcopy/google/json/internal/Excluder;

    move-result-object v1

    iput v0, v1, Lcopy/google/json/internal/Excluder;->modifiers:I

    array-length v2, p1

    :goto_8
    if-ge v0, v2, :cond_14

    aget v3, p1, v0

    iget v4, v1, Lcopy/google/json/internal/Excluder;->modifiers:I

    or-int/2addr v3, v4

    iput v3, v1, Lcopy/google/json/internal/Excluder;->modifiers:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return-object v1
.end method

.method public withVersion(D)Lcopy/google/json/internal/Excluder;
    .registers 4

    invoke-virtual {p0}, Lcopy/google/json/internal/Excluder;->clone()Lcopy/google/json/internal/Excluder;

    move-result-object v0

    iput-wide p1, v0, Lcopy/google/json/internal/Excluder;->version:D

    return-object v0
.end method
