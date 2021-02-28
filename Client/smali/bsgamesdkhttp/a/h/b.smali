.class public abstract Lbsgamesdkhttp/a/h/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Lbsgamesdkhttp/a/h/b;
    .registers 2

    invoke-static {}, Lbsgamesdkhttp/a/g/e;->b()Lbsgamesdkhttp/a/g/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsgamesdkhttp/a/g/e;->a(Ljavax/net/ssl/X509TrustManager;)Lbsgamesdkhttp/a/h/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end method
