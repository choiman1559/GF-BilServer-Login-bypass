.class public abstract Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.super Ljava/lang/Object;
.source "CharSequenceTranslator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hex(I)Ljava/lang/String;
    .registers 3
    .param p0, "codepoint"    # I

    .prologue
    .line 136
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    if-nez p1, :cond_4

    .line 60
    const/4 v2, 0x0

    .line 65
    :goto_3
    return-object v2

    .line 63
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 64
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_3

    .line 66
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_17
    move-exception v0

    .line 68
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .registers 11
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p2, :cond_a

    .line 82
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The Writer must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 84
    :cond_a
    if-nez p1, :cond_d

    .line 112
    :cond_c
    return-void

    .line 87
    :cond_d
    const/4 v4, 0x0

    .line 88
    .local v4, "pos":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 89
    .local v3, "len":I
    :cond_12
    :goto_12
    if-ge v4, v3, :cond_c

    .line 90
    invoke-virtual {p0, p1, v4, p2}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v2

    .line 91
    .local v2, "consumed":I
    if-nez v2, :cond_3b

    .line 94
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 95
    .local v0, "c1":C
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 96
    add-int/lit8 v4, v4, 0x1

    .line 97
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_12

    if-ge v4, v3, :cond_12

    .line 98
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 99
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 100
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 108
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_3b
    const/4 v5, 0x0

    .local v5, "pt":I
    :goto_3c
    if-ge v5, v2, :cond_12

    .line 109
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c
.end method

.method public final varargs with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .registers 6
    .param p1, "translators"    # [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .prologue
    const/4 v3, 0x0

    .line 122
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 123
    .local v0, "newArray":[Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    aput-object p0, v0, v3

    .line 124
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    new-instance v1, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    return-object v1
.end method
