.class public Lbsgamesdkhttp/a/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsgamesdkhttp/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lbsgamesdkhttp/w;

.field final c:Lbsgamesdkhttp/y;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V
    .registers 12

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lbsgamesdkhttp/a/a/c$a;->l:I

    iput-wide p1, p0, Lbsgamesdkhttp/a/a/c$a;->a:J

    iput-object p3, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    iput-object p4, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    if-eqz p4, :cond_7a

    invoke-virtual {p4}, Lbsgamesdkhttp/y;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lbsgamesdkhttp/a/a/c$a;->i:J

    invoke-virtual {p4}, Lbsgamesdkhttp/y;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lbsgamesdkhttp/a/a/c$a;->j:J

    invoke-virtual {p4}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lbsgamesdkhttp/r;->a()I

    move-result v2

    :goto_23
    if-ge v0, v2, :cond_7a

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/r;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static {v4}, Lbsgamesdkhttp/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lbsgamesdkhttp/a/a/c$a;->d:Ljava/util/Date;

    iput-object v4, p0, Lbsgamesdkhttp/a/a/c$a;->e:Ljava/lang/String;

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_40
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-static {v4}, Lbsgamesdkhttp/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lbsgamesdkhttp/a/a/c$a;->h:Ljava/util/Date;

    goto :goto_3d

    :cond_4f
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-static {v4}, Lbsgamesdkhttp/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lbsgamesdkhttp/a/a/c$a;->f:Ljava/util/Date;

    iput-object v4, p0, Lbsgamesdkhttp/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_3d

    :cond_60
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    iput-object v4, p0, Lbsgamesdkhttp/a/a/c$a;->k:Ljava/lang/String;

    goto :goto_3d

    :cond_6b
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {v4, v6}, Lbsgamesdkhttp/a/c/e;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lbsgamesdkhttp/a/a/c$a;->l:I

    goto :goto_3d

    :cond_7a
    return-void
.end method

.method private static a(Lbsgamesdkhttp/w;)Z
    .registers 2

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b()Lbsgamesdkhttp/a/a/c;
    .registers 15

    const-wide/16 v4, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    if-nez v0, :cond_10

    new-instance v0, Lbsgamesdkhttp/a/a/c;

    iget-object v1, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-direct {v0, v1, v12}, Lbsgamesdkhttp/a/a/c;-><init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->g()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->e()Lbsgamesdkhttp/q;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Lbsgamesdkhttp/a/a/c;

    iget-object v1, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-direct {v0, v1, v12}, Lbsgamesdkhttp/a/a/c;-><init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    goto :goto_f

    :cond_28
    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    iget-object v1, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-static {v0, v1}, Lbsgamesdkhttp/a/a/c;->a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/w;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Lbsgamesdkhttp/a/a/c;

    iget-object v1, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-direct {v0, v1, v12}, Lbsgamesdkhttp/a/a/c;-><init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    goto :goto_f

    :cond_3a
    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->f()Lbsgamesdkhttp/d;

    move-result-object v6

    invoke-virtual {v6}, Lbsgamesdkhttp/d;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-static {v0}, Lbsgamesdkhttp/a/a/c$a;->a(Lbsgamesdkhttp/w;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_4e
    new-instance v0, Lbsgamesdkhttp/a/a/c;

    iget-object v1, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-direct {v0, v1, v12}, Lbsgamesdkhttp/a/a/c;-><init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    goto :goto_f

    :cond_56
    invoke-direct {p0}, Lbsgamesdkhttp/a/a/c$a;->d()J

    move-result-wide v8

    invoke-direct {p0}, Lbsgamesdkhttp/a/a/c$a;->c()J

    move-result-wide v0

    invoke-virtual {v6}, Lbsgamesdkhttp/d;->c()I

    move-result v2

    if-eq v2, v13, :cond_73

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lbsgamesdkhttp/d;->c()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_73
    invoke-virtual {v6}, Lbsgamesdkhttp/d;->h()I

    move-result v2

    if-eq v2, v13, :cond_12c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lbsgamesdkhttp/d;->h()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :goto_84
    iget-object v7, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    invoke-virtual {v7}, Lbsgamesdkhttp/y;->i()Lbsgamesdkhttp/d;

    move-result-object v7

    invoke-virtual {v7}, Lbsgamesdkhttp/d;->f()Z

    move-result v10

    if-nez v10, :cond_a1

    invoke-virtual {v6}, Lbsgamesdkhttp/d;->g()I

    move-result v10

    if-eq v10, v13, :cond_a1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lbsgamesdkhttp/d;->g()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_a1
    invoke-virtual {v7}, Lbsgamesdkhttp/d;->a()Z

    move-result v6

    if-nez v6, :cond_df

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_df

    iget-object v4, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    invoke-virtual {v4}, Lbsgamesdkhttp/y;->h()Lbsgamesdkhttp/y$a;

    move-result-object v4

    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_c0

    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lbsgamesdkhttp/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/y$a;

    :cond_c0
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v8, v0

    if-lez v0, :cond_d4

    invoke-direct {p0}, Lbsgamesdkhttp/a/a/c$a;->e()Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lbsgamesdkhttp/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbsgamesdkhttp/y$a;

    :cond_d4
    new-instance v0, Lbsgamesdkhttp/a/a/c;

    invoke-virtual {v4}, Lbsgamesdkhttp/y$a;->a()Lbsgamesdkhttp/y;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lbsgamesdkhttp/a/a/c;-><init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    goto/16 :goto_f

    :cond_df
    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->k:Ljava/lang/String;

    if-eqz v0, :cond_111

    const-string v1, "If-None-Match"

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->k:Ljava/lang/String;

    :goto_e7
    iget-object v2, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-virtual {v2}, Lbsgamesdkhttp/w;->c()Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-virtual {v2}, Lbsgamesdkhttp/r;->b()Lbsgamesdkhttp/r$a;

    move-result-object v2

    sget-object v3, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    invoke-virtual {v3, v2, v1, v0}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/r$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->e()Lbsgamesdkhttp/w$a;

    move-result-object v0

    invoke-virtual {v2}, Lbsgamesdkhttp/r$a;->a()Lbsgamesdkhttp/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/w$a;->a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/w$a;->a()Lbsgamesdkhttp/w;

    move-result-object v1

    new-instance v0, Lbsgamesdkhttp/a/a/c;

    iget-object v2, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    invoke-direct {v0, v1, v2}, Lbsgamesdkhttp/a/a/c;-><init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    goto/16 :goto_f

    :cond_111
    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_11a

    const-string v1, "If-Modified-Since"

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_e7

    :cond_11a
    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_123

    const-string v1, "If-Modified-Since"

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->e:Ljava/lang/String;

    goto :goto_e7

    :cond_123
    new-instance v0, Lbsgamesdkhttp/a/a/c;

    iget-object v1, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-direct {v0, v1, v12}, Lbsgamesdkhttp/a/a/c;-><init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    goto/16 :goto_f

    :cond_12c
    move-wide v2, v4

    goto/16 :goto_84
.end method

.method private c()J
    .registers 7

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->i()Lbsgamesdkhttp/d;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/d;->c()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1b

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lbsgamesdkhttp/d;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1a
    :goto_1a
    return-wide v2

    :cond_1b
    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->h:Ljava/util/Date;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_29
    iget-object v4, p0, Lbsgamesdkhttp/a/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3a

    :goto_35
    move-wide v2, v0

    goto :goto_1a

    :cond_37
    iget-wide v0, p0, Lbsgamesdkhttp/a/a/c$a;->j:J

    goto :goto_29

    :cond_3a
    move-wide v0, v2

    goto :goto_35

    :cond_3c
    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->a()Lbsgamesdkhttp/w;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/HttpUrl;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_5a
    iget-object v4, p0, Lbsgamesdkhttp/a/a/c$a;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_1a

    :cond_6a
    iget-wide v0, p0, Lbsgamesdkhttp/a/a/c$a;->i:J

    goto :goto_5a
.end method

.method private d()J
    .registers 9

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lbsgamesdkhttp/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lbsgamesdkhttp/a/a/c$a;->j:J

    iget-object v4, p0, Lbsgamesdkhttp/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_13
    iget v2, p0, Lbsgamesdkhttp/a/a/c$a;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lbsgamesdkhttp/a/a/c$a;->l:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_25
    iget-wide v2, p0, Lbsgamesdkhttp/a/a/c$a;->j:J

    iget-wide v4, p0, Lbsgamesdkhttp/a/a/c$a;->i:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lbsgamesdkhttp/a/a/c$a;->a:J

    iget-wide v6, p0, Lbsgamesdkhttp/a/a/c$a;->j:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private e()Z
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->c:Lbsgamesdkhttp/y;

    invoke-virtual {v0}, Lbsgamesdkhttp/y;->i()Lbsgamesdkhttp/d;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lbsgamesdkhttp/a/a/c$a;->h:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a()Lbsgamesdkhttp/a/a/c;
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lbsgamesdkhttp/a/a/c$a;->b()Lbsgamesdkhttp/a/a/c;

    move-result-object v0

    iget-object v1, v0, Lbsgamesdkhttp/a/a/c;->a:Lbsgamesdkhttp/w;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lbsgamesdkhttp/a/a/c$a;->b:Lbsgamesdkhttp/w;

    invoke-virtual {v1}, Lbsgamesdkhttp/w;->f()Lbsgamesdkhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/d;->i()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lbsgamesdkhttp/a/a/c;

    invoke-direct {v0, v2, v2}, Lbsgamesdkhttp/a/a/c;-><init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V

    :cond_1a
    return-object v0
.end method
