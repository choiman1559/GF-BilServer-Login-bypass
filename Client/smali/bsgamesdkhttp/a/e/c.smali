.class final Lbsgamesdkhttp/a/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/a/e/c$a;,
        Lbsgamesdkhttp/a/e/c$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Lbsgamesdkhttp/a/e/k$a;

.field private final c:Lbsgamesdkio/e;

.field private final d:Lbsgamesdkhttp/a/e/c$b;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lbsgamesdkhttp/a/e/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/c;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lbsgamesdkio/e;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    iput-boolean p2, p0, Lbsgamesdkhttp/a/e/c;->e:Z

    new-instance v0, Lbsgamesdkhttp/a/e/c$b;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-direct {v0, v1}, Lbsgamesdkhttp/a/e/c$b;-><init>(Lbsgamesdkio/e;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/c;->d:Lbsgamesdkhttp/a/e/c$b;

    new-instance v0, Lbsgamesdkhttp/a/e/k$a;

    const/16 v1, 0x1000

    iget-object v2, p0, Lbsgamesdkhttp/a/e/c;->d:Lbsgamesdkhttp/a/e/c$b;

    invoke-direct {v0, v1, v2}, Lbsgamesdkhttp/a/e/k$a;-><init>(ILbsgamesdkio/p;)V

    iput-object v0, p0, Lbsgamesdkhttp/a/e/c;->b:Lbsgamesdkhttp/a/e/k$a;

    return-void
.end method

.method static a(IBS)I
    .registers 7

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    if-le p2, p0, :cond_20

    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method static a(Lbsgamesdkio/e;)I
    .registers 3

    invoke-interface {p0}, Lbsgamesdkio/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lbsgamesdkio/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lbsgamesdkio/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private a(ISBI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->d:Lbsgamesdkhttp/a/e/c$b;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/c;->d:Lbsgamesdkhttp/a/e/c$b;

    iput p1, v1, Lbsgamesdkhttp/a/e/c$b;->d:I

    iput p1, v0, Lbsgamesdkhttp/a/e/c$b;->a:I

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->d:Lbsgamesdkhttp/a/e/c$b;

    iput-short p2, v0, Lbsgamesdkhttp/a/e/c$b;->e:S

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->d:Lbsgamesdkhttp/a/e/c$b;

    iput-byte p3, v0, Lbsgamesdkhttp/a/e/c$b;->b:B

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->d:Lbsgamesdkhttp/a/e/c$b;

    iput p4, v0, Lbsgamesdkhttp/a/e/c$b;->c:I

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->b:Lbsgamesdkhttp/a/e/k$a;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/k$a;->a()V

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->b:Lbsgamesdkhttp/a/e/k$a;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/k$a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lbsgamesdkhttp/a/e/c$a;I)V
    .registers 6

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->i()I

    move-result v1

    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_c
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v2}, Lbsgamesdkio/e;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, p2, v1, v2, v0}, Lbsgamesdkhttp/a/e/c$a;->a(IIIZ)V

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 8

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    :goto_11
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1e

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1e
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_27

    invoke-direct {p0, p1, p4}, Lbsgamesdkhttp/a/e/c;->a(Lbsgamesdkhttp/a/e/c$a;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_27
    invoke-static {p2, p3, v0}, Lbsgamesdkhttp/a/e/c;->a(IBS)I

    move-result v2

    invoke-direct {p0, v2, v0, p3, p4}, Lbsgamesdkhttp/a/e/c;->a(ISBI)Ljava/util/List;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {p1, v1, p4, v2, v0}, Lbsgamesdkhttp/a/e/c$a;->a(ZIILjava/util/List;)V

    return-void

    :cond_34
    move v1, v0

    goto :goto_11
.end method

.method private b(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_16

    move v2, v1

    :goto_7
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_18

    :goto_b
    if-eqz v1, :cond_1a

    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    move v2, v0

    goto :goto_7

    :cond_18
    move v1, v0

    goto :goto_b

    :cond_1a
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_27

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_27
    invoke-static {p2, p3, v0}, Lbsgamesdkhttp/a/e/c;->a(IBS)I

    move-result v1

    iget-object v3, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {p1, v2, p4, v3, v1}, Lbsgamesdkhttp/a/e/c$a;->a(ZILbsgamesdkio/e;I)V

    iget-object v1, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lbsgamesdkio/e;->g(J)V

    return-void
.end method

.method private c(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    if-nez p4, :cond_1f

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-direct {p0, p1, p4}, Lbsgamesdkhttp/a/e/c;->a(Lbsgamesdkhttp/a/e/c$a;I)V

    return-void
.end method

.method private d(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    if-nez p4, :cond_1f

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1f
    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->i()I

    move-result v0

    invoke-static {v0}, Lbsgamesdkhttp/a/e/b;->a(I)Lbsgamesdkhttp/a/e/b;

    move-result-object v1

    if-nez v1, :cond_3a

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3a
    invoke-interface {p1, p4, v1}, Lbsgamesdkhttp/a/e/c$a;->a(ILbsgamesdkhttp/a/e/b;)V

    return-void
.end method

.method private e(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 12

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_d

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_20

    if-eqz p2, :cond_1c

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-interface {p1}, Lbsgamesdkhttp/a/e/c$a;->a()V

    :goto_1f
    return-void

    :cond_20
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_33

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_33
    new-instance v3, Lbsgamesdkhttp/a/e/i;

    invoke-direct {v3}, Lbsgamesdkhttp/a/e/i;-><init>()V

    move v1, v2

    :goto_39
    if-ge v1, p2, :cond_84

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->h()S

    move-result v0

    iget-object v4, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v4}, Lbsgamesdkio/e;->i()I

    move-result v4

    packed-switch v0, :pswitch_data_88

    :cond_4a
    :goto_4a
    :pswitch_4a
    invoke-virtual {v3, v0, v4}, Lbsgamesdkhttp/a/e/i;->a(II)Lbsgamesdkhttp/a/e/i;

    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_39

    :pswitch_51
    if-eqz v4, :cond_4a

    if-eq v4, v6, :cond_4a

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_5e
    const/4 v0, 0x4

    goto :goto_4a

    :pswitch_60
    const/4 v0, 0x7

    if-gez v4, :cond_4a

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6c
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_75

    const v5, 0xffffff

    if-le v4, v5, :cond_4a

    :cond_75
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_84
    invoke-interface {p1, v2, v3}, Lbsgamesdkhttp/a/e/c$a;->a(ZLbsgamesdkhttp/a/e/i;)V

    goto :goto_1f

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_51
        :pswitch_5e
        :pswitch_60
        :pswitch_6c
        :pswitch_4a
    .end packed-switch
.end method

.method private f(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 8

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_19

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_19
    iget-object v1, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v1}, Lbsgamesdkio/e;->i()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, -0x4

    invoke-static {v2, p3, v0}, Lbsgamesdkhttp/a/e/c;->a(IBS)I

    move-result v2

    invoke-direct {p0, v2, v0, p3, p4}, Lbsgamesdkhttp/a/e/c;->a(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p4, v1, v0}, Lbsgamesdkhttp/a/e/c$a;->a(IILjava/util/List;)V

    return-void
.end method

.method private g(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p2, v2, :cond_15

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    if-eqz p4, :cond_20

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    iget-object v2, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v2}, Lbsgamesdkio/e;->i()I

    move-result v2

    iget-object v3, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v3}, Lbsgamesdkio/e;->i()I

    move-result v3

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_34

    :goto_30
    invoke-interface {p1, v0, v2, v3}, Lbsgamesdkhttp/a/e/c$a;->a(ZII)V

    return-void

    :cond_34
    move v0, v1

    goto :goto_30
.end method

.method private h(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x8

    if-ge p2, v0, :cond_15

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    if-eqz p4, :cond_20

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->i()I

    move-result v1

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->i()I

    move-result v0

    add-int/lit8 v2, p2, -0x8

    invoke-static {v0}, Lbsgamesdkhttp/a/e/b;->a(I)Lbsgamesdkhttp/a/e/b;

    move-result-object v3

    if-nez v3, :cond_43

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_43
    sget-object v0, Lbsgamesdkio/ByteString;->EMPTY:Lbsgamesdkio/ByteString;

    if-lez v2, :cond_4e

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lbsgamesdkio/e;->c(J)Lbsgamesdkio/ByteString;

    move-result-object v0

    :cond_4e
    invoke-interface {p1, v1, v3, v0}, Lbsgamesdkhttp/a/e/c$a;->a(ILbsgamesdkhttp/a/e/b;Lbsgamesdkio/ByteString;)V

    return-void
.end method

.method private i(Lbsgamesdkhttp/a/e/c$a;IBI)V
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->i()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_34

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_34
    invoke-interface {p1, p4, v0, v1}, Lbsgamesdkhttp/a/e/c$a;->a(IJ)V

    return-void
.end method


# virtual methods
.method public a(Lbsgamesdkhttp/a/e/c$a;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lbsgamesdkhttp/a/e/c;->e:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0, v6, p1}, Lbsgamesdkhttp/a/e/c;->a(ZLbsgamesdkhttp/a/e/c$a;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "Required SETTINGS preface not received"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    sget-object v1, Lbsgamesdkhttp/a/e/l;->a:Lbsgamesdkio/ByteString;

    invoke-virtual {v1}, Lbsgamesdkio/ByteString;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lbsgamesdkio/e;->c(J)Lbsgamesdkio/ByteString;

    move-result-object v0

    sget-object v1, Lbsgamesdkhttp/a/e/c;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Lbsgamesdkhttp/a/e/c;->a:Ljava/util/logging/Logger;

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3f
    sget-object v1, Lbsgamesdkhttp/a/e/l;->a:Lbsgamesdkio/ByteString;

    invoke-virtual {v1, v0}, Lbsgamesdkio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_56
    return-void
.end method

.method public a(ZLbsgamesdkhttp/a/e/c$a;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    iget-object v2, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, Lbsgamesdkio/e;->a(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_24

    iget-object v2, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-static {v2}, Lbsgamesdkhttp/a/e/c;->a(Lbsgamesdkio/e;)I

    move-result v2

    if-ltz v2, :cond_15

    const/16 v3, 0x4000

    if-le v2, v3, :cond_27

    :cond_15
    const-string v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_24
    move-exception v0

    move v0, v1

    :goto_26
    return v0

    :cond_27
    iget-object v3, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v3}, Lbsgamesdkio/e;->g()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_44

    const/4 v4, 0x4

    if-eq v3, v4, :cond_44

    const-string v2, "Expected a SETTINGS frame but was %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lbsgamesdkhttp/a/e/l;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_44
    iget-object v1, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v1}, Lbsgamesdkio/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v4, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v4}, Lbsgamesdkio/e;->i()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    sget-object v5, Lbsgamesdkhttp/a/e/c;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_6a

    sget-object v5, Lbsgamesdkhttp/a/e/c;->a:Ljava/util/logging/Logger;

    invoke-static {v0, v4, v2, v3, v1}, Lbsgamesdkhttp/a/e/l;->a(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_6a
    packed-switch v3, :pswitch_data_98

    iget-object v1, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lbsgamesdkio/e;->g(J)V

    goto :goto_26

    :pswitch_74
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->b(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_78
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->a(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_7c
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->c(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_80
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->d(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_84
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->e(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_88
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->f(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_8c
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->g(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_90
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->h(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_94
    invoke-direct {p0, p2, v2, v1, v4}, Lbsgamesdkhttp/a/e/c;->i(Lbsgamesdkhttp/a/e/c$a;IBI)V

    goto :goto_26

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_74
        :pswitch_78
        :pswitch_7c
        :pswitch_80
        :pswitch_84
        :pswitch_88
        :pswitch_8c
        :pswitch_90
        :pswitch_94
    .end packed-switch
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/c;->c:Lbsgamesdkio/e;

    invoke-interface {v0}, Lbsgamesdkio/e;->close()V

    return-void
.end method
