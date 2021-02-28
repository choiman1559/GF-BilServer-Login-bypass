.class public Lcom/alipay/security/mobile/module/http/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/b;

    move-result-object v0

    goto :goto_3
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/v2/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;

    move-result-object v0

    goto :goto_3
.end method
