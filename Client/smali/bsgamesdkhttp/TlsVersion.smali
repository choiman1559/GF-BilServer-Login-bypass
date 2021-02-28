.class public final enum Lbsgamesdkhttp/TlsVersion;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbsgamesdkhttp/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SSL_3_0:Lbsgamesdkhttp/TlsVersion;

.field public static final enum TLS_1_0:Lbsgamesdkhttp/TlsVersion;

.field public static final enum TLS_1_1:Lbsgamesdkhttp/TlsVersion;

.field public static final enum TLS_1_2:Lbsgamesdkhttp/TlsVersion;

.field public static final enum TLS_1_3:Lbsgamesdkhttp/TlsVersion;

.field private static final synthetic b:[Lbsgamesdkhttp/TlsVersion;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lbsgamesdkhttp/TlsVersion;

    const-string v1, "TLS_1_3"

    const-string v2, "TLSv1.3"

    invoke-direct {v0, v1, v3, v2}, Lbsgamesdkhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/TlsVersion;->TLS_1_3:Lbsgamesdkhttp/TlsVersion;

    new-instance v0, Lbsgamesdkhttp/TlsVersion;

    const-string v1, "TLS_1_2"

    const-string v2, "TLSv1.2"

    invoke-direct {v0, v1, v4, v2}, Lbsgamesdkhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/TlsVersion;->TLS_1_2:Lbsgamesdkhttp/TlsVersion;

    new-instance v0, Lbsgamesdkhttp/TlsVersion;

    const-string v1, "TLS_1_1"

    const-string v2, "TLSv1.1"

    invoke-direct {v0, v1, v5, v2}, Lbsgamesdkhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/TlsVersion;->TLS_1_1:Lbsgamesdkhttp/TlsVersion;

    new-instance v0, Lbsgamesdkhttp/TlsVersion;

    const-string v1, "TLS_1_0"

    const-string v2, "TLSv1"

    invoke-direct {v0, v1, v6, v2}, Lbsgamesdkhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/TlsVersion;->TLS_1_0:Lbsgamesdkhttp/TlsVersion;

    new-instance v0, Lbsgamesdkhttp/TlsVersion;

    const-string v1, "SSL_3_0"

    const-string v2, "SSLv3"

    invoke-direct {v0, v1, v7, v2}, Lbsgamesdkhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbsgamesdkhttp/TlsVersion;->SSL_3_0:Lbsgamesdkhttp/TlsVersion;

    const/4 v0, 0x5

    new-array v0, v0, [Lbsgamesdkhttp/TlsVersion;

    sget-object v1, Lbsgamesdkhttp/TlsVersion;->TLS_1_3:Lbsgamesdkhttp/TlsVersion;

    aput-object v1, v0, v3

    sget-object v1, Lbsgamesdkhttp/TlsVersion;->TLS_1_2:Lbsgamesdkhttp/TlsVersion;

    aput-object v1, v0, v4

    sget-object v1, Lbsgamesdkhttp/TlsVersion;->TLS_1_1:Lbsgamesdkhttp/TlsVersion;

    aput-object v1, v0, v5

    sget-object v1, Lbsgamesdkhttp/TlsVersion;->TLS_1_0:Lbsgamesdkhttp/TlsVersion;

    aput-object v1, v0, v6

    sget-object v1, Lbsgamesdkhttp/TlsVersion;->SSL_3_0:Lbsgamesdkhttp/TlsVersion;

    aput-object v1, v0, v7

    sput-object v0, Lbsgamesdkhttp/TlsVersion;->b:[Lbsgamesdkhttp/TlsVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbsgamesdkhttp/TlsVersion;->a:Ljava/lang/String;

    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lbsgamesdkhttp/TlsVersion;
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_7c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_24
    const-string v1, "TLSv1.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_2e
    const-string v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_38
    const-string v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_42
    const-string v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_4c
    const-string v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :pswitch_56
    sget-object v0, Lbsgamesdkhttp/TlsVersion;->TLS_1_3:Lbsgamesdkhttp/TlsVersion;

    :goto_58
    return-object v0

    :pswitch_59
    sget-object v0, Lbsgamesdkhttp/TlsVersion;->TLS_1_2:Lbsgamesdkhttp/TlsVersion;

    goto :goto_58

    :pswitch_5c
    sget-object v0, Lbsgamesdkhttp/TlsVersion;->TLS_1_1:Lbsgamesdkhttp/TlsVersion;

    goto :goto_58

    :pswitch_5f
    sget-object v0, Lbsgamesdkhttp/TlsVersion;->TLS_1_0:Lbsgamesdkhttp/TlsVersion;

    goto :goto_58

    :pswitch_62
    sget-object v0, Lbsgamesdkhttp/TlsVersion;->SSL_3_0:Lbsgamesdkhttp/TlsVersion;

    goto :goto_58

    nop

    :sswitch_data_66
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_38
        -0x1dfc3f26 -> :sswitch_2e
        -0x1dfc3f25 -> :sswitch_24
        0x4b88569 -> :sswitch_4c
        0x4c38896 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbsgamesdkhttp/TlsVersion;
    .registers 2

    const-class v0, Lbsgamesdkhttp/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbsgamesdkhttp/TlsVersion;

    return-object v0
.end method

.method public static values()[Lbsgamesdkhttp/TlsVersion;
    .registers 1

    sget-object v0, Lbsgamesdkhttp/TlsVersion;->b:[Lbsgamesdkhttp/TlsVersion;

    invoke-virtual {v0}, [Lbsgamesdkhttp/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsgamesdkhttp/TlsVersion;

    return-object v0
.end method
