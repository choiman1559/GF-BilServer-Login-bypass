.class public Lcom/alipay/sdk/app/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static final c:Lcom/alipay/sdk/data/a$a;

.field private static final d:Lcom/alipay/sdk/data/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ""

    sput-object v0, Lcom/alipay/sdk/app/i;->b:Ljava/lang/String;

    new-instance v0, Lcom/alipay/sdk/data/a$a;

    const-string v1, "com.eg.android.AlipayGphone"

    const/16 v2, 0x49

    const-string v3, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/data/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/i;->c:Lcom/alipay/sdk/data/a$a;

    new-instance v0, Lcom/alipay/sdk/data/a$a;

    const-string v1, "hk.alipay.wallet"

    const/16 v2, 0x28

    const-string v3, "e6b1bdcb890370f2f2419fe06d0fdf7628ad0083d52da1ecfe991164711bbf9297e75353de96f1740695d07610567b1240549af9cbd87d06919ac31c859ad37ab6907c311b4756e1e208775989a4f691bff4bbbc58174d2a96b1d0d970a05114d7ee57dfc33b1bafaf6e0d820e838427018b6435f903df04ba7fd34d73f843df9434b164e0220baabb10c8978c3f4c6b7da79d8220a968356d15090dea07df9606f665cbec14d218dd3d691cce2866a58840971b6a57b76af88b1a65fdffd2c080281a6ab20be5879e0330eb7ff70871ce684e7174ada5dc3159c461375a0796b17ce7beca83cf34f65976d237aee993db48d34a4e344f4d8b7e99119168bdd7"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/data/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/app/i;->d:Lcom/alipay/sdk/data/a$a;

    sget-object v0, Lcom/alipay/sdk/app/i;->c:Lcom/alipay/sdk/data/a$a;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/app/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sput-object p0, Lcom/alipay/sdk/app/i;->b:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    :cond_a
    :goto_a
    packed-switch v0, :pswitch_data_30

    sget-object v0, Lcom/alipay/sdk/app/i;->c:Lcom/alipay/sdk/data/a$a;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    :goto_15
    return-void

    :pswitch_16
    const-string v1, "hk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    :pswitch_20
    sget-object v0, Lcom/alipay/sdk/app/i;->d:Lcom/alipay/sdk/data/a$a;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    goto :goto_15

    nop

    :pswitch_data_2a
    .packed-switch 0xd03
        :pswitch_16
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public static b()Z
    .registers 2

    sget-object v0, Lcom/alipay/sdk/app/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "cn"

    sget-object v1, Lcom/alipay/sdk/app/i;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
