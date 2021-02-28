.class public Lcopy/google/json/stream/JsonWriter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    move v0, v1

    :goto_8
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_22

    sget-object v2, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcopy/google/json/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcopy/google/json/stream/JsonWriter;->stack:[I

    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonWriter;->push(I)V

    const-string v0, ":"

    iput-object v0, p0, Lcopy/google/json/stream/JsonWriter;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcopy/google/json/stream/JsonWriter;->serializeNulls:Z

    if-nez p1, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    return-void
.end method

.method private beforeName()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_e
    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->newline()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonWriter;->replaceTop(I)V

    return-void

    :cond_16
    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    iget-boolean v0, p0, Lcopy/google/json/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :pswitch_1b
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonWriter;->replaceTop(I)V

    :goto_1f
    return-void

    :pswitch_20
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonWriter;->replaceTop(I)V

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->newline()V

    goto :goto_1f

    :pswitch_28
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->newline()V

    goto :goto_1f

    :pswitch_33
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcopy/google/json/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonWriter;->replaceTop(I)V

    goto :goto_1f

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_20
        :pswitch_28
        :pswitch_7
        :pswitch_33
        :pswitch_7
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method private close(IIC)Lcopy/google/json/stream/JsonWriter;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->peek()I

    move-result v0

    if-eq v0, p2, :cond_10

    if-eq v0, p1, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v1, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v1, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dangling name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    iget v1, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    if-ne v0, p2, :cond_3a

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->newline()V

    :cond_3a
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(I)V

    return-object p0
.end method

.method private newline()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    const/4 v0, 0x1

    iget v1, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    :goto_f
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcopy/google/json/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private open(IC)Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    invoke-direct {p0, p1}, Lcopy/google/json/stream/JsonWriter;->push(I)V

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(I)V

    return-object p0
.end method

.method private peek()I
    .registers 3

    iget v0, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private push(I)V
    .registers 5

    iget v0, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    iget-object v1, p0, Lcopy/google/json/stream/JsonWriter;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcopy/google/json/stream/JsonWriter;->stack:[I

    :cond_13
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    aput p1, v0, v1

    return-void
.end method

.method private replaceTop(I)V
    .registers 4

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private string(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x22

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcopy/google/json/stream/JsonWriter;->htmlSafe:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcopy/google/json/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    :goto_9
    iget-object v2, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v7}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    :goto_13
    if-ge v3, v4, :cond_46

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x80

    if-ge v2, v5, :cond_28

    aget-object v2, v0, v2

    if-nez v2, :cond_2e

    :cond_21
    :goto_21
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_13

    :cond_25
    sget-object v0, Lcopy/google/json/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_9

    :cond_28
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_3f

    const-string v2, "\\u2028"

    :cond_2e
    :goto_2e
    if-ge v1, v3, :cond_37

    iget-object v5, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_37
    iget-object v1, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_21

    :cond_3f
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_21

    const-string v2, "\\u2029"

    goto :goto_2e

    :cond_46
    if-ge v1, v4, :cond_4f

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_4f
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v7}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private writeDeferredName()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeName()V

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcopy/google/json/stream/JsonWriter;->string(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    :cond_f
    return-void
.end method


# virtual methods
.method public beginArray()Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x1

    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lcopy/google/json/stream/JsonWriter;->open(IC)Lcopy/google/json/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x3

    const/16 v1, 0x7b

    invoke-direct {p0, v0, v1}, Lcopy/google/json/stream/JsonWriter;->open(IC)Lcopy/google/json/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    if-gt v0, v1, :cond_15

    if-ne v0, v1, :cond_1d

    iget-object v1, p0, Lcopy/google/json/stream/JsonWriter;->stack:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1d

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    return-void
.end method

.method public endArray()Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x5d

    invoke-direct {p0, v0, v1, v2}, Lcopy/google/json/stream/JsonWriter;->close(IIC)Lcopy/google/json/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x7d

    invoke-direct {p0, v0, v1, v2}, Lcopy/google/json/stream/JsonWriter;->close(IIC)Lcopy/google/json/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final getSerializeNulls()Z
    .registers 2

    iget-boolean v0, p0, Lcopy/google/json/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .registers 2

    iget-boolean v0, p0, Lcopy/google/json/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lcopy/google/json/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public jsonValue(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6
.end method

.method public name(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_14
    iget v0, p0, Lcopy/google/json/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-object p1, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    return-object p0
.end method

.method public nullValue()Lcopy/google/json/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcopy/google/json/stream/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    :cond_b
    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_15
    return-object p0

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/stream/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_15
.end method

.method public final setHtmlSafe(Z)V
    .registers 2

    iput-boolean p1, p0, Lcopy/google/json/stream/JsonWriter;->htmlSafe:Z

    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lcopy/google/json/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string v0, ":"

    iput-object v0, p0, Lcopy/google/json/stream/JsonWriter;->separator:Ljava/lang/String;

    :goto_d
    return-void

    :cond_e
    iput-object p1, p0, Lcopy/google/json/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string v0, ": "

    iput-object v0, p0, Lcopy/google/json/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_d
.end method

.method public final setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lcopy/google/json/stream/JsonWriter;->lenient:Z

    return-void
.end method

.method public final setSerializeNulls(Z)V
    .registers 2

    iput-boolean p1, p0, Lcopy/google/json/stream/JsonWriter;->serializeNulls:Z

    return-void
.end method

.method public value(D)Lcopy/google/json/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    iget-boolean v0, p0, Lcopy/google/json/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_2c

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public value(J)Lcopy/google/json/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "true"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_1b
    const-string v0, "false"

    goto :goto_17
.end method

.method public value(Ljava/lang/Number;)Lcopy/google/json/stream/JsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcopy/google/json/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_43

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6
.end method

.method public value(Ljava/lang/String;)Lcopy/google/json/stream/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcopy/google/json/stream/JsonWriter;->nullValue()Lcopy/google/json/stream/JsonWriter;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_7
    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    invoke-direct {p0, p1}, Lcopy/google/json/stream/JsonWriter;->string(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public value(Z)Lcopy/google/json/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcopy/google/json/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lcopy/google/json/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_10

    const-string v0, "true"

    :goto_c
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_10
    const-string v0, "false"

    goto :goto_c
.end method
