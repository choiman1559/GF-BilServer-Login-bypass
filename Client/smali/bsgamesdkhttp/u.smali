.class public Lbsgamesdkhttp/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/u$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final c:Lbsgamesdkhttp/n;

.field final d:Ljava/net/Proxy;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/k;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/s;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/s;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/net/ProxySelector;

.field final j:Lbsgamesdkhttp/m;

.field final k:Lbsgamesdkhttp/c;

.field final l:Lbsgamesdkhttp/a/a/e;

.field final m:Ljavax/net/SocketFactory;

.field final n:Ljavax/net/ssl/SSLSocketFactory;

.field final o:Lbsgamesdkhttp/a/h/b;

.field final p:Ljavax/net/ssl/HostnameVerifier;

.field final q:Lbsgamesdkhttp/g;

.field final r:Lbsgamesdkhttp/b;

.field final s:Lbsgamesdkhttp/b;

.field final t:Lbsgamesdkhttp/j;

.field final u:Lbsgamesdkhttp/o;

.field final v:Z

.field final w:Z

.field final x:Z

.field final y:I

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Lbsgamesdkhttp/Protocol;

    sget-object v1, Lbsgamesdkhttp/Protocol;->HTTP_2:Lbsgamesdkhttp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lbsgamesdkhttp/Protocol;->HTTP_1_1:Lbsgamesdkhttp/Protocol;

    aput-object v1, v0, v3

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/u;->a:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [Lbsgamesdkhttp/k;

    sget-object v1, Lbsgamesdkhttp/k;->a:Lbsgamesdkhttp/k;

    aput-object v1, v0, v2

    sget-object v1, Lbsgamesdkhttp/k;->b:Lbsgamesdkhttp/k;

    aput-object v1, v0, v3

    sget-object v1, Lbsgamesdkhttp/k;->c:Lbsgamesdkhttp/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbsgamesdkhttp/u;->b:Ljava/util/List;

    new-instance v0, Lbsgamesdkhttp/u$1;

    invoke-direct {v0}, Lbsgamesdkhttp/u$1;-><init>()V

    sput-object v0, Lbsgamesdkhttp/a/a;->a:Lbsgamesdkhttp/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lbsgamesdkhttp/u$a;

    invoke-direct {v0}, Lbsgamesdkhttp/u$a;-><init>()V

    invoke-direct {p0, v0}, Lbsgamesdkhttp/u;-><init>(Lbsgamesdkhttp/u$a;)V

    return-void
.end method

.method constructor <init>(Lbsgamesdkhttp/u$a;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->a:Lbsgamesdkhttp/n;

    iput-object v0, p0, Lbsgamesdkhttp/u;->c:Lbsgamesdkhttp/n;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lbsgamesdkhttp/u;->d:Ljava/net/Proxy;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->c:Ljava/util/List;

    iput-object v0, p0, Lbsgamesdkhttp/u;->e:Ljava/util/List;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->d:Ljava/util/List;

    iput-object v0, p0, Lbsgamesdkhttp/u;->f:Ljava/util/List;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->e:Ljava/util/List;

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/u;->g:Ljava/util/List;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->f:Ljava/util/List;

    invoke-static {v0}, Lbsgamesdkhttp/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/u;->h:Ljava/util/List;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lbsgamesdkhttp/u;->i:Ljava/net/ProxySelector;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->h:Lbsgamesdkhttp/m;

    iput-object v0, p0, Lbsgamesdkhttp/u;->j:Lbsgamesdkhttp/m;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->i:Lbsgamesdkhttp/c;

    iput-object v0, p0, Lbsgamesdkhttp/u;->k:Lbsgamesdkhttp/c;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->j:Lbsgamesdkhttp/a/a/e;

    iput-object v0, p0, Lbsgamesdkhttp/u;->l:Lbsgamesdkhttp/a/a/e;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lbsgamesdkhttp/u;->m:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lbsgamesdkhttp/u;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/k;

    if-nez v1, :cond_53

    invoke-virtual {v0}, Lbsgamesdkhttp/k;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_53
    const/4 v0, 0x1

    :goto_54
    move v1, v0

    goto :goto_3f

    :cond_56
    move v0, v2

    goto :goto_54

    :cond_58
    iget-object v0, p1, Lbsgamesdkhttp/u$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_5e

    if-nez v1, :cond_a1

    :cond_5e
    iget-object v0, p1, Lbsgamesdkhttp/u$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lbsgamesdkhttp/u;->n:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->m:Lbsgamesdkhttp/a/h/b;

    iput-object v0, p0, Lbsgamesdkhttp/u;->o:Lbsgamesdkhttp/a/h/b;

    :goto_66
    iget-object v0, p1, Lbsgamesdkhttp/u$a;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lbsgamesdkhttp/u;->p:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->o:Lbsgamesdkhttp/g;

    iget-object v1, p0, Lbsgamesdkhttp/u;->o:Lbsgamesdkhttp/a/h/b;

    invoke-virtual {v0, v1}, Lbsgamesdkhttp/g;->a(Lbsgamesdkhttp/a/h/b;)Lbsgamesdkhttp/g;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/u;->q:Lbsgamesdkhttp/g;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->p:Lbsgamesdkhttp/b;

    iput-object v0, p0, Lbsgamesdkhttp/u;->r:Lbsgamesdkhttp/b;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->q:Lbsgamesdkhttp/b;

    iput-object v0, p0, Lbsgamesdkhttp/u;->s:Lbsgamesdkhttp/b;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->r:Lbsgamesdkhttp/j;

    iput-object v0, p0, Lbsgamesdkhttp/u;->t:Lbsgamesdkhttp/j;

    iget-object v0, p1, Lbsgamesdkhttp/u$a;->s:Lbsgamesdkhttp/o;

    iput-object v0, p0, Lbsgamesdkhttp/u;->u:Lbsgamesdkhttp/o;

    iget-boolean v0, p1, Lbsgamesdkhttp/u$a;->t:Z

    iput-boolean v0, p0, Lbsgamesdkhttp/u;->v:Z

    iget-boolean v0, p1, Lbsgamesdkhttp/u$a;->u:Z

    iput-boolean v0, p0, Lbsgamesdkhttp/u;->w:Z

    iget-boolean v0, p1, Lbsgamesdkhttp/u$a;->v:Z

    iput-boolean v0, p0, Lbsgamesdkhttp/u;->x:Z

    iget v0, p1, Lbsgamesdkhttp/u$a;->w:I

    iput v0, p0, Lbsgamesdkhttp/u;->y:I

    iget v0, p1, Lbsgamesdkhttp/u$a;->x:I

    iput v0, p0, Lbsgamesdkhttp/u;->z:I

    iget v0, p1, Lbsgamesdkhttp/u$a;->y:I

    iput v0, p0, Lbsgamesdkhttp/u;->A:I

    iget v0, p1, Lbsgamesdkhttp/u$a;->z:I

    iput v0, p0, Lbsgamesdkhttp/u;->B:I

    return-void

    :cond_a1
    invoke-direct {p0}, Lbsgamesdkhttp/u;->x()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsgamesdkhttp/u;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lbsgamesdkhttp/u;->n:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lbsgamesdkhttp/a/h/b;->a(Ljavax/net/ssl/X509TrustManager;)Lbsgamesdkhttp/a/h/b;

    move-result-object v0

    iput-object v0, p0, Lbsgamesdkhttp/u;->o:Lbsgamesdkhttp/a/h/b;

    goto :goto_66
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_14
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    return-object v0

    :catch_16
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private x()Ljavax/net/ssl/X509TrustManager;
    .registers 5

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_41

    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3a
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_41
    const/4 v1, 0x0

    :try_start_42
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_46
    .catch Ljava/security/GeneralSecurityException; {:try_start_42 .. :try_end_46} :catch_3a

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbsgamesdkhttp/u;->y:I

    return v0
.end method

.method public a(Lbsgamesdkhttp/w;)Lbsgamesdkhttp/e;
    .registers 4

    new-instance v0, Lbsgamesdkhttp/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbsgamesdkhttp/v;-><init>(Lbsgamesdkhttp/u;Lbsgamesdkhttp/w;Z)V

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lbsgamesdkhttp/u;->z:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbsgamesdkhttp/u;->A:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->i:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lbsgamesdkhttp/m;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->j:Lbsgamesdkhttp/m;

    return-object v0
.end method

.method g()Lbsgamesdkhttp/a/a/e;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->k:Lbsgamesdkhttp/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbsgamesdkhttp/u;->k:Lbsgamesdkhttp/c;

    iget-object v0, v0, Lbsgamesdkhttp/c;->a:Lbsgamesdkhttp/a/a/e;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lbsgamesdkhttp/u;->l:Lbsgamesdkhttp/a/a/e;

    goto :goto_8
.end method

.method public h()Lbsgamesdkhttp/o;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->u:Lbsgamesdkhttp/o;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->m:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lbsgamesdkhttp/g;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->q:Lbsgamesdkhttp/g;

    return-object v0
.end method

.method public m()Lbsgamesdkhttp/b;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->s:Lbsgamesdkhttp/b;

    return-object v0
.end method

.method public n()Lbsgamesdkhttp/b;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->r:Lbsgamesdkhttp/b;

    return-object v0
.end method

.method public o()Lbsgamesdkhttp/j;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->t:Lbsgamesdkhttp/j;

    return-object v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lbsgamesdkhttp/u;->v:Z

    return v0
.end method

.method public q()Z
    .registers 2

    iget-boolean v0, p0, Lbsgamesdkhttp/u;->w:Z

    return v0
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, Lbsgamesdkhttp/u;->x:Z

    return v0
.end method

.method public s()Lbsgamesdkhttp/n;
    .registers 2

    iget-object v0, p0, Lbsgamesdkhttp/u;->c:Lbsgamesdkhttp/n;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/u;->e:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/u;->f:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/u;->g:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbsgamesdkhttp/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbsgamesdkhttp/u;->h:Ljava/util/List;

    return-object v0
.end method
