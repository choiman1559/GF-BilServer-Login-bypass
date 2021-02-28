.class Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyQuotedStrategy"
.end annotation


# instance fields
.field private final formatField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "formatField"    # Ljava/lang/String;

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 660
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    .line 661
    return-void
.end method


# virtual methods
.method isNumber()Z
    .registers 2

    .prologue
    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 11
    .param p1, "parser"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "pos"    # Ljava/text/ParsePosition;
    .param p5, "maxWidth"    # I

    .prologue
    const/4 v2, 0x0

    .line 673
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 674
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int v1, v0, v3

    .line 675
    .local v1, "sIdx":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1a

    .line 676
    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 685
    .end local v1    # "sIdx":I
    :goto_19
    return v2

    .line 679
    .restart local v1    # "sIdx":I
    :cond_1a
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2a

    .line 680
    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_19

    .line 673
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 684
    .end local v1    # "sIdx":I
    :cond_2d
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 685
    const/4 v2, 0x1

    goto :goto_19
.end method
