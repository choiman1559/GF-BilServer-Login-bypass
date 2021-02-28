.class final Lorg/apache/commons/lang3/time/FastDateParser$6;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "field"    # I

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 4
    .param p1, "parser"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p2, "iValue"    # I

    .prologue
    .line 991
    const/16 v0, 0xc

    if-ne p2, v0, :cond_5

    const/4 p2, 0x0

    .end local p2    # "iValue":I
    :cond_5
    return p2
.end method
