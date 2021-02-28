.class public Lcom/alipay/security/mobile/module/http/model/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/security/mobile/module/http/model/c;
    .registers 6

    new-instance v1, Lcom/alipay/security/mobile/module/http/model/c;

    invoke-direct {v1}, Lcom/alipay/security/mobile/module/http/model/c;-><init>()V

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-boolean v0, p0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;->success:Z

    iput-boolean v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->a:Z

    iget-object v0, p0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;->resultCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;->resultData:Ljava/util/Map;

    if-eqz v2, :cond_a0

    const-string v0, "apdid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->h:Ljava/lang/String;

    const-string v0, "apdidToken"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->i:Ljava/lang/String;

    const-string v0, "dynamicKey"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->l:Ljava/lang/String;

    const-string v0, "timeInterval"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->m:Ljava/lang/String;

    const-string v0, "webrtcUrl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->o:Ljava/lang/String;

    const-string v0, "drmSwitch"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_73

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/security/mobile/module/http/model/c;->j:Ljava/lang/String;

    :cond_73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_8e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->k:Ljava/lang/String;

    :cond_8e
    const-string v0, "apse_degrade"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string v0, "apse_degrade"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/security/mobile/module/http/model/c;->p:Ljava/lang/String;

    :cond_a0
    move-object v0, v1

    goto/16 :goto_8
.end method

.method public static a(Lcom/alipay/security/mobile/module/http/model/d;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;
    .registers 5

    new-instance v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

    invoke-direct {v0}, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;-><init>()V

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/model/d;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->os:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/model/d;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->rpcVersion:Ljava/lang/String;

    const-string v1, "1"

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizType:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    iget-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string v2, "apdid"

    iget-object v3, p0, Lcom/alipay/security/mobile/module/http/model/d;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string v2, "apdidToken"

    iget-object v3, p0, Lcom/alipay/security/mobile/module/http/model/d;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string v2, "umidToken"

    iget-object v3, p0, Lcom/alipay/security/mobile/module/http/model/d;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string v2, "dynamicKey"

    iget-object v3, p0, Lcom/alipay/security/mobile/module/http/model/d;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/model/d;->f:Ljava/util/Map;

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->deviceData:Ljava/util/Map;

    goto :goto_8
.end method
