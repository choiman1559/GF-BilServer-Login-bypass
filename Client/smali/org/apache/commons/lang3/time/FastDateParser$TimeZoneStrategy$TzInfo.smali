.class Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TzInfo"
.end annotation


# instance fields
.field dstOffset:I

.field zone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Z)V
    .registers 4
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "useDst"    # Z

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    .line 831
    if-eqz p2, :cond_e

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    :goto_b
    iput v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    .line 832
    return-void

    .line 831
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method
