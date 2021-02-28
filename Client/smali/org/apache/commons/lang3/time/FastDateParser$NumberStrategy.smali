.class Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 742
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    .line 743
    return-void
.end method


# virtual methods
.method isNumber()Z
    .registers 2

    .prologue
    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 3
    .param p1, "parser"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p2, "iValue"    # I

    .prologue
    .line 800
    return p2
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 13
    .param p1, "parser"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "pos"    # Ljava/text/ParsePosition;
    .param p5, "maxWidth"    # I

    .prologue
    .line 755
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 756
    .local v2, "idx":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 758
    .local v3, "last":I
    if-nez p5, :cond_33

    .line 760
    :goto_a
    if-ge v2, v3, :cond_16

    .line 761
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 762
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_30

    .line 766
    .end local v0    # "c":C
    :cond_16
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 774
    :cond_19
    :goto_19
    if-ge v2, v3, :cond_25

    .line 775
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 776
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_39

    .line 781
    .end local v0    # "c":C
    :cond_25
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-ne v5, v2, :cond_3c

    .line 782
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 783
    const/4 v5, 0x0

    .line 790
    :goto_2f
    return v5

    .line 760
    .restart local v0    # "c":C
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 768
    .end local v0    # "c":C
    :cond_33
    add-int v1, v2, p5

    .line 769
    .local v1, "end":I
    if-le v3, v1, :cond_19

    .line 770
    move v3, v1

    goto :goto_19

    .line 774
    .end local v1    # "end":I
    .restart local v0    # "c":C
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 786
    .end local v0    # "c":C
    :cond_3c
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 787
    .local v4, "value":I
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 789
    iget v5, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 790
    const/4 v5, 0x1

    goto :goto_2f
.end method
