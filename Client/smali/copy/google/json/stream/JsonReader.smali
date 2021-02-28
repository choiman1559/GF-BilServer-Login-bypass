.class public Lcopy/google/json/stream/JsonReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcopy/google/json/stream/JsonReader$1;

    invoke-direct {v0}, Lcopy/google/json/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcopy/google/json/internal/JsonReaderInternalAccess;->INSTANCE:Lcopy/google/json/internal/JsonReaderInternalAccess;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    const/16 v3, 0x20

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcopy/google/json/stream/JsonReader;->lenient:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathNames:[Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    if-nez p1, :cond_3b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iput-object p1, p0, Lcopy/google/json/stream/JsonReader;->in:Ljava/io/Reader;

    return-void
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcopy/google/json/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_b

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->nextNonWhitespace(Z)I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, 0x5

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1a

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    aget-char v2, v1, v0

    const/16 v3, 0x29

    if-ne v2, v3, :cond_19

    add-int/lit8 v2, v0, 0x1

    aget-char v2, v1, v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_19

    add-int/lit8 v2, v0, 0x2

    aget-char v2, v1, v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_19

    add-int/lit8 v2, v0, 0x3

    aget-char v2, v1, v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_19

    add-int/lit8 v0, v0, 0x4

    aget-char v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_19

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    goto :goto_19
.end method

.method private fillBuffer(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    if-eq v2, v3, :cond_5b

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1e
    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    :cond_20
    iget-object v2, p0, Lcopy/google/json/stream/JsonReader;->in:Ljava/io/Reader;

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    array-length v4, v1

    iget v5, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    if-nez v2, :cond_55

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    if-nez v2, :cond_55

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-lez v2, :cond_55

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_55

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    add-int/lit8 p1, p1, 0x1

    :cond_55
    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-lt v2, p1, :cond_20

    const/4 v0, 0x1

    :cond_5a
    return v0

    :cond_5b
    iput v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    goto :goto_1e
.end method

.method private isLiteral(C)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_a

    const/4 v0, 0x1

    :goto_4
    return v0

    :sswitch_5
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    :sswitch_8
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    :goto_6
    if-ne v1, v0, :cond_34

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_30

    if-eqz p1, :cond_bf

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    :cond_34
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_46

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    move v1, v2

    goto :goto_6

    :cond_46
    const/16 v4, 0x20

    if-eq v1, v4, :cond_c1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_c1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_54

    move v1, v2

    goto :goto_6

    :cond_54
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_a9

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    if-ne v2, v0, :cond_71

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    if-nez v0, :cond_71

    move v0, v1

    :goto_70
    return v0

    :cond_71
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    aget-char v0, v3, v0

    sparse-switch v0, :sswitch_data_c4

    move v0, v1

    goto :goto_70

    :sswitch_7d
    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_92
    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    goto/16 :goto_6

    :sswitch_9a
    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->skipToEndOfLine()V

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    goto/16 :goto_6

    :cond_a9
    const/16 v0, 0x23

    if-ne v1, v0, :cond_bb

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->skipToEndOfLine()V

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    goto/16 :goto_6

    :cond_bb
    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    move v0, v1

    goto :goto_70

    :cond_bf
    const/4 v0, -0x1

    goto :goto_70

    :cond_c1
    move v1, v2

    goto/16 :goto_6

    :sswitch_data_c4
    .sparse-switch
        0x2a -> :sswitch_7d
        0x2f -> :sswitch_9a
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x10

    iget-object v5, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    const/4 v0, 0x0

    :cond_5
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    move v4, v1

    :goto_a
    if-ge v4, v2, :cond_6b

    add-int/lit8 v3, v4, 0x1

    aget-char v4, v5, v4

    if-ne v4, p1, :cond_28

    iput v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    sub-int v2, v3, v1

    add-int/lit8 v2, v2, -0x1

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_28
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_59

    iput v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    sub-int v2, v3, v1

    add-int/lit8 v2, v2, -0x1

    if-nez v0, :cond_41

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v3, v0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_41
    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    move-object v3, v0

    move v0, v1

    move v8, v1

    move v1, v2

    move v2, v8

    :goto_54
    move v4, v2

    move v2, v1

    move v1, v0

    move-object v0, v3

    goto :goto_a

    :cond_59
    const/16 v6, 0xa

    if-ne v4, v6, :cond_65

    iget v4, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    iput v3, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    :cond_65
    move v8, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    goto :goto_54

    :cond_6b
    if-nez v0, :cond_7a

    sub-int v0, v4, v1

    mul-int/lit8 v2, v0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_7a
    sub-int v2, v4, v1

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v4, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_3
    iget v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_2b

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_6a

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :sswitch_17
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    :cond_1a
    :goto_1a
    :sswitch_1a
    if-nez v0, :cond_5b

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_25
    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    return-object v0

    :cond_2b
    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_39

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_3

    :cond_39
    if-nez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_46
    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_68

    move v1, v2

    goto :goto_1a

    :cond_5b
    iget-object v2, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_68
    move v1, v2

    goto :goto_3

    :sswitch_data_6a
    .sparse-switch
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0x20 -> :sswitch_1a
        0x23 -> :sswitch_17
        0x2c -> :sswitch_1a
        0x2f -> :sswitch_17
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_17
        0x3d -> :sswitch_17
        0x5b -> :sswitch_1a
        0x5c -> :sswitch_17
        0x5d -> :sswitch_1a
        0x7b -> :sswitch_1a
        0x7d -> :sswitch_1a
    .end sparse-switch
.end method

.method private peekKeyword()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2c

    :cond_f
    const-string v2, "true"

    const-string v1, "TRUE"

    const/4 v0, 0x5

    :goto_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x1

    :goto_19
    if-ge v4, v5, :cond_62

    iget v6, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_4a

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_4a

    move v0, v3

    :goto_2b
    return v0

    :cond_2c
    const/16 v1, 0x66

    if-eq v0, v1, :cond_34

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3a

    :cond_34
    const-string v2, "false"

    const-string v1, "FALSE"

    const/4 v0, 0x6

    goto :goto_14

    :cond_3a
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_42

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_48

    :cond_42
    const-string v2, "null"

    const-string v1, "NULL"

    const/4 v0, 0x7

    goto :goto_14

    :cond_48
    move v0, v3

    goto :goto_2b

    :cond_4a
    iget-object v6, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    move v0, v3

    goto :goto_2b

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_62
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_71

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_71
    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcopy/google/json/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_80

    move v0, v3

    goto :goto_2b

    :cond_80
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto :goto_2b
.end method

.method private peekNumber()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v11, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    :goto_f
    add-int v2, v1, v10

    if-ne v2, v0, :cond_47

    array-length v0, v11

    if-ne v10, v0, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_43

    :cond_20
    const/4 v0, 0x2

    if-ne v3, v0, :cond_e7

    if-eqz v4, :cond_e7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_2d

    if-eqz v5, :cond_e7

    :cond_2d
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_35

    if-nez v5, :cond_e7

    :cond_35
    if-eqz v5, :cond_e4

    :goto_37
    iput-wide v6, p0, Lcopy/google/json/stream/JsonReader;->peekedLong:J

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v0, v10

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    const/16 v0, 0xf

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto :goto_17

    :cond_43
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    :cond_47
    add-int v2, v1, v10

    aget-char v2, v11, v2

    sparse-switch v2, :sswitch_data_100

    const/16 v8, 0x30

    if-lt v2, v8, :cond_56

    const/16 v8, 0x39

    if-le v2, v8, :cond_93

    :cond_56
    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    goto :goto_17

    :sswitch_5e
    if-nez v3, :cond_6c

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    :goto_65
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_f

    :cond_6c
    const/4 v2, 0x5

    if-ne v3, v2, :cond_73

    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    goto :goto_65

    :cond_73
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_75
    const/4 v2, 0x5

    if-ne v3, v2, :cond_7c

    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    goto :goto_65

    :cond_7c
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_7e
    const/4 v2, 0x2

    if-eq v3, v2, :cond_84

    const/4 v2, 0x4

    if-ne v3, v2, :cond_88

    :cond_84
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    goto :goto_65

    :cond_88
    const/4 v0, 0x0

    goto :goto_17

    :sswitch_8a
    const/4 v2, 0x2

    if-ne v3, v2, :cond_91

    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    goto :goto_65

    :cond_91
    const/4 v0, 0x0

    goto :goto_17

    :cond_93
    const/4 v8, 0x1

    if-eq v3, v8, :cond_98

    if-nez v3, :cond_a0

    :cond_98
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_65

    :cond_a0
    const/4 v8, 0x2

    if-ne v3, v8, :cond_d3

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_ac

    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_ac
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_c9

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_d1

    cmp-long v2, v8, v6

    if-gez v2, :cond_d1

    :cond_c9
    const/4 v2, 0x1

    :goto_ca
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_65

    :cond_d1
    const/4 v2, 0x0

    goto :goto_ca

    :cond_d3
    const/4 v2, 0x3

    if-ne v3, v2, :cond_da

    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_65

    :cond_da
    const/4 v2, 0x5

    if-eq v3, v2, :cond_e0

    const/4 v2, 0x6

    if-ne v3, v2, :cond_fb

    :cond_e0
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_65

    :cond_e4
    neg-long v6, v6

    goto/16 :goto_37

    :cond_e7
    const/4 v0, 0x2

    if-eq v3, v0, :cond_f0

    const/4 v0, 0x4

    if-eq v3, v0, :cond_f0

    const/4 v0, 0x7

    if-ne v3, v0, :cond_f8

    :cond_f0
    iput v10, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto/16 :goto_17

    :cond_f8
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_fb
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_65

    :sswitch_data_100
    .sparse-switch
        0x2b -> :sswitch_75
        0x2d -> :sswitch_5e
        0x2e -> :sswitch_8a
        0x45 -> :sswitch_7e
        0x65 -> :sswitch_7e
    .end sparse-switch
.end method

.method private push(I)V
    .registers 5

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathNames:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathNames:[Ljava/lang/String;

    :cond_25
    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    return-void
.end method

.method private readEscapeCharacter()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_c0

    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_29
    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_3e

    invoke-direct {p0, v5}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3e
    const/4 v1, 0x0

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_46
    if-ge v1, v2, :cond_9e

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_5e

    const/16 v4, 0x39

    if-gt v3, v4, :cond_5e

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_5e
    const/16 v4, 0x61

    if-lt v3, v4, :cond_6d

    const/16 v4, 0x66

    if-gt v3, v4, :cond_6d

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_5b

    :cond_6d
    const/16 v4, 0x41

    if-lt v3, v4, :cond_7c

    const/16 v4, 0x46

    if-gt v3, v4, :cond_7c

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_5b

    :cond_7c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    :goto_a4
    :sswitch_a4
    return v0

    :sswitch_a5
    const/16 v0, 0x9

    goto :goto_a4

    :sswitch_a8
    const/16 v0, 0x8

    goto :goto_a4

    :sswitch_ab
    const/16 v0, 0xa

    goto :goto_a4

    :sswitch_ae
    const/16 v0, 0xd

    goto :goto_a4

    :sswitch_b1
    const/16 v0, 0xc

    goto :goto_a4

    :sswitch_b4
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    goto :goto_a4

    nop

    :sswitch_data_c0
    .sparse-switch
        0xa -> :sswitch_b4
        0x22 -> :sswitch_a4
        0x27 -> :sswitch_a4
        0x2f -> :sswitch_a4
        0x5c -> :sswitch_a4
        0x62 -> :sswitch_a8
        0x66 -> :sswitch_b1
        0x6e -> :sswitch_ab
        0x72 -> :sswitch_ae
        0x74 -> :sswitch_a5
        0x75 -> :sswitch_29
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    :cond_2
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_2e

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    if-ne v2, p1, :cond_12

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    return-void

    :cond_12
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_21

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->readEscapeCharacter()C

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    :cond_1f
    :goto_1f
    move v2, v1

    goto :goto_7

    :cond_21
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1f

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    goto :goto_1f

    :cond_2e
    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_5
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-le v1, v3, :cond_12

    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_12
    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    aget-char v1, v1, v3

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2f

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    :cond_28
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    goto :goto_5

    :cond_2f
    move v1, v0

    :goto_30
    if-ge v1, v2, :cond_42

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_42
    const/4 v0, 0x1

    :cond_43
    return v0
.end method

.method private skipToEndOfLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_d
    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_25
.end method

.method private skipUnquotedValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    :sswitch_18
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    :goto_1d
    return-void

    :cond_1e
    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1d

    nop

    :sswitch_data_2c
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcopy/google/json/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcopy/google/json/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->push(I)V

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->push(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method doPeek()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v4, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iget v5, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-ne v4, v2, :cond_2b

    iget-object v5, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iget v6, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    :cond_17
    :goto_17
    :pswitch_17
    :sswitch_17
    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_172

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->peekKeyword()I

    move-result v0

    if-eqz v0, :cond_14f

    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    if-ne v4, v1, :cond_42

    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_190

    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_3b
    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto :goto_2a

    :sswitch_3e
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    goto :goto_17

    :cond_42
    const/4 v5, 0x3

    if-eq v4, v5, :cond_47

    if-ne v4, v7, :cond_a3

    :cond_47
    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iget v5, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    if-ne v4, v7, :cond_66

    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_19e

    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_5f
    iput v1, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    move v0, v1

    goto :goto_2a

    :sswitch_63
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    :cond_66
    :sswitch_66
    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1ac

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_9c

    const/16 v0, 0xe

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto :goto_2a

    :sswitch_82
    const/16 v0, 0xd

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto :goto_2a

    :sswitch_87
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xc

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto :goto_2a

    :sswitch_8f
    if-eq v4, v7, :cond_95

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    move v0, v1

    goto :goto_2a

    :cond_95
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9c
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a3
    if-ne v4, v0, :cond_dc

    iget-object v5, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iget v6, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    packed-switch v5, :pswitch_data_1ba

    :pswitch_b4
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_bb
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    iget v5, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v6, p0, Lcopy/google/json/stream/JsonReader;->limit:I

    if-lt v5, v6, :cond_ca

    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_ca
    iget-object v5, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_17

    iget v5, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    goto/16 :goto_17

    :cond_dc
    const/4 v5, 0x6

    if-ne v4, v5, :cond_f0

    iget-boolean v5, p0, Lcopy/google/json/stream/JsonReader;->lenient:Z

    if-eqz v5, :cond_e6

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->consumeNonExecutePrefix()V

    :cond_e6
    iget-object v5, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    iget v6, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_17

    :cond_f0
    if-ne v4, v3, :cond_10b

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcopy/google/json/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_100

    const/16 v0, 0x11

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    :cond_100
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    iget v5, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    goto/16 :goto_17

    :cond_10b
    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_117
    if-ne v4, v2, :cond_11d

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    :cond_11d
    :sswitch_11d
    if-eq v4, v2, :cond_121

    if-ne v4, v1, :cond_12f

    :cond_121
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iput v3, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    move v0, v3

    goto/16 :goto_2a

    :cond_12f
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_136
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    const/16 v0, 0x8

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    :sswitch_13f
    const/16 v0, 0x9

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    :sswitch_145
    const/4 v0, 0x3

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    :sswitch_14a
    iput v2, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    move v0, v2

    goto/16 :goto_2a

    :cond_14f
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->peekNumber()I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-nez v0, :cond_168

    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_168
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xa

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    nop

    :sswitch_data_172
    .sparse-switch
        0x22 -> :sswitch_13f
        0x27 -> :sswitch_136
        0x2c -> :sswitch_11d
        0x3b -> :sswitch_11d
        0x5b -> :sswitch_145
        0x5d -> :sswitch_117
        0x7b -> :sswitch_14a
    .end sparse-switch

    :sswitch_data_190
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_3e
        0x5d -> :sswitch_3b
    .end sparse-switch

    :sswitch_data_19e
    .sparse-switch
        0x2c -> :sswitch_66
        0x3b -> :sswitch_63
        0x7d -> :sswitch_5f
    .end sparse-switch

    :sswitch_data_1ac
    .sparse-switch
        0x22 -> :sswitch_82
        0x27 -> :sswitch_87
        0x7d -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_1ba
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_b4
        :pswitch_b4
        :pswitch_bb
    .end packed-switch
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    :goto_e
    if-ge v0, v2, :cond_41

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_46

    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :pswitch_1a
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :pswitch_2e
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcopy/google/json/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lcopy/google/json/stream/JsonReader;->lenient:Z

    return v0
.end method

.method locationString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->lineStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " column "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v1

    :cond_9
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2e

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1b

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_23

    iput v4, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcopy/google/json/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    :goto_22
    return-wide v0

    :cond_23
    const/16 v1, 0x10

    if-ne v0, v1, :cond_74

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    :cond_3b
    :goto_3b
    iput v5, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v2, p0, Lcopy/google/json/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_ba

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_ba

    :cond_53
    new-instance v2, Lcopy/google/json/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcopy/google/json/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_74
    if-eq v0, v2, :cond_7a

    const/16 v1, 0x9

    if-ne v0, v1, :cond_88

    :cond_7a
    if-ne v0, v2, :cond_85

    const/16 v0, 0x27

    :goto_7e
    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3b

    :cond_85
    const/16 v0, 0x22

    goto :goto_7e

    :cond_88
    const/16 v1, 0xa

    if-ne v0, v1, :cond_93

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3b

    :cond_93
    if-eq v0, v5, :cond_3b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    const/4 v2, 0x0

    iput-object v2, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v4, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_22
.end method

.method public nextInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4d

    iget-wide v0, p0, Lcopy/google/json/stream/JsonReader;->peekedLong:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcopy/google/json/stream/JsonReader;->peekedLong:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3e

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcopy/google/json/stream/JsonReader;->peekedLong:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iput v6, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_4c
    return v0

    :cond_4d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_98

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    :goto_65
    const/16 v0, 0xb

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_f3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    if-eq v0, v2, :cond_a0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a0

    if-ne v0, v3, :cond_ce

    :cond_a0
    if-ne v0, v3, :cond_c0

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_a8
    :try_start_a8
    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_bd} :catch_be

    goto :goto_4c

    :catch_be
    move-exception v0

    goto :goto_65

    :cond_c0
    if-ne v0, v2, :cond_cb

    const/16 v0, 0x27

    :goto_c4
    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_a8

    :cond_cb
    const/16 v0, 0x22

    goto :goto_c4

    :cond_ce
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f3
    const/4 v1, 0x0

    iput-object v1, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v6, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_4c
.end method

.method public nextLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_22

    iput v6, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcopy/google/json/stream/JsonReader;->peekedLong:J

    :goto_21
    return-wide v0

    :cond_22
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6d

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    :goto_3a
    const/16 v0, 0xb

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_c8

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    if-eq v0, v2, :cond_75

    const/16 v1, 0x9

    if-eq v0, v1, :cond_75

    if-ne v0, v3, :cond_a3

    :cond_75
    if-ne v0, v3, :cond_95

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_7d
    :try_start_7d
    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_92} :catch_93

    goto :goto_21

    :catch_93
    move-exception v0

    goto :goto_3a

    :cond_95
    if-ne v0, v2, :cond_a0

    const/16 v0, 0x27

    :goto_99
    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_7d

    :cond_a0
    const/16 v0, 0x22

    goto :goto_99

    :cond_a3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c8
    const/4 v2, 0x0

    iput-object v2, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v6, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_21
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_27
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_20
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2b
    const/16 v1, 0x9

    if-ne v0, v1, :cond_36

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_36
    const/16 v1, 0xb

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcopy/google/json/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_10

    :cond_40
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4b

    iget-wide v0, p0, Lcopy/google/json/stream/JsonReader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_4b
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcopy/google/json/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    goto :goto_10

    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->peek()Lcopy/google/json/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lcopy/google/json/stream/JsonToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_11
    sget-object v0, Lcopy/google/json/stream/JsonToken;->BEGIN_OBJECT:Lcopy/google/json/stream/JsonToken;

    :goto_13
    return-object v0

    :pswitch_14
    sget-object v0, Lcopy/google/json/stream/JsonToken;->END_OBJECT:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    :pswitch_17
    sget-object v0, Lcopy/google/json/stream/JsonToken;->BEGIN_ARRAY:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    :pswitch_1a
    sget-object v0, Lcopy/google/json/stream/JsonToken;->END_ARRAY:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    :pswitch_1d
    sget-object v0, Lcopy/google/json/stream/JsonToken;->NAME:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    :pswitch_20
    sget-object v0, Lcopy/google/json/stream/JsonToken;->BOOLEAN:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    :pswitch_23
    sget-object v0, Lcopy/google/json/stream/JsonToken;->NULL:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    :pswitch_26
    sget-object v0, Lcopy/google/json/stream/JsonToken;->STRING:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    :pswitch_29
    sget-object v0, Lcopy/google/json/stream/JsonToken;->NUMBER:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    :pswitch_2c
    sget-object v0, Lcopy/google/json/stream/JsonToken;->END_DOCUMENT:Lcopy/google/json/stream/JsonToken;

    goto :goto_13

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_29
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lcopy/google/json/stream/JsonReader;->lenient:Z

    return-void
.end method

.method public skipValue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_4
    iget v2, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->doPeek()I

    move-result v2

    :cond_c
    if-ne v2, v5, :cond_2e

    invoke-direct {p0, v4}, Lcopy/google/json/stream/JsonReader;->push(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_13
    :goto_13
    iput v1, p0, Lcopy/google/json/stream/JsonReader;->peeked:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcopy/google/json/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    :cond_2e
    if-ne v2, v4, :cond_36

    invoke-direct {p0, v5}, Lcopy/google/json/stream/JsonReader;->push(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_36
    const/4 v3, 0x4

    if-ne v2, v3, :cond_42

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_42
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_4e
    const/16 v3, 0xe

    if-eq v2, v3, :cond_56

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5a

    :cond_56
    invoke-direct {p0}, Lcopy/google/json/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_13

    :cond_5a
    const/16 v3, 0x8

    if-eq v2, v3, :cond_62

    const/16 v3, 0xc

    if-ne v2, v3, :cond_68

    :cond_62
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_13

    :cond_68
    const/16 v3, 0x9

    if-eq v2, v3, :cond_70

    const/16 v3, 0xd

    if-ne v2, v3, :cond_76

    :cond_70
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcopy/google/json/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_13

    :cond_76
    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    iget v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    iget v3, p0, Lcopy/google/json/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcopy/google/json/stream/JsonReader;->pos:I

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
