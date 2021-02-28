.class public Lorg/apache/commons/lang3/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final CAUSE_METHOD_NAMES:[Ljava/lang/String;

.field static final WRAPPED_MARKER:Ljava/lang/String; = " [wrapped] "


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getCause"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "getNextException"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "getTargetException"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "getException"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "getSourceException"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "getRootCause"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "getCausedByException"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "getNested"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "getLinkedException"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "getNestedException"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "getLinkedCause"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "getThrowable"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodNames"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 142
    if-nez p0, :cond_5

    move-object v0, v3

    .line 164
    :cond_4
    :goto_4
    return-object v0

    .line 146
    :cond_5
    if-nez p1, :cond_f

    .line 147
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 148
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_4

    .line 152
    sget-object p1, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 155
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_f
    array-length v5, p1

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v5, :cond_22

    aget-object v2, p1, v4

    .line 156
    .local v2, "methodName":Ljava/lang/String;
    if-eqz v2, :cond_1f

    .line 157
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 158
    .local v1, "legacyCause":Ljava/lang/Throwable;
    if-eqz v1, :cond_1f

    move-object v0, v1

    .line 159
    goto :goto_4

    .line 155
    .end local v1    # "legacyCause":Ljava/lang/Throwable;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .end local v2    # "methodName":Ljava/lang/String;
    :cond_22
    move-object v0, v3

    .line 164
    goto :goto_4
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_b} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_2d

    move-result-object v0

    .line 205
    :goto_c
    if-eqz v0, :cond_25

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 207
    const/4 v1, 0x0

    :try_start_1b
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_23} :catch_29

    .line 212
    :goto_23
    return-object v1

    .line 208
    :catch_24
    move-exception v1

    .line 212
    :cond_25
    :goto_25
    const/4 v1, 0x0

    goto :goto_23

    .line 208
    :catch_27
    move-exception v1

    goto :goto_25

    :catch_29
    move-exception v1

    goto :goto_25

    .line 201
    :catch_2b
    move-exception v1

    goto :goto_c

    :catch_2d
    move-exception v1

    goto :goto_c
.end method

.method public static getDefaultCauseMethodNames()[Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lorg/apache/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 665
    if-nez p0, :cond_5

    .line 666
    const-string v2, ""

    .line 670
    :goto_4
    return-object v2

    .line 668
    :cond_5
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "clsName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 185
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public static getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 685
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 686
    .local v0, "root":Ljava/lang/Throwable;
    if-nez v0, :cond_7

    move-object v0, p0

    .line 687
    :cond_7
    invoke-static {v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 9
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 512
    if-nez p0, :cond_5

    .line 513
    sget-object v6, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 532
    :goto_4
    return-object v6

    .line 515
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v4

    .line 516
    .local v4, "throwables":[Ljava/lang/Throwable;
    array-length v0, v4

    .line 517
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v6, v0, -0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 519
    .local v3, "nextTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v2, v0

    .local v2, "i":I
    :goto_18
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_58

    .line 520
    move-object v5, v3

    .line 521
    .local v5, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2a

    .line 522
    add-int/lit8 v6, v2, -0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 523
    invoke-static {v5, v3}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 525
    :cond_2a
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_3b

    .line 526
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :goto_37
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_18

    .line 528
    :cond_3b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [wrapped] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 532
    .end local v5    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_4
.end method

.method static getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 9
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "stackTrace":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "linebreak":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .local v1, "frames":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 639
    .local v6, "traceStarted":Z
    :cond_13
    :goto_13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 640
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 642
    .local v5, "token":Ljava/lang/String;
    const-string v7, "at"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 643
    .local v0, "at":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3a

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 644
    const/4 v6, 0x1

    .line 645
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 646
    :cond_3a
    if-eqz v6, :cond_13

    .line 650
    .end local v0    # "at":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_3c
    return-object v3
.end method

.method static getStackFrames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "linebreak":Ljava/lang/String;
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .local v0, "frames":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 616
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 618
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 596
    if-nez p0, :cond_5

    .line 597
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 599
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 576
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 577
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 578
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 579
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getThrowableCount(Ljava/lang/Throwable;)I
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 233
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_5
    if-eqz p0, :cond_15

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 282
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_5

    .line 285
    :cond_15
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 256
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 257
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    return-object v1
.end method

.method public static hasCause(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .registers 3
    .param p0, "chain"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 807
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    instance-of v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;

    if-eqz v0, :cond_8

    .line 808
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 810
    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I
    .registers 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .param p3, "subclass"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;IZ)I"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, -0x1

    .line 386
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v0, v2

    .line 409
    :cond_6
    :goto_6
    return v0

    .line 389
    :cond_7
    if-gez p2, :cond_a

    .line 390
    const/4 p2, 0x0

    .line 392
    :cond_a
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v1

    .line 393
    .local v1, "throwables":[Ljava/lang/Throwable;
    array-length v3, v1

    if-lt p2, v3, :cond_13

    move v0, v2

    .line 394
    goto :goto_6

    .line 396
    :cond_13
    if-eqz p3, :cond_28

    .line 397
    move v0, p2

    .local v0, "i":I
    :goto_16
    array-length v3, v1

    if-ge v0, v3, :cond_3b

    .line 398
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 403
    .end local v0    # "i":I
    :cond_28
    move v0, p2

    .restart local v0    # "i":I
    :goto_29
    array-length v3, v1

    if-ge v0, v3, :cond_3b

    .line 404
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    move v0, v2

    .line 409
    goto :goto_6
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 304
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 432
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 433
    return-void
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .registers 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    const/4 v3, 0x0

    .line 455
    if-nez p0, :cond_4

    .line 464
    :goto_3
    return-void

    .line 458
    :cond_4
    if-eqz p1, :cond_1d

    const/4 v2, 0x1

    :goto_7
    const-string v4, "The PrintStream must not be null"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 459
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "trace":[Ljava/lang/String;
    array-length v2, v1

    :goto_13
    if-ge v3, v2, :cond_1f

    aget-object v0, v1, v3

    .line 461
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "trace":[Ljava/lang/String;
    :cond_1d
    move v2, v3

    .line 458
    goto :goto_7

    .line 463
    .restart local v1    # "trace":[Ljava/lang/String;
    :cond_1f
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    goto :goto_3
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v3, 0x0

    .line 486
    if-nez p0, :cond_4

    .line 495
    :goto_3
    return-void

    .line 489
    :cond_4
    if-eqz p1, :cond_1d

    const/4 v2, 0x1

    :goto_7
    const-string v4, "The PrintWriter must not be null"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 490
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "trace":[Ljava/lang/String;
    array-length v2, v1

    :goto_13
    if-ge v3, v2, :cond_1f

    aget-object v0, v1, v3

    .line 492
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "trace":[Ljava/lang/String;
    :cond_1d
    move v2, v3

    .line 489
    goto :goto_7

    .line 494
    .restart local v1    # "trace":[Ljava/lang/String;
    :cond_1f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_3
.end method

.method public static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "causeFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "wrapperFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 545
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The List must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 547
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 548
    .local v1, "causeFrameIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 549
    .local v3, "wrapperFrameIndex":I
    :goto_18
    if-ltz v1, :cond_36

    if-ltz v3, :cond_36

    .line 552
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 553
    .local v0, "causeFrame":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 554
    .local v2, "wrapperFrame":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 555
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 557
    :cond_31
    add-int/lit8 v1, v1, -0x1

    .line 558
    add-int/lit8 v3, v3, -0x1

    .line 559
    goto :goto_18

    .line 560
    .end local v0    # "causeFrame":Ljava/lang/String;
    .end local v2    # "wrapperFrame":Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 747
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->typeErasure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static typeErasure(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 758
    throw p0
.end method

.method public static wrapAndThrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 783
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_7

    .line 784
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    throw p0

    .line 786
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_7
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_e

    .line 787
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    throw p0

    .line 789
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_e
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
