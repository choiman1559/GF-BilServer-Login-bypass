.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;


# static fields
.field static final COUNT:I = 0xa

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0xffff

.field static final ENABLE_PUSH:I = 0x2

.field static final HEADER_TABLE_SIZE:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final MAX_FRAME_SIZE:I = 0x5

.field static final MAX_HEADER_LIST_SIZE:I = 0x6


# instance fields
.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method get(I)I
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method getEnablePush(Z)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x4

    iget v3, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    iget-object v2, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    :goto_d
    if-ne v2, v0, :cond_16

    :goto_f
    return v0

    :cond_10
    if-eqz p1, :cond_14

    move v2, v0

    goto :goto_d

    :cond_14
    move v2, v1

    goto :goto_d

    :cond_16
    move v0, v1

    goto :goto_f
.end method

.method getHeaderTableSize()I
    .registers 3

    const/4 v0, 0x2

    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method getInitialWindowSize()I
    .registers 3

    const/16 v0, 0x80

    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    :goto_c
    return v0

    :cond_d
    const v0, 0xffff

    goto :goto_c
.end method

.method getMaxConcurrentStreams(I)I
    .registers 4

    const/16 v0, 0x10

    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getMaxFrameSize(I)I
    .registers 4

    const/16 v0, 0x20

    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getMaxHeaderListSize(I)I
    .registers 4

    const/16 v0, 0x40

    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x6

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method isSet(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method merge(Lokhttp3/internal/http2/Settings;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    goto :goto_b

    :cond_16
    return-void
.end method

.method set(II)Lokhttp3/internal/http2/Settings;
    .registers 5

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    :goto_5
    return-object p0

    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    or-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aput p2, v0, p1

    goto :goto_5
.end method

.method size()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
