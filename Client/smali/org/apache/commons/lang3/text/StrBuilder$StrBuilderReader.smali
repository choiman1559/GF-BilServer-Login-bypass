.class Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;
.super Ljava/io/Reader;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderReader"
.end annotation


# instance fields
.field private mark:I

.field private pos:I

.field final synthetic this$0:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lorg/apache/commons/lang3/text/StrBuilder;

    .prologue
    .line 2969
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2970
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2971
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 2977
    return-void
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    .prologue
    .line 3037
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->mark:I

    .line 3038
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 3031
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    .line 2982
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->ready()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2983
    const/4 v0, -0x1

    .line 2985
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->charAt(I)C

    move-result v0

    goto :goto_7
.end method

.method public read([CII)I
    .registers 7
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 2991
    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    array-length v0, p1

    if-gt p2, v0, :cond_10

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_10

    add-int v0, p2, p3

    if-gez v0, :cond_16

    .line 2993
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2995
    :cond_16
    if-nez p3, :cond_1a

    .line 2996
    const/4 v0, 0x0

    .line 3006
    :goto_19
    return v0

    .line 2998
    :cond_1a
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v1

    if-lt v0, v1, :cond_26

    .line 2999
    const/4 v0, -0x1

    goto :goto_19

    .line 3001
    :cond_26
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v1

    if-le v0, v1, :cond_3b

    .line 3002
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    sub-int p3, v0, v1

    .line 3004
    :cond_3b
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v2, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->getChars(II[CI)V

    .line 3005
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    move v0, p3

    .line 3006
    goto :goto_19
.end method

.method public ready()Z
    .registers 3

    .prologue
    .line 3025
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 3043
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->mark:I

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    .line 3044
    return-void
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 3012
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    .line 3013
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v2}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    sub-int/2addr v2, v3

    int-to-long p1, v2

    .line 3015
    :cond_1b
    cmp-long v2, p1, v0

    if-gez v2, :cond_21

    move-wide p1, v0

    .line 3019
    .end local p1    # "n":J
    :goto_20
    return-wide p1

    .line 3018
    .restart local p1    # "n":J
    :cond_21
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;->pos:I

    goto :goto_20
.end method
