.class public Lorg/apache/commons/lang3/text/translate/OctalUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "OctalUnescaper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method

.method private isOctalDigit(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 72
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x37

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isZeroToThree(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 81
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x33

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 11
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, p2

    add-int/lit8 v4, v5, -0x1

    .line 44
    .local v4, "remaining":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_75

    if-lez v4, :cond_75

    add-int/lit8 v5, p2, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->isOctalDigit(C)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 46
    add-int/lit8 v1, p2, 0x1

    .line 47
    .local v1, "next":I
    add-int/lit8 v2, p2, 0x2

    .line 48
    .local v2, "next2":I
    add-int/lit8 v3, p2, 0x3

    .line 51
    .local v3, "next3":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    const/4 v5, 0x1

    if-le v4, v5, :cond_61

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->isOctalDigit(C)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 54
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    const/4 v5, 0x2

    if-le v4, v5, :cond_61

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->isZeroToThree(C)Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->isOctalDigit(C)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 56
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/io/Writer;->write(I)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 63
    .end local v1    # "next":I
    .end local v2    # "next2":I
    .end local v3    # "next3":I
    :goto_74
    return v5

    :cond_75
    const/4 v5, 0x0

    goto :goto_74
.end method
