.class Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;
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
    name = "DayInWeekField"
.end annotation


# instance fields
.field private final mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V
    .registers 2
    .param p1, "rule"    # Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    .prologue
    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    .line 1259
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
    .line 1274
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1275
    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    .line 1268
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1269
    .local v0, "value":I
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    :goto_a
    invoke-interface {v2, p1, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1270
    return-void

    .line 1269
    :cond_e
    add-int/lit8 v1, v0, -0x1

    goto :goto_a
.end method

.method public estimateLength()I
    .registers 2

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
