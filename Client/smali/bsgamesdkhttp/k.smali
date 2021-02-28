.class public final Lbsgamesdkhttp/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/k$a;
    }
.end annotation


# static fields
.field public static final a:Lbsgamesdkhttp/k;

.field public static final b:Lbsgamesdkhttp/k;

.field public static final c:Lbsgamesdkhttp/k;

.field private static final h:[Lbsgamesdkhttp/h;


# instance fields
.field final d:Z

.field final e:Z

.field final f:[Ljava/lang/String;

.field final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0xf

    new-array v0, v0, [Lbsgamesdkhttp/h;

    sget-object v1, Lbsgamesdkhttp/h;->aW:Lbsgamesdkhttp/h;

    aput-object v1, v0, v4

    sget-object v1, Lbsgamesdkhttp/h;->ba:Lbsgamesdkhttp/h;

    aput-object v1, v0, v3

    sget-object v1, Lbsgamesdkhttp/h;->aX:Lbsgamesdkhttp/h;

    aput-object v1, v0, v5

    sget-object v1, Lbsgamesdkhttp/h;->bb:Lbsgamesdkhttp/h;

    aput-object v1, v0, v6

    sget-object v1, Lbsgamesdkhttp/h;->bh:Lbsgamesdkhttp/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbsgamesdkhttp/h;->bg:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbsgamesdkhttp/h;->ax:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbsgamesdkhttp/h;->aH:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbsgamesdkhttp/h;->ay:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lbsgamesdkhttp/h;->aI:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lbsgamesdkhttp/h;->af:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lbsgamesdkhttp/h;->ag:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lbsgamesdkhttp/h;->D:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lbsgamesdkhttp/h;->H:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lbsgamesdkhttp/h;->h:Lbsgamesdkhttp/h;

    aput-object v2, v0, v1

    sput-object v0, Lbsgamesdkhttp/k;->h:[Lbsgamesdkhttp/h;

    new-instance v0, Lbsgamesdkhttp/k$a;

    invoke-direct {v0, v3}, Lbsgamesdkhttp/k$a;-><init>(Z)V

    sget-object v1, Lbsgamesdkhttp/k;->h:[Lbsgamesdkhttp/h;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/k$a;->a([Lbsgamesdkhttp/h;)Lbsgamesdkhttp/k$a;

    move-result-object v0

    new-array v1, v7, [Lbsgamesdkhttp/TlsVersion;

    sget-object v2, Lbsgamesdkhttp/TlsVersion;->TLS_1_3:Lbsgamesdkhttp/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lbsgamesdkhttp/TlsVersion;->TLS_1_2:Lbsgamesdkhttp/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lbsgamesdkhttp/TlsVersion;->TLS_1_1:Lbsgamesdkhttp/TlsVersion;

    aput-object v2, v1, v5

    sget-object v2, Lbsgamesdkhttp/TlsVersion;->TLS_1_0:Lbsgamesdkhttp/TlsVersion;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/k$a;->a([Lbsgamesdkhttp/TlsVersion;)Lbsgamesdkhttp/k$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbsgamesdkhttp/k$a;->a(Z)Lbsgamesdkhttp/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/k$a;->a()Lbsgamesdkhttp/k;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/k;->a:Lbsgamesdkhttp/k;

    new-instance v0, Lbsgamesdkhttp/k$a;

    sget-object v1, Lbsgamesdkhttp/k;->a:Lbsgamesdkhttp/k;

    invoke-direct {v0, v1}, Lbsgamesdkhttp/k$a;-><init>(Lbsgamesdkhttp/k;)V

    new-array v1, v3, [Lbsgamesdkhttp/TlsVersion;

    sget-object v2, Lbsgamesdkhttp/TlsVersion;->TLS_1_0:Lbsgamesdkhttp/TlsVersion;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/k$a;->a([Lbsgamesdkhttp/TlsVersion;)Lbsgamesdkhttp/k$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbsgamesdkhttp/k$a;->a(Z)Lbsgamesdkhttp/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/k$a;->a()Lbsgamesdkhttp/k;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/k;->b:Lbsgamesdkhttp/k;

    new-instance v0, Lbsgamesdkhttp/k$a;

    invoke-direct {v0, v4}, Lbsgamesdkhttp/k$a;-><init>(Z)V

    invoke-virtual {v0}, Lbsgamesdkhttp/k$a;->a()Lbsgamesdkhttp/k;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/k;->c:Lbsgamesdkhttp/k;

    return-void
.end method

.method constructor <init>(Lbsgamesdkhttp/k$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lbsgamesdkhttp/k$a;->a:Z

    iput-boolean v0, p0, Lbsgamesdkhttp/k;->d:Z

    iget-object v0, p1, Lbsgamesdkhttp/k$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    iget-object v0, p1, Lbsgamesdkhttp/k$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    iget-boolean v0, p1, Lbsgamesdkhttp/k$a;->d:Z

    iput-boolean v0, p0, Lbsgamesdkhttp/k;->e:Z

    return-void
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    array-length v1, p0

    if-eqz v1, :cond_b

    array-length v1, p1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    array-length v2, p0

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_b

    aget-object v3, p0, v1

    invoke-static {p1, v3}, Lbsgamesdkhttp/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    const/4 v0, 0x1

    goto :goto_b

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lbsgamesdkhttp/k;
    .registers 7

    iget-object v0, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_4c

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    :goto_13
    iget-object v0, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_52

    const-class v0, Ljava/lang/String;

    iget-object v2, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_25
    if-eqz p2, :cond_3a

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lbsgamesdkhttp/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, Lbsgamesdkhttp/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_3a
    new-instance v2, Lbsgamesdkhttp/k$a;

    invoke-direct {v2, p0}, Lbsgamesdkhttp/k$a;-><init>(Lbsgamesdkhttp/k;)V

    invoke-virtual {v2, v1}, Lbsgamesdkhttp/k$a;->a([Ljava/lang/String;)Lbsgamesdkhttp/k$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbsgamesdkhttp/k$a;->b([Ljava/lang/String;)Lbsgamesdkhttp/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkhttp/k$a;->a()Lbsgamesdkhttp/k;

    move-result-object v0

    return-object v0

    :cond_4c
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_13

    :cond_52
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lbsgamesdkhttp/k;->b(Ljavax/net/ssl/SSLSocket;Z)Lbsgamesdkhttp/k;

    move-result-object v0

    iget-object v1, v0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_d
    iget-object v1, v0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v0, v0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lbsgamesdkhttp/k;->d:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lbsgamesdkhttp/k;->d:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbsgamesdkhttp/k;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_16
    iget-object v1, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbsgamesdkhttp/k;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_26
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_20

    aget-object v4, v2, v0

    invoke-static {v4}, Lbsgamesdkhttp/h;->a(Ljava/lang/String;)Lbsgamesdkhttp/h;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public c()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_20

    aget-object v4, v2, v0

    invoke-static {v4}, Lbsgamesdkhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lbsgamesdkhttp/TlsVersion;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lbsgamesdkhttp/k;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lbsgamesdkhttp/k;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p1, p0, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    check-cast p1, Lbsgamesdkhttp/k;

    iget-boolean v2, p0, Lbsgamesdkhttp/k;->d:Z

    iget-boolean v3, p1, Lbsgamesdkhttp/k;->d:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lbsgamesdkhttp/k;->d:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    iget-object v3, p1, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    iget-object v3, p1, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lbsgamesdkhttp/k;->e:Z

    iget-boolean v3, p1, Lbsgamesdkhttp/k;->e:Z

    if-ne v2, v3, :cond_6

    :cond_31
    move v0, v1

    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget-boolean v1, p0, Lbsgamesdkhttp/k;->d:Z

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lbsgamesdkhttp/k;->e:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_1e
    add-int/2addr v0, v1

    :cond_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lbsgamesdkhttp/k;->d:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lbsgamesdkhttp/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lbsgamesdkhttp/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    iget-object v1, p0, Lbsgamesdkhttp/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_52

    invoke-virtual {p0}, Lbsgamesdkhttp/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbsgamesdkhttp/k;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_4f
    const-string v0, "[all enabled]"

    goto :goto_13

    :cond_52
    const-string v1, "[all enabled]"

    goto :goto_1f
.end method
