.class public Lcom/lohanry/android/framework/reflect/util/FieldsCache;
.super Ljava/lang/Object;
.source "FieldsCache.java"


# static fields
.field private static mClassAnnotationFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mClassFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->mClassAnnotationFields:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->mClassFields:Ljava/util/HashMap;

    return-void
.end method

.method public static getDeclaredFields(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotaion":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->mClassAnnotationFields:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 22
    sget-object v4, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->mClassAnnotationFields:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Field;

    .line 34
    :goto_2f
    return-object v4

    .line 24
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v0, "classFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 27
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v5, :cond_4b

    aget-object v1, v2, v4

    .line 28
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 32
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 33
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    sget-object v4, Lcom/lohanry/android/framework/reflect/util/FieldsCache;->mClassAnnotationFields:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 34
    goto :goto_2f
.end method
