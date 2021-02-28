.class public Lcom/alipay/security/mobile/module/http/v2/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/http/v2/a;


# static fields
.field private static a:Lcom/alipay/security/mobile/module/http/v2/a;

.field private static b:Lcom/alipay/security/mobile/module/http/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    if-nez v0, :cond_15

    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    new-instance v0, Lcom/alipay/security/mobile/module/http/v2/b;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/http/v2/b;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    :cond_15
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/alipay/security/mobile/module/http/model/d;)Lcom/alipay/security/mobile/module/http/model/c;
    .registers 4

    invoke-static {p1}, Lcom/alipay/security/mobile/module/http/model/b;->a(Lcom/alipay/security/mobile/module/http/model/d;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

    move-result-object v0

    sget-object v1, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/module/http/a;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/http/model/b;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/security/mobile/module/http/model/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/http/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
