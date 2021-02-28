.class public Lorg/apache/commons/lang3/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/ClassUtils$Interfaces;
    }
.end annotation


# static fields
.field public static final INNER_CLASS_SEPARATOR:Ljava/lang/String;

.field public static final INNER_CLASS_SEPARATOR_CHAR:C = '$'

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String;

.field public static final PACKAGE_SEPARATOR_CHAR:C = '.'

.field private static final abbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final namePrimitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final primitiveWrapperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final reverseAbbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final wrapperPrimitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 64
    const/16 v6, 0x2e

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/lang3/ClassUtils;->PACKAGE_SEPARATOR:Ljava/lang/String;

    .line 74
    const/16 v6, 0x24

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/lang3/ClassUtils;->INNER_CLASS_SEPARATOR:Ljava/lang/String;

    .line 79
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    .line 81
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "boolean"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "byte"

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "char"

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "short"

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "int"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "long"

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "double"

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "float"

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    const-string v7, "void"

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    .line 97
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Boolean;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Byte;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Character;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Short;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Integer;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Long;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Double;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Float;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/apache/commons/lang3/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    .line 113
    sget-object v6, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    .local v3, "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d1
    :goto_d1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .end local v3    # "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 115
    .restart local v3    # "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 116
    .restart local v5    # "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d1

    .line 117
    sget-object v7, Lorg/apache/commons/lang3/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d1

    .line 136
    :cond_f5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "int"

    const-string v7, "I"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v6, "boolean"

    const-string v7, "Z"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v6, "float"

    const-string v7, "F"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v6, "long"

    const-string v7, "J"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v6, "short"

    const-string v7, "S"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v6, "byte"

    const-string v7, "B"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v6, "double"

    const-string v7, "D"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v6, "char"

    const-string v7, "C"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v4, "r":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_157

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13f

    .line 149
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_157
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/lang3/ClassUtils;->abbreviationMap:Ljava/util/Map;

    .line 150
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/lang3/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method public static convertClassNamesToClasses(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .local p0, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 564
    if-nez p0, :cond_5

    move-object v1, v3

    .line 575
    :cond_4
    return-object v1

    .line 567
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 568
    .local v1, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 570
    .local v0, "className":Ljava/lang/String;
    :try_start_1e
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_12

    .line 571
    :catch_26
    move-exception v2

    .line 572
    .local v2, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method public static convertClassesToClassNames(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v2, 0x0

    .line 591
    if-nez p0, :cond_5

    move-object v0, v2

    .line 602
    :cond_4
    return-object v0

    .line 594
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    .local v0, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 596
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_24

    .line 597
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 599
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method public static getAbbreviatedName(Ljava/lang/Class;I)Ljava/lang/String;
    .registers 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_5

    .line 416
    const-string v0, ""

    .line 418
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ClassUtils;->getAbbreviatedName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getAbbreviatedName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v9, 0x2e

    .line 447
    if-gtz p1, :cond_c

    .line 448
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "len must be > 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 450
    :cond_c
    if-nez p0, :cond_11

    .line 451
    const-string v7, ""

    .line 480
    :goto_10
    return-object v7

    .line 454
    :cond_11
    move v0, p1

    .line 455
    .local v0, "availableSpace":I
    invoke-static {p0, v9}, Lorg/apache/commons/lang3/StringUtils;->countMatches(Ljava/lang/CharSequence;C)I

    move-result v4

    .line 456
    .local v4, "packageLevels":I
    add-int/lit8 v7, v4, 0x1

    new-array v3, v7, [Ljava/lang/String;

    .line 457
    .local v3, "output":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 458
    .local v1, "endIndex":I
    move v2, v4

    .local v2, "level":I
    :goto_21
    if-ltz v2, :cond_4f

    .line 459
    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 460
    .local v6, "startIndex":I
    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "part":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v0, v7

    .line 462
    if-lez v2, :cond_38

    .line 464
    add-int/lit8 v0, v0, -0x1

    .line 466
    :cond_38
    if-ne v2, v4, :cond_41

    .line 468
    aput-object v5, v3, v2

    .line 477
    :goto_3c
    add-int/lit8 v1, v6, -0x1

    .line 458
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 470
    :cond_41
    if-lez v0, :cond_46

    .line 471
    aput-object v5, v3, v2

    goto :goto_3c

    .line 474
    :cond_46
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    goto :goto_3c

    .line 480
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "startIndex":I
    :cond_4f
    invoke-static {v3, v9}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v7

    goto :goto_10
.end method

.method public static getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 520
    const/4 v1, 0x0

    .line 526
    :goto_3
    return-object v1

    .line 523
    :cond_4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 524
    .local v0, "interfacesFound":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Class<*>;>;"
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3
.end method

.method private static getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "interfacesFound":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    :goto_0
    if-eqz p0, :cond_1d

    .line 537
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 539
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_18

    aget-object v0, v1, v2

    .line 540
    .local v0, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 541
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 539
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 545
    .end local v0    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 546
    goto :goto_0

    .line 547
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1d
    return-void
.end method

.method public static getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 494
    const/4 v0, 0x0

    .line 502
    :cond_3
    return-object v0

    .line 496
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 498
    .local v1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_d
    if-eqz v1, :cond_3

    .line 499
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_d
.end method

.method public static getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1193
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getCanonicalName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "valueIfNull"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1206
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_3

    .line 1210
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p1

    .line 1209
    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_2
.end method

.method public static getCanonicalName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1222
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 1235
    if-nez p0, :cond_3

    .line 1239
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p1

    .line 1238
    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_2
.end method

.method private static getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1331
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1332
    if-nez p0, :cond_9

    .line 1333
    const/4 p0, 0x0

    .line 1358
    .end local p0    # "className":Ljava/lang/String;
    .local v1, "dim":I
    :cond_8
    :goto_8
    return-object p0

    .line 1335
    .end local v1    # "dim":I
    .restart local p0    # "className":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    .line 1336
    .restart local v1    # "dim":I
    :goto_a
    const-string v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1337
    add-int/lit8 v1, v1, 0x1

    .line 1338
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    .line 1340
    :cond_19
    if-lt v1, v5, :cond_8

    .line 1343
    const-string v3, "L"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1344
    const-string v3, ";"

    .line 1346
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1344
    :goto_31
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1354
    :cond_35
    :goto_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v0, "canonicalClassNameBuffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    if-ge v2, v1, :cond_5e

    .line 1356
    const-string v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1348
    .end local v0    # "canonicalClassNameBuffer":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_31

    .line 1350
    :cond_4a
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 1351
    sget-object v3, Lorg/apache/commons/lang3/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "className":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .restart local p0    # "className":Ljava/lang/String;
    goto :goto_35

    .line 1358
    .restart local v0    # "canonicalClassNameBuffer":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1027
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 8
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 990
    :try_start_0
    sget-object v3, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 991
    sget-object v3, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1002
    :goto_10
    return-object v0

    .line 993
    :cond_11
    invoke-static {p1}, Lorg/apache/commons/lang3/ClassUtils;->toCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_10

    .line 996
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1a
    move-exception v1

    .line 998
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1000
    .local v2, "lastDotIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4c

    .line 1002
    :try_start_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 1003
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1002
    invoke-static {p0, v3, p2}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_49} :catch_4b

    move-result-object v0

    goto :goto_10

    .line 1005
    :catch_4b
    move-exception v3

    .line 1010
    :cond_4c
    throw v1
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1042
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "initialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1058
    .local v0, "contextCL":Ljava/lang/ClassLoader;
    if-nez v0, :cond_15

    const-class v2, Lorg/apache/commons/lang3/ClassUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1059
    .local v1, "loader":Ljava/lang/ClassLoader;
    :goto_10
    invoke-static {v1, p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_15
    move-object v1, v0

    .line 1058
    goto :goto_10
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "valueIfNull"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_3

    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 327
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 340
    if-nez p0, :cond_3

    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static getPackageCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1294
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_5

    .line 1295
    const-string v0, ""

    .line 1297
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getPackageCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 1280
    if-nez p0, :cond_3

    .line 1283
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 1311
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_5

    .line 367
    const-string v0, ""

    .line 369
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getPackageName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 353
    if-nez p0, :cond_3

    .line 356
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 382
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 383
    const-string v1, ""

    .line 399
    :goto_a
    return-object v1

    .line 387
    :cond_b
    :goto_b
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_18

    .line 388
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 391
    :cond_18
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_32

    .line 392
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 395
    :cond_32
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 396
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3e

    .line 397
    const-string v1, ""

    goto :goto_a

    .line 399
    :cond_3e
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public static varargs getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 11
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 1089
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1090
    .local v3, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1109
    .end local v3    # "declaredMethod":Ljava/lang/reflect/Method;
    :goto_12
    return-object v3

    .line 1094
    .restart local v3    # "declaredMethod":Ljava/lang/reflect/Method;
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v1, "candidateClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1096
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1098
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1099
    .local v0, "candidateClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1104
    :try_start_40
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_40 .. :try_end_43} :catch_54

    move-result-object v2

    .line 1108
    .local v2, "candidateMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    move-object v3, v2

    .line 1109
    goto :goto_12

    .line 1105
    .end local v2    # "candidateMethod":Ljava/lang/reflect/Method;
    :catch_54
    move-exception v4

    .line 1106
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_2a

    .line 1113
    .end local v0    # "candidateClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_56
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find a public method for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1114
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getShortCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1250
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_5

    .line 1251
    const-string v0, ""

    .line 1253
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getShortCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 1178
    if-nez p0, :cond_3

    .line 1181
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 1266
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_5

    .line 193
    const-string v0, ""

    .line 195
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 175
    if-nez p0, :cond_3

    .line 178
    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static getShortClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2e

    const/16 v9, 0x24

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 211
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 212
    const-string v4, ""

    .line 240
    :goto_f
    return-object v4

    .line 215
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "arrayPrefix":Ljava/lang/StringBuilder;
    const-string v5, "["

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 219
    :goto_1d
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_2f

    .line 220
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 221
    const-string v5, "[]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 224
    :cond_2f
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_4f

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 228
    :cond_4f
    sget-object v5, Lorg/apache/commons/lang3/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 229
    sget-object v5, Lorg/apache/commons/lang3/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "className":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .line 233
    .restart local p0    # "className":Ljava/lang/String;
    :cond_5f
    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 234
    .local v2, "lastDotIdx":I
    if-ne v2, v7, :cond_87

    :goto_65
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 236
    .local v1, "innerIdx":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "out":Ljava/lang/String;
    if-eq v1, v7, :cond_75

    .line 238
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 240
    :cond_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .line 234
    .end local v1    # "innerIdx":I
    .end local v3    # "out":Ljava/lang/String;
    :cond_87
    add-int/lit8 v4, v2, 0x1

    goto :goto_65
.end method

.method public static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getSimpleName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimpleName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "valueIfNull"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_3

    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static getSimpleName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 277
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getSimpleName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimpleName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .prologue
    .line 290
    if-nez p0, :cond_3

    .end local p1    # "valueIfNull":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "valueIfNull":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static hierarchy(Ljava/lang/Class;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1370
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils$Interfaces;->EXCLUDE:Lorg/apache/commons/lang3/ClassUtils$Interfaces;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->hierarchy(Ljava/lang/Class;Lorg/apache/commons/lang3/ClassUtils$Interfaces;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static hierarchy(Ljava/lang/Class;Lorg/apache/commons/lang3/ClassUtils$Interfaces;)Ljava/lang/Iterable;
    .registers 4
    .param p1, "interfacesBehavior"    # Lorg/apache/commons/lang3/ClassUtils$Interfaces;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/lang3/ClassUtils$Interfaces;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1382
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/commons/lang3/ClassUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ClassUtils$1;-><init>(Ljava/lang/Class;)V

    .line 1410
    .local v0, "classes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    sget-object v1, Lorg/apache/commons/lang3/ClassUtils$Interfaces;->INCLUDE:Lorg/apache/commons/lang3/ClassUtils$Interfaces;

    if-eq p1, v1, :cond_a

    .line 1413
    .end local v0    # "classes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    :goto_9
    return-object v0

    .restart local v0    # "classes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    :cond_a
    new-instance v1, Lorg/apache/commons/lang3/ClassUtils$2;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/ClassUtils$2;-><init>(Ljava/lang/Iterable;)V

    move-object v0, v1

    goto :goto_9
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .registers 6
    .param p2, "autoboxing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 791
    if-nez p1, :cond_5

    .line 860
    :cond_4
    :goto_4
    return v1

    .line 795
    :cond_5
    if-nez p0, :cond_11

    .line 796
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_f

    :goto_d
    move v1, v0

    goto :goto_4

    :cond_f
    move v0, v1

    goto :goto_d

    .line 799
    :cond_11
    if-eqz p2, :cond_37

    .line 800
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_25

    .line 801
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 802
    if-eqz p0, :cond_4

    .line 806
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_37

    .line 807
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 808
    if-eqz p0, :cond_4

    .line 813
    :cond_37
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move v1, v0

    .line 814
    goto :goto_4

    .line 816
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 817
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 820
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 821
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 822
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 823
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6b
    move v1, v0

    goto :goto_4

    .line 825
    :cond_6d
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 826
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 827
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_85
    move v1, v0

    goto/16 :goto_4

    .line 829
    :cond_88
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 832
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 835
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 836
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_4

    .line 838
    :cond_a8
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 839
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 840
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 841
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 842
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_d0
    move v1, v0

    goto/16 :goto_4

    .line 844
    :cond_d3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 845
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 846
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 847
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 848
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_fb
    move v1, v0

    goto/16 :goto_4

    .line 850
    :cond_fe
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 851
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12e

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 852
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12e

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 853
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12e

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 854
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12e

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 855
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_12e
    move v1, v0

    goto/16 :goto_4

    .line 860
    :cond_131
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    goto/16 :goto_4
.end method

.method public static varargs isAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "toClassArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method public static isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z
    .registers 7
    .param p2, "autoboxing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "toClassArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 680
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 694
    :cond_7
    :goto_7
    return v1

    .line 683
    :cond_8
    if-nez p0, :cond_c

    .line 684
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 686
    :cond_c
    if-nez p1, :cond_10

    .line 687
    sget-object p1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 689
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_21

    .line 690
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3, p2}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 694
    :cond_21
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isInnerClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 969
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPrimitiveOrWrapper(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 708
    if-nez p0, :cond_4

    .line 711
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->isPrimitiveWrapper(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_10
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isPrimitiveWrapper(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 877
    .local v0, "convertedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 878
    sget-object v1, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "convertedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 880
    .restart local v0    # "convertedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    return-object v0
.end method

.method public static varargs primitivesToWrappers([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 895
    const/4 p0, 0x0

    .line 906
    .end local p0    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    return-object p0

    .line 898
    .restart local p0    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    array-length v2, p0

    if-eqz v2, :cond_3

    .line 902
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 903
    .local v0, "convertedClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 904
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    move-object p0, v0

    .line 906
    goto :goto_3
.end method

.method private static toCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1125
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1126
    const-string v2, "className must not be null."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    .local v1, "classNameBuffer":Ljava/lang/StringBuilder;
    :goto_19
    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1131
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 1133
    :cond_31
    sget-object v2, Lorg/apache/commons/lang3/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1134
    .local v0, "abbreviation":Ljava/lang/String;
    if-eqz v0, :cond_43

    .line 1135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    :goto_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1141
    .end local v0    # "abbreviation":Ljava/lang/String;
    .end local v1    # "classNameBuffer":Ljava/lang/StringBuilder;
    :cond_42
    return-object p0

    .line 1137
    .restart local v0    # "abbreviation":Ljava/lang/String;
    .restart local v1    # "classNameBuffer":Ljava/lang/StringBuilder;
    :cond_43
    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e
.end method

.method public static varargs toClass([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1155
    if-nez p0, :cond_4

    .line 1164
    :goto_3
    return-object v3

    .line 1157
    :cond_4
    array-length v2, p0

    if-nez v2, :cond_a

    .line 1158
    sget-object v3, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    goto :goto_3

    .line 1160
    :cond_a
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 1161
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 1162
    aget-object v2, p0, v1

    if-nez v2, :cond_1b

    move-object v2, v3

    :goto_16
    aput-object v2, v0, v1

    .line 1161
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1162
    :cond_1b
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_16

    :cond_22
    move-object v3, v0

    .line 1164
    goto :goto_3
.end method

.method public static wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 926
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static varargs wrappersToPrimitives([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 944
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 945
    const/4 p0, 0x0

    .line 956
    .end local p0    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    return-object p0

    .line 948
    .restart local p0    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    array-length v2, p0

    if-eqz v2, :cond_3

    .line 952
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 953
    .local v0, "convertedClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 954
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 953
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    move-object p0, v0

    .line 956
    goto :goto_3
.end method
