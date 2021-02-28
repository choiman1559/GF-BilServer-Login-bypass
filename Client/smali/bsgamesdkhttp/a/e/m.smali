.class public final Lbsgamesdkhttp/a/e/m;
.super Ljava/lang/Object;

# interfaces
.implements Lbsgamesdkhttp/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/a/e/m$a;
    }
.end annotation


# static fields
.field private static final b:Lbsgamesdkio/ByteString;

.field private static final c:Lbsgamesdkio/ByteString;

.field private static final d:Lbsgamesdkio/ByteString;

.field private static final e:Lbsgamesdkio/ByteString;

.field private static final f:Lbsgamesdkio/ByteString;

.field private static final g:Lbsgamesdkio/ByteString;

.field private static final h:Lbsgamesdkio/ByteString;

.field private static final i:Lbsgamesdkio/ByteString;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lbsgamesdkhttp/a/b/g;

.field private final l:Lbsgamesdkhttp/u;

.field private final m:Lbsgamesdkhttp/a/e/n;

.field private n:Lbsgamesdkhttp/a/e/d;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "connection"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->b:Lbsgamesdkio/ByteString;

    const-string v0, "host"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->c:Lbsgamesdkio/ByteString;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->d:Lbsgamesdkio/ByteString;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->e:Lbsgamesdkio/ByteString;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->f:Lbsgamesdkio/ByteString;

    const-string v0, "te"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->g:Lbsgamesdkio/ByteString;

    const-string v0, "encoding"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->h:Lbsgamesdkio/ByteString;

    const-string v0, "upgrade"

    invoke-static {v0}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->i:Lbsgamesdkio/ByteString;

    const/16 v0, 0xc

    new-array v0, v0, [Lbsgamesdkio/ByteString;

    sget-object v1, Lbsgamesdkhttp/a/e/m;->b:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lbsgamesdkhttp/a/e/m;->c:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lbsgamesdkhttp/a/e/m;->d:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lbsgamesdkhttp/a/e/m;->e:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lbsgamesdkhttp/a/e/m;->g:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbsgamesdkhttp/a/e/m;->f:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbsgamesdkhttp/a/e/m;->h:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbsgamesdkhttp/a/e/m;->i:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbsgamesdkhttp/a/e/j;->c:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lbsgamesdkhttp/a/e/j;->d:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lbsgamesdkhttp/a/e/j;->e:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lbsgamesdkhttp/a/e/j;->f:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->j:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lbsgamesdkio/ByteString;

    sget-object v1, Lbsgamesdkhttp/a/e/m;->b:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lbsgamesdkhttp/a/e/m;->c:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lbsgamesdkhttp/a/e/m;->d:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lbsgamesdkhttp/a/e/m;->e:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lbsgamesdkhttp/a/e/m;->g:Lbsgamesdkio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbsgamesdkhttp/a/e/m;->f:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbsgamesdkhttp/a/e/m;->h:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbsgamesdkhttp/a/e/m;->i:Lbsgamesdkio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/a/e/m;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lbsgamesdkhttp/u;Lbsgamesdkhttp/a/b/g;Lbsgamesdkhttp/a/e/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/e/m;->l:Lbsgamesdkhttp/u;

    iput-object p2, p0, Lbsgamesdkhttp/a/e/m;->a:Lbsgamesdkhttp/a/b/g;

    iput-object p3, p0, Lbsgamesdkhttp/a/e/m;->m:Lbsgamesdkhttp/a/e/n;

    return-void
.end method

.method public static a(Ljava/util/List;)Lbsgamesdkhttp/y$a;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;)",
            "Lbsgamesdkhttp/y$a;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Lbsgamesdkhttp/r$a;

    invoke-direct {v1}, Lbsgamesdkhttp/r$a;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    move-object v3, v2

    :goto_d
    if-ge v4, v5, :cond_6a

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/a/e/j;

    if-nez v0, :cond_2b

    if-eqz v3, :cond_67

    iget v0, v3, Lbsgamesdkhttp/a/c/i;->b:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_67

    new-instance v0, Lbsgamesdkhttp/r$a;

    invoke-direct {v0}, Lbsgamesdkhttp/r$a;-><init>()V

    move-object v1, v2

    :goto_25
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    goto :goto_d

    :cond_2b
    iget-object v6, v0, Lbsgamesdkhttp/a/e/j;->g:Lbsgamesdkio/ByteString;

    iget-object v0, v0, Lbsgamesdkhttp/a/e/j;->h:Lbsgamesdkio/ByteString;

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lbsgamesdkhttp/a/e/j;->b:Lbsgamesdkio/ByteString;

    invoke-virtual {v6, v7}, Lbsgamesdkio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/c/i;->a(Ljava/lang/String;)Lbsgamesdkhttp/a/c/i;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_25

    :cond_56
    sget-object v7, Lbsgamesdkhttp/a/e/m;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    sget-object v7, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    invoke-virtual {v6}, Lbsgamesdkio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1, v6, v0}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/r$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    move-object v0, v1

    move-object v1, v3

    goto :goto_25

    :cond_6a
    if-nez v3, :cond_74

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    new-instance v0, Lbsgamesdkhttp/y$a;

    invoke-direct {v0}, Lbsgamesdkhttp/y$a;-><init>()V

    sget-object v2, Lbsgamesdkhttp/Protocol;->HTTP_2:Lbsgamesdkhttp/Protocol;

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/Protocol;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    iget v2, v3, Lbsgamesdkhttp/a/c/i;->b:I

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(I)Lbsgamesdkhttp/y$a;

    move-result-object v0

    iget-object v2, v3, Lbsgamesdkhttp/a/c/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbsgamesdkhttp/y$a;->a(Ljava/lang/String;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    invoke-virtual {v1}, Lbsgamesdkhttp/r$a;->a()Lbsgamesdkhttp/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/y$a;->a(Lbsgamesdkhttp/r;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lbsgamesdkhttp/w;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsgamesdkhttp/w;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/a/e/j;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lbsgamesdkhttp/w;->c()Lbsgamesdkhttp/r;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lbsgamesdkhttp/r;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lbsgamesdkhttp/a/e/j;

    sget-object v3, Lbsgamesdkhttp/a/e/j;->c:Lbsgamesdkio/ByteString;

    invoke-virtual {p0}, Lbsgamesdkhttp/w;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbsgamesdkhttp/a/e/j;

    sget-object v3, Lbsgamesdkhttp/a/e/j;->d:Lbsgamesdkio/ByteString;

    invoke-virtual {p0}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lbsgamesdkhttp/a/c/l;->a(Lbsgamesdkhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Host"

    invoke-virtual {p0, v0}, Lbsgamesdkhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    new-instance v3, Lbsgamesdkhttp/a/e/j;

    sget-object v4, Lbsgamesdkhttp/a/e/j;->f:Lbsgamesdkio/ByteString;

    invoke-direct {v3, v4, v0}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    new-instance v0, Lbsgamesdkhttp/a/e/j;

    sget-object v3, Lbsgamesdkhttp/a/e/j;->e:Lbsgamesdkio/ByteString;

    invoke-virtual {p0}, Lbsgamesdkhttp/w;->a()Lbsgamesdkhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lbsgamesdkhttp/HttpUrl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v1}, Lbsgamesdkhttp/r;->a()I

    move-result v3

    :goto_58
    if-ge v0, v3, :cond_7f

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/r;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbsgamesdkio/ByteString;->encodeUtf8(Ljava/lang/String;)Lbsgamesdkio/ByteString;

    move-result-object v4

    sget-object v5, Lbsgamesdkhttp/a/e/m;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    new-instance v5, Lbsgamesdkhttp/a/e/j;

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/r;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lbsgamesdkhttp/a/e/j;-><init>(Lbsgamesdkio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_7f
    return-object v2
.end method


# virtual methods
.method public a(Z)Lbsgamesdkhttp/y$a;
    .registers 5

    iget-object v0, p0, Lbsgamesdkhttp/a/e/m;->n:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkhttp/a/e/m;->a(Ljava/util/List;)Lbsgamesdkhttp/y$a;

    move-result-object v0

    if-eqz p1, :cond_17

    sget-object v1, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/a/a;->a(Lbsgamesdkhttp/y$a;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_17

    const/4 v0, 0x0

    :cond_17
    return-object v0
.end method

.method public a(Lbsgamesdkhttp/y;)Lbsgamesdkhttp/z;
    .registers 5

    new-instance v0, Lbsgamesdkhttp/a/e/m$a;

    iget-object v1, p0, Lbsgamesdkhttp/a/e/m;->n:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v1}, Lbsgamesdkhttp/a/e/d;->g()Lbsgamesdkio/p;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbsgamesdkhttp/a/e/m$a;-><init>(Lbsgamesdkhttp/a/e/m;Lbsgamesdkio/p;)V

    new-instance v1, Lbsgamesdkhttp/a/c/g;

    invoke-virtual {p1}, Lbsgamesdkhttp/y;->f()Lbsgamesdkhttp/r;

    move-result-object v2

    invoke-static {v0}, Lbsgamesdkio/j;->a(Lbsgamesdkio/p;)Lbsgamesdkio/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lbsgamesdkhttp/a/c/g;-><init>(Lbsgamesdkhttp/r;Lbsgamesdkio/e;)V

    return-object v1
.end method

.method public a(Lbsgamesdkhttp/w;J)Lbsgamesdkio/o;
    .registers 5

    iget-object v0, p0, Lbsgamesdkhttp/a/e/m;->n:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->h()Lbsgamesdkio/o;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/m;->m:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/n;->b()V

    return-void
.end method

.method public a(Lbsgamesdkhttp/w;)V
    .registers 6

    iget-object v0, p0, Lbsgamesdkhttp/a/e/m;->n:Lbsgamesdkhttp/a/e/d;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lbsgamesdkhttp/w;->d()Lbsgamesdkhttp/x;

    move-result-object v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_c
    invoke-static {p1}, Lbsgamesdkhttp/a/e/m;->b(Lbsgamesdkhttp/w;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbsgamesdkhttp/a/e/m;->m:Lbsgamesdkhttp/a/e/n;

    invoke-virtual {v2, v1, v0}, Lbsgamesdkhttp/a/e/n;->a(Ljava/util/List;Z)Lbsgamesdkhttp/a/e/d;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/a/e/m;->n:Lbsgamesdkhttp/a/e/d;

    iget-object v0, p0, Lbsgamesdkhttp/a/e/m;->n:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->e()Lbsgamesdkio/q;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/e/m;->l:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lbsgamesdkio/q;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkio/q;

    iget-object v0, p0, Lbsgamesdkhttp/a/e/m;->n:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->f()Lbsgamesdkio/q;

    move-result-object v0

    iget-object v1, p0, Lbsgamesdkhttp/a/e/m;->l:Lbsgamesdkhttp/u;

    invoke-virtual {v1}, Lbsgamesdkhttp/u;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lbsgamesdkio/q;->a(JLjava/util/concurrent/TimeUnit;)Lbsgamesdkio/q;

    goto :goto_4

    :cond_3d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/a/e/m;->n:Lbsgamesdkhttp/a/e/d;

    invoke-virtual {v0}, Lbsgamesdkhttp/a/e/d;->h()Lbsgamesdkio/o;

    move-result-object v0

    invoke-interface {v0}, Lbsgamesdkio/o;->close()V

    return-void
.end method
