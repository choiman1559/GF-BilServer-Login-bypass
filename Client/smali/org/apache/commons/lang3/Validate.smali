.class public Lorg/apache/commons/lang3/Validate;
.super Ljava/lang/Object;
.source "Validate.java"


# static fields
.field private static final DEFAULT_EXCLUSIVE_BETWEEN_EX_MESSAGE:Ljava/lang/String; = "The value %s is not in the specified exclusive range of %s to %s"

.field private static final DEFAULT_FINITE_EX_MESSAGE:Ljava/lang/String; = "The value is invalid: %f"

.field private static final DEFAULT_INCLUSIVE_BETWEEN_EX_MESSAGE:Ljava/lang/String; = "The value %s is not in the specified inclusive range of %s to %s"

.field private static final DEFAULT_IS_ASSIGNABLE_EX_MESSAGE:Ljava/lang/String; = "Cannot assign a %s to a %s"

.field private static final DEFAULT_IS_INSTANCE_OF_EX_MESSAGE:Ljava/lang/String; = "Expected type: %s, actual: %s"

.field private static final DEFAULT_IS_NULL_EX_MESSAGE:Ljava/lang/String; = "The validated object is null"

.field private static final DEFAULT_IS_TRUE_EX_MESSAGE:Ljava/lang/String; = "The validated expression is false"

.field private static final DEFAULT_MATCHES_PATTERN_EX:Ljava/lang/String; = "The string %s does not match the pattern %s"

.field private static final DEFAULT_NOT_BLANK_EX_MESSAGE:Ljava/lang/String; = "The validated character sequence is blank"

.field private static final DEFAULT_NOT_EMPTY_ARRAY_EX_MESSAGE:Ljava/lang/String; = "The validated array is empty"

.field private static final DEFAULT_NOT_EMPTY_CHAR_SEQUENCE_EX_MESSAGE:Ljava/lang/String; = "The validated character sequence is empty"

.field private static final DEFAULT_NOT_EMPTY_COLLECTION_EX_MESSAGE:Ljava/lang/String; = "The validated collection is empty"

.field private static final DEFAULT_NOT_EMPTY_MAP_EX_MESSAGE:Ljava/lang/String; = "The validated map is empty"

.field private static final DEFAULT_NOT_NAN_EX_MESSAGE:Ljava/lang/String; = "The validated value is not a number"

.field private static final DEFAULT_NO_NULL_ELEMENTS_ARRAY_EX_MESSAGE:Ljava/lang/String; = "The validated array contains null element at index: %d"

.field private static final DEFAULT_NO_NULL_ELEMENTS_COLLECTION_EX_MESSAGE:Ljava/lang/String; = "The validated collection contains null element at index: %d"

.field private static final DEFAULT_VALID_INDEX_ARRAY_EX_MESSAGE:Ljava/lang/String; = "The validated array index is invalid: %d"

.field private static final DEFAULT_VALID_INDEX_CHAR_SEQUENCE_EX_MESSAGE:Ljava/lang/String; = "The validated character sequence index is invalid: %d"

.field private static final DEFAULT_VALID_INDEX_COLLECTION_EX_MESSAGE:Ljava/lang/String; = "The validated collection index is invalid: %d"

.field private static final DEFAULT_VALID_STATE_EX_MESSAGE:Ljava/lang/String; = "The validated state is false"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static exclusiveBetween(DDD)V
    .registers 12
    .param p0, "start"    # D
    .param p2, "end"    # D
    .param p4, "value"    # D

    .prologue
    .line 1213
    cmpg-double v0, p4, p0

    if-lez v0, :cond_8

    cmpl-double v0, p4, p2

    if-ltz v0, :cond_2c

    .line 1214
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value %s is not in the specified exclusive range of %s to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_2c
    return-void
.end method

.method public static exclusiveBetween(DDDLjava/lang/String;)V
    .registers 9
    .param p0, "start"    # D
    .param p2, "end"    # D
    .param p4, "value"    # D
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 1236
    cmpg-double v0, p4, p0

    if-lez v0, :cond_8

    cmpl-double v0, p4, p2

    if-ltz v0, :cond_e

    .line 1237
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_e
    return-void
.end method

.method public static exclusiveBetween(JJJ)V
    .registers 12
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "value"    # J

    .prologue
    .line 1169
    cmp-long v0, p4, p0

    if-lez v0, :cond_8

    cmp-long v0, p4, p2

    if-ltz v0, :cond_2c

    .line 1170
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value %s is not in the specified exclusive range of %s to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_2c
    return-void
.end method

.method public static exclusiveBetween(JJJLjava/lang/String;)V
    .registers 9
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "value"    # J
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 1192
    cmp-long v0, p4, p0

    if-lez v0, :cond_8

    cmp-long v0, p4, p2

    if-ltz v0, :cond_e

    .line 1193
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_e
    return-void
.end method

.method public static exclusiveBetween(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Comparable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p0, "start":Ljava/lang/Object;, "TT;"
    .local p1, "end":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 1124
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value %s is not in the specified exclusive range of %s to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_24
    return-void
.end method

.method public static varargs exclusiveBetween(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Comparable",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p0, "start":Ljava/lang/Object;, "TT;"
    .local p1, "end":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 1149
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_16
    return-void
.end method

.method public static finite(D)V
    .registers 6
    .param p0, "value"    # D

    .prologue
    .line 942
    const-string v0, "The value is invalid: %f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->finite(DLjava/lang/String;[Ljava/lang/Object;)V

    .line 943
    return-void
.end method

.method public static varargs finite(DLjava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "value"    # D
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 960
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 961
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_16
    return-void
.end method

.method public static inclusiveBetween(DDD)V
    .registers 12
    .param p0, "start"    # D
    .param p2, "end"    # D
    .param p4, "value"    # D

    .prologue
    .line 1075
    cmpg-double v0, p4, p0

    if-ltz v0, :cond_8

    cmpl-double v0, p4, p2

    if-lez v0, :cond_2c

    .line 1076
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value %s is not in the specified inclusive range of %s to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_2c
    return-void
.end method

.method public static inclusiveBetween(DDDLjava/lang/String;)V
    .registers 9
    .param p0, "start"    # D
    .param p2, "end"    # D
    .param p4, "value"    # D
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 1098
    cmpg-double v0, p4, p0

    if-ltz v0, :cond_8

    cmpl-double v0, p4, p2

    if-lez v0, :cond_e

    .line 1099
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_e
    return-void
.end method

.method public static inclusiveBetween(JJJ)V
    .registers 12
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "value"    # J

    .prologue
    .line 1031
    cmp-long v0, p4, p0

    if-ltz v0, :cond_8

    cmp-long v0, p4, p2

    if-lez v0, :cond_2c

    .line 1032
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value %s is not in the specified inclusive range of %s to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_2c
    return-void
.end method

.method public static inclusiveBetween(JJJLjava/lang/String;)V
    .registers 9
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "value"    # J
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 1054
    cmp-long v0, p4, p0

    if-ltz v0, :cond_8

    cmp-long v0, p4, p2

    if-lez v0, :cond_e

    .line 1055
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_e
    return-void
.end method

.method public static inclusiveBetween(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Comparable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p0, "start":Ljava/lang/Object;, "TT;"
    .local p1, "end":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_c

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_24

    .line 986
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value %s is not in the specified inclusive range of %s to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_24
    return-void
.end method

.method public static varargs inclusiveBetween(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Comparable",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, "start":Ljava/lang/Object;, "TT;"
    .local p1, "end":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_c

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_16

    .line 1011
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_16
    return-void
.end method

.method public static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1313
    .local p0, "superType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot assign a %s to a %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_23

    const-string v0, "null"

    :goto_12
    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 1315
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1314
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 1317
    :cond_28
    return-void
.end method

.method public static varargs isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p0, "superType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1341
    :cond_10
    return-void
.end method

.method public static isInstanceOf(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1262
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected type: %s, actual: %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p1, :cond_23

    const-string v0, "null"

    .line 1264
    :goto_19
    aput-object v0, v3, v4

    .line 1263
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1264
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1266
    :cond_2c
    return-void
.end method

.method public static varargs isInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1287
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1290
    :cond_10
    return-void
.end method

.method public static isTrue(Z)V
    .registers 3
    .param p0, "expression"    # Z

    .prologue
    .line 182
    if-nez p0, :cond_a

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The validated expression is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_a
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;D)V
    .registers 8
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 133
    if-nez p0, :cond_16

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_16
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;J)V
    .registers 8
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 108
    if-nez p0, :cond_16

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_16
    return-void
.end method

.method public static varargs isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 157
    if-nez p0, :cond_c

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_c
    return-void
.end method

.method public static matchesPattern(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 6
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The string %s does not match the pattern %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_1b
    return-void
.end method

.method public static varargs matchesPattern(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 877
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_10
    return-void
.end method

.method public static noNullElements(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable",
            "<*>;>(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "iterable":Ljava/lang/Iterable;, "TT;"
    const-string v0, "The validated collection contains null element at index: %d"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->noNullElements(Ljava/lang/Iterable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs noNullElements(Ljava/lang/Iterable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable",
            "<*>;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "iterable":Ljava/lang/Iterable;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 575
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 576
    .local v2, "values2":[Ljava/lang/Object;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 573
    .end local v2    # "values2":[Ljava/lang/Object;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 579
    :cond_2f
    return-object p0
.end method

.method public static noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const-string v0, "The validated array contains null element at index: %d"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs noNullElements([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_20

    .line 511
    aget-object v2, p0, v0

    if-nez v2, :cond_1d

    .line 512
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/apache/commons/lang3/ArrayUtils;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 513
    .local v1, "values2":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    .end local v1    # "values2":[Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 516
    :cond_20
    return-object p0
.end method

.method public static notBlank(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "chars":Ljava/lang/CharSequence;, "TT;"
    const-string v0, "The validated character sequence is blank"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "chars":Ljava/lang/CharSequence;, "TT;"
    if-nez p0, :cond_c

    .line 451
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_c
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1c
    return-object p0
.end method

.method public static notEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "chars":Ljava/lang/CharSequence;, "TT;"
    const-string v0, "The validated character sequence is empty"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "chars":Ljava/lang/CharSequence;, "TT;"
    if-nez p0, :cond_c

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_1c
    return-object p0
.end method

.method public static notEmpty(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<*>;>(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "collection":Ljava/util/Collection;, "TT;"
    const-string v0, "The validated collection is empty"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<*>;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "collection":Ljava/util/Collection;, "TT;"
    if-nez p0, :cond_c

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1c
    return-object p0
.end method

.method public static notEmpty(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map",
            "<**>;>(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "map":Ljava/util/Map;, "TT;"
    const-string v0, "The validated map is empty"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notEmpty(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Map;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map",
            "<**>;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "map":Ljava/util/Map;, "TT;"
    if-nez p0, :cond_c

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1c
    return-object p0
.end method

.method public static notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const-string v0, "The validated array is empty"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_c

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_c
    array-length v0, p0

    if-nez v0, :cond_19

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_19
    return-object p0
.end method

.method public static notNaN(D)V
    .registers 4
    .param p0, "value"    # D

    .prologue
    .line 901
    const-string v0, "The validated value is not a number"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNaN(DLjava/lang/String;[Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method public static varargs notNaN(DLjava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "value"    # D
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 919
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 920
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_10
    return-void
.end method

.method public static notNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "object":Ljava/lang/Object;, "TT;"
    const-string v0, "The validated object is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_c

    .line 225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_c
    return-object p0
.end method

.method public static validIndex(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "chars":Ljava/lang/CharSequence;, "TT;"
    const-string v0, "The validated character sequence index is invalid: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->validIndex(Ljava/lang/CharSequence;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static varargs validIndex(Ljava/lang/CharSequence;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "index"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "chars":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    if-ltz p1, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_15

    .line 750
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_15
    return-object p0
.end method

.method public static validIndex(Ljava/util/Collection;I)Ljava/util/Collection;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<*>;>(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "collection":Ljava/util/Collection;, "TT;"
    const-string v0, "The validated collection index is invalid: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->validIndex(Ljava/util/Collection;ILjava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs validIndex(Ljava/util/Collection;ILjava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 6
    .param p1, "index"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<*>;>(TT;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "collection":Ljava/util/Collection;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    if-ltz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lt p1, v0, :cond_15

    .line 693
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_15
    return-object p0
.end method

.method public static validIndex([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const-string v0, "The validated array index is invalid: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->validIndex([Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs validIndex([Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    if-ltz p1, :cond_8

    array-length v0, p0

    if-lt p1, v0, :cond_12

    .line 634
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_12
    return-object p0
.end method

.method public static validState(Z)V
    .registers 3
    .param p0, "expression"    # Z

    .prologue
    .line 806
    if-nez p0, :cond_a

    .line 807
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The validated state is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_a
    return-void
.end method

.method public static varargs validState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 828
    if-nez p0, :cond_c

    .line 829
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_c
    return-void
.end method
