.class abstract Lorg/apache/commons/lang3/time/FormatCache;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/text/Format;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NONE:I = -0x1

.field private static final cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 36
    .local p0, "this":Lorg/apache/commons/lang3/time/FormatCache;, "Lorg/apache/commons/lang3/time/FormatCache<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 7
    .param p1, "dateStyle"    # Ljava/lang/Integer;
    .param p2, "timeStyle"    # Ljava/lang/Integer;
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/commons/lang3/time/FormatCache;, "Lorg/apache/commons/lang3/time/FormatCache<TF;>;"
    if-nez p4, :cond_6

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    .line 124
    :cond_6
    invoke-static {p1, p2, p4}, Lorg/apache/commons/lang3/time/FormatCache;->getPatternForStyle(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/commons/lang3/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v1

    return-object v1
.end method

.method static getPatternForStyle(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)Ljava/lang/String;
    .registers 11
    .param p0, "dateStyle"    # Ljava/lang/Integer;
    .param p1, "timeStyle"    # Ljava/lang/Integer;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 191
    new-instance v2, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-direct {v2, v5}, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;-><init>([Ljava/lang/Object;)V

    .line 193
    .local v2, "key":Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;
    sget-object v5, Lorg/apache/commons/lang3/time/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    .local v3, "pattern":Ljava/lang/String;
    if-nez v3, :cond_36

    .line 197
    if-nez p0, :cond_37

    .line 198
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, p2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 204
    .local v1, "formatter":Ljava/text/DateFormat;
    :goto_25
    check-cast v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "formatter":Ljava/text/DateFormat;
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 205
    sget-object v5, Lorg/apache/commons/lang3/time/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 206
    .local v4, "previous":Ljava/lang/String;
    if-eqz v4, :cond_36

    .line 210
    move-object v3, v4

    .line 216
    .end local v4    # "previous":Ljava/lang/String;
    :cond_36
    return-object v3

    .line 199
    :cond_37
    if-nez p1, :cond_42

    .line 200
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .restart local v1    # "formatter":Ljava/text/DateFormat;
    goto :goto_25

    .line 202
    .end local v1    # "formatter":Ljava/text/DateFormat;
    :cond_42
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6, p2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_4d} :catch_4f

    move-result-object v1

    .restart local v1    # "formatter":Ljava/text/DateFormat;
    goto :goto_25

    .line 212
    .end local v1    # "formatter":Ljava/text/DateFormat;
    :catch_4f
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No date time pattern for locale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method protected abstract createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation
.end method

.method getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 6
    .param p1, "dateStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/commons/lang3/time/FormatCache;, "Lorg/apache/commons/lang3/time/FormatCache<TF;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 7
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/commons/lang3/time/FormatCache;, "Lorg/apache/commons/lang3/time/FormatCache<TF;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/text/Format;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/lang3/time/FormatCache;, "Lorg/apache/commons/lang3/time/FormatCache<TF;>;"
    const/4 v2, 0x3

    .line 56
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/lang3/time/FormatCache;, "Lorg/apache/commons/lang3/time/FormatCache<TF;>;"
    const/4 v5, 0x0

    .line 72
    const-string v3, "pattern must not be null"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    if-nez p2, :cond_e

    .line 74
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 76
    :cond_e
    if-nez p3, :cond_14

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 79
    :cond_14
    new-instance v1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;-><init>([Ljava/lang/Object;)V

    .line 80
    .local v1, "key":Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    .line 81
    .local v0, "format":Ljava/text/Format;, "TF;"
    if-nez v0, :cond_3d

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FormatCache;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    .line 83
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    .line 84
    .local v2, "previousValue":Ljava/text/Format;, "TF;"
    if-eqz v2, :cond_3d

    .line 87
    move-object v0, v2

    .line 90
    .end local v2    # "previousValue":Ljava/text/Format;, "TF;"
    :cond_3d
    return-object v0
.end method

.method getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 6
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/commons/lang3/time/FormatCache;, "Lorg/apache/commons/lang3/time/FormatCache<TF;>;"
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method
