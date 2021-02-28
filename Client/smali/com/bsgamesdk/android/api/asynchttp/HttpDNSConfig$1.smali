.class final Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->queryAysn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig;->dns:Lcom/qiniu/android/dns/DnsManager;

    iget-object v1, p0, Lcom/bsgamesdk/android/api/asynchttp/HttpDNSConfig$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/dns/DnsManager;->query(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_7
.end method
