.class public final Lbsgamesdkhttp/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/g$a;,
        Lbsgamesdkhttp/g$b;
    }
.end annotation


# static fields
.field public static final a:Lbsgamesdkhttp/g;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbsgamesdkhttp/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lbsgamesdkhttp/a/h/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbsgamesdkhttp/g$a;

    invoke-direct {v0}, Lbsgamesdkhttp/g$a;-><init>()V

    invoke-virtual {v0}, Lbsgamesdkhttp/g$a;->a()Lbsgamesdkhttp/g;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/g;->a:Lbsgamesdkhttp/g;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lbsgamesdkhttp/a/h/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lbsgamesdkhttp/g$b;",
            ">;",
            "Lbsgamesdkhttp/a/h/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/g;->b:Ljava/util/Set;

    iput-object p2, p0, Lbsgamesdkhttp/g;->c:Lbsgamesdkhttp/a/h/b;

    return-void
.end method

.method static a(Ljava/security/cert/X509Certificate;)Lbsgamesdkio/ByteString;
    .registers 2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkio/ByteString;->of([B)Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->sha1()Lbsgamesdkio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lbsgamesdkhttp/g;->b(Ljava/security/cert/X509Certificate;)Lbsgamesdkio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/security/cert/X509Certificate;)Lbsgamesdkio/ByteString;
    .registers 2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lbsgamesdkio/ByteString;->of([B)Lbsgamesdkio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lbsgamesdkio/ByteString;->sha256()Lbsgamesdkio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lbsgamesdkhttp/a/h/b;)Lbsgamesdkhttp/g;
    .registers 4

    iget-object v0, p0, Lbsgamesdkhttp/g;->c:Lbsgamesdkhttp/a/h/b;

    invoke-static {v0, p1}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lbsgamesdkhttp/g;

    iget-object v1, p0, Lbsgamesdkhttp/g;->b:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lbsgamesdkhttp/g;-><init>(Ljava/util/Set;Lbsgamesdkhttp/a/h/b;)V

    move-object p0, v0

    goto :goto_8
.end method

.method a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/g$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lbsgamesdkhttp/g;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/g$b;

    invoke-virtual {v0, p1}, Lbsgamesdkhttp/g$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_2b
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lbsgamesdkhttp/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lbsgamesdkhttp/g;->c:Lbsgamesdkhttp/a/h/b;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbsgamesdkhttp/g;->c:Lbsgamesdkhttp/a/h/b;

    invoke-virtual {v0, p2, p1}, Lbsgamesdkhttp/a/h/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :cond_17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    move v7, v4

    :goto_1c
    if-ge v7, v9, :cond_76

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move v5, v4

    move-object v2, v6

    move-object v3, v6

    :goto_2b
    if-ge v5, v10, :cond_72

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsgamesdkhttp/g$b;

    iget-object v11, v1, Lbsgamesdkhttp/g$b;->c:Ljava/lang/String;

    const-string v12, "sha256/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    if-nez v2, :cond_43

    invoke-static {v0}, Lbsgamesdkhttp/g;->b(Ljava/security/cert/X509Certificate;)Lbsgamesdkio/ByteString;

    move-result-object v2

    :cond_43
    iget-object v1, v1, Lbsgamesdkhttp/g$b;->d:Lbsgamesdkio/ByteString;

    invoke-virtual {v1, v2}, Lbsgamesdkio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_4b
    move-object v1, v2

    move-object v2, v3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_2b

    :cond_53
    iget-object v11, v1, Lbsgamesdkhttp/g$b;->c:Ljava/lang/String;

    const-string v12, "sha1/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6c

    if-nez v3, :cond_63

    invoke-static {v0}, Lbsgamesdkhttp/g;->a(Ljava/security/cert/X509Certificate;)Lbsgamesdkio/ByteString;

    move-result-object v3

    :cond_63
    iget-object v1, v1, Lbsgamesdkhttp/g$b;->d:Lbsgamesdkio/ByteString;

    invoke-virtual {v1, v3}, Lbsgamesdkio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_c

    :cond_6c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_72
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1c

    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate pinning failure!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Peer certificate chain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v4

    :goto_8c
    if-ge v1, v3, :cond_b7

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const-string v5, "\n    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lbsgamesdkhttp/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8c

    :cond_b7
    const-string v0, "\n  Pinned certificates for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    move v1, v4

    :goto_cb
    if-ge v1, v3, :cond_e0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/g$b;

    const-string v4, "\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cb

    :cond_e0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x1

    if-ne p1, p0, :cond_4

    :goto_3
    return v1

    :cond_4
    instance-of v0, p1, Lbsgamesdkhttp/g;

    if-eqz v0, :cond_24

    iget-object v2, p0, Lbsgamesdkhttp/g;->c:Lbsgamesdkhttp/a/h/b;

    move-object v0, p1

    check-cast v0, Lbsgamesdkhttp/g;

    iget-object v0, v0, Lbsgamesdkhttp/g;->c:Lbsgamesdkhttp/a/h/b;

    invoke-static {v2, v0}, Lbsgamesdkhttp/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lbsgamesdkhttp/g;->b:Ljava/util/Set;

    check-cast p1, Lbsgamesdkhttp/g;

    iget-object v2, p1, Lbsgamesdkhttp/g;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    :goto_22
    move v1, v0

    goto :goto_3

    :cond_24
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lbsgamesdkhttp/g;->c:Lbsgamesdkhttp/a/h/b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbsgamesdkhttp/g;->c:Lbsgamesdkhttp/a/h/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbsgamesdkhttp/g;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method
