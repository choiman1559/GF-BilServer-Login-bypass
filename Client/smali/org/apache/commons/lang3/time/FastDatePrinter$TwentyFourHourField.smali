.class Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwentyFourHourField"
.end annotation


# instance fields
.field private final mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V
    .registers 2
    .param p1, "rule"    # Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    .prologue
    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    .line 1220
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;I)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1247
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1248
    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 1235
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1236
    .local v0, "value":I
    if-nez v0, :cond_e

    .line 1237
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1239
    :cond_e
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1240
    return-void
.end method

.method public estimateLength()I
    .registers 2

    .prologue
    .line 1227
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
