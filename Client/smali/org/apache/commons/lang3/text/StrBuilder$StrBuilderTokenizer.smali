.class Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;
.super Lorg/apache/commons/lang3/text/StrTokenizer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lorg/apache/commons/lang3/text/StrBuilder;

    .prologue
    .line 2932
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2933
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    .line 2934
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2948
    invoke-super {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 2949
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 2950
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2952
    .end local v0    # "str":Ljava/lang/String;
    :cond_c
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .registers 7
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2939
    if-nez p1, :cond_12

    .line 2940
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v0, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v2}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    invoke-super {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 2942
    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    goto :goto_11
.end method