.class public Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "UnicodeEscaper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 41
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    .line 42
    return-void
.end method

.method protected constructor <init>(IIZ)V
    .registers 4
    .param p1, "below"    # I
    .param p2, "above"    # I
    .param p3, "between"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    .line 55
    iput p1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    .line 56
    iput p2, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    .line 57
    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    .line 58
    return-void
.end method

.method public static above(I)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 2
    .param p0, "codepoint"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 2
    .param p0, "codepoint"    # I

    .prologue
    .line 67
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 4
    .param p0, "codepointLow"    # I
    .param p1, "codepointHigh"    # I

    .prologue
    .line 99
    new-instance v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 4
    .param p0, "codepointLow"    # I
    .param p1, "codepointHigh"    # I

    .prologue
    .line 88
    new-instance v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method protected toUtf16Escape(I)Ljava/lang/String;
    .registers 4
    .param p1, "codepoint"    # I

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(ILjava/io/Writer;)Z
    .registers 5
    .param p1, "codepoint"    # I
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 107
    iget-boolean v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    if-eqz v1, :cond_e

    .line 108
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v1, :cond_d

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    if-le p1, v1, :cond_16

    .line 127
    :cond_d
    :goto_d
    return v0

    .line 112
    :cond_e
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v1, :cond_16

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    if-le p1, v1, :cond_d

    .line 118
    :cond_16
    const v0, 0xffff

    if-le p1, v0, :cond_24

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->toUtf16Escape(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 127
    :goto_22
    const/4 v0, 0x1

    goto :goto_d

    .line 121
    :cond_24
    const-string v0, "\\u"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->HEX_DIGITS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 123
    sget-object v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->HEX_DIGITS:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 124
    sget-object v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->HEX_DIGITS:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 125
    sget-object v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->HEX_DIGITS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_22
.end method
