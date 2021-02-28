.class public Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "NumericEntityEscaper.java"


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
    .line 57
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    .line 58
    return-void
.end method

.method private constructor <init>(IIZ)V
    .registers 4
    .param p1, "below"    # I
    .param p2, "above"    # I
    .param p3, "between"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    .line 48
    iput p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    .line 49
    iput p2, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    .line 50
    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between:Z

    .line 51
    return-void
.end method

.method public static above(I)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .registers 2
    .param p0, "codepoint"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .registers 2
    .param p0, "codepoint"    # I

    .prologue
    .line 67
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .registers 4
    .param p0, "codepointLow"    # I
    .param p1, "codepointHigh"    # I

    .prologue
    .line 88
    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .registers 4
    .param p0, "codepointLow"    # I
    .param p1, "codepointHigh"    # I

    .prologue
    .line 99
    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
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
    iget-boolean v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between:Z

    if-eqz v1, :cond_e

    .line 108
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v1, :cond_d

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    if-le p1, v1, :cond_16

    .line 120
    :cond_d
    :goto_d
    return v0

    .line 112
    :cond_e
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v1, :cond_16

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    if-le p1, v1, :cond_d

    .line 117
    :cond_16
    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 118
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 120
    const/4 v0, 0x1

    goto :goto_d
.end method
