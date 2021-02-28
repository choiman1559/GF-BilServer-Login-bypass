.class public final Lcom/alipay/apmobilesecuritysdk/b/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/apmobilesecuritysdk/b/a;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/b/a;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/b/a;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/b/a;->b:Lcom/alipay/apmobilesecuritysdk/b/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/b/a;->a:I

    return-void
.end method

.method public static a()Lcom/alipay/apmobilesecuritysdk/b/a;
    .registers 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/b/a;->b:Lcom/alipay/apmobilesecuritysdk/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/alipay/apmobilesecuritysdk/b/a;->a:I

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/b/a;->a:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/alipay/security/mobile/module/http/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/b/a;->a:I

    packed-switch v0, :pswitch_data_20

    const-string v0, "https://mobilegw.alipay.com/mgw.htm"

    goto :goto_a

    :pswitch_13
    const-string v0, "http://mobilegw.stable.alipay.net/mgw.htm"

    goto :goto_a

    :pswitch_16
    const-string v0, "http://mobilegw-1-64.test.alipay.net/mgw.htm"

    goto :goto_a

    :pswitch_19
    const-string v0, "https://mobilegw.alipay.com/mgw.htm"

    goto :goto_a

    :pswitch_1c
    const-string v0, "http://mobilegw.aaa.alipay.net/mgw.htm"

    goto :goto_a

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_19
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method
