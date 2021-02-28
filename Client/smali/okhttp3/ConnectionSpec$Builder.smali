.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cipherSuites:[Ljava/lang/String;

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionSpec;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    iget-object v0, p1, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;
    .registers 3

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0
.end method

.method public allEnabledTlsVersions()Lokhttp3/ConnectionSpec$Builder;
    .registers 3

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method

.method public build()Lokhttp3/ConnectionSpec;
    .registers 2

    new-instance v0, Lokhttp3/ConnectionSpec;

    invoke-direct {v0, p0}, Lokhttp3/ConnectionSpec;-><init>(Lokhttp3/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .registers 4

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;
    .registers 5

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    aget-object v2, p1, v0

    iget-object v2, v2, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {p0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;
    .registers 4

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-object p0
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .registers 4

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;
    .registers 5

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    aget-object v2, p1, v0

    iget-object v2, v2, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    invoke-virtual {p0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    return-object v0
.end method
