.class final Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharSetMatcher"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>([C)V
    .registers 3
    .param p1, "chars"    # [C

    .prologue
    .line 288
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    .line 289
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;->chars:[C

    .line 290
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;->chars:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 291
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 7
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;->chars:[C

    aget-char v1, p1, p2

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
