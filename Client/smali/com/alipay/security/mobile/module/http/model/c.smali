.class public Lcom/alipay/security/mobile/module/http/model/c;
.super Lcom/alipay/security/mobile/module/http/model/a;


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:Ljava/lang/String; = "APPKEY_ERROR"

.field public static final g:Ljava/lang/String; = "SUCCESS"


# instance fields
.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/alipay/security/mobile/module/http/model/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/model/c;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 4

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/alipay/security/mobile/module/http/model/c;->a:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/model/c;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d

    :cond_10
    const-string v1, "APPKEY_ERROR"

    iget-object v2, p0, Lcom/alipay/security/mobile/module/http/model/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x3

    goto :goto_d
.end method

.method public b()Z
    .registers 3

    const-string v0, "1"

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/model/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/c;->k:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "0"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/c;->k:Ljava/lang/String;

    goto :goto_6
.end method
