.class public Lcom/qiniu/android/dns/http/DomainNotOwn;
.super Lcom/qiniu/android/dns/DnsException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "dns not own"

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
