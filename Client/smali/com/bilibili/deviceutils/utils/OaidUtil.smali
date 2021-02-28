.class public Lcom/bilibili/deviceutils/utils/OaidUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;
    }
.end annotation


# instance fields
.field appIdsUpdater:Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;

.field miitHelpe:Lcom/bilibili/deviceutils/utils/MiitHelper;

.field oAidCallBack:Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllID(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    new-instance v0, Lcom/bilibili/deviceutils/utils/OaidUtil$1;

    invoke-direct {v0, p0}, Lcom/bilibili/deviceutils/utils/OaidUtil$1;-><init>(Lcom/bilibili/deviceutils/utils/OaidUtil;)V

    iput-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->appIdsUpdater:Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;

    new-instance v0, Lcom/bilibili/deviceutils/utils/MiitHelper;

    iget-object v2, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->appIdsUpdater:Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;

    invoke-direct {v0, v2}, Lcom/bilibili/deviceutils/utils/MiitHelper;-><init>(Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;)V

    iput-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->miitHelpe:Lcom/bilibili/deviceutils/utils/MiitHelper;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_f0

    :cond_25
    :goto_25
    packed-switch v0, :pswitch_data_126

    goto :goto_c

    :pswitch_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->miitHelpe:Lcom/bilibili/deviceutils/utils/MiitHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/deviceutils/utils/MiitHelper;->getDeviceIds(Landroid/content/Context;)V

    goto :goto_c

    :catch_35
    move-exception v0

    goto :goto_c

    :sswitch_37
    const-string v2, "XIAOMI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x0

    goto :goto_25

    :sswitch_41
    const-string v2, "FERRMEOS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    goto :goto_25

    :sswitch_4b
    const-string v2, "ZTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x2

    goto :goto_25

    :sswitch_55
    const-string v2, "SSUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x3

    goto :goto_25

    :sswitch_5f
    const-string v2, "ONEPLUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x4

    goto :goto_25

    :sswitch_69
    const-string v2, "SAMSUNG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x5

    goto :goto_25

    :sswitch_73
    const-string v2, "MEIZU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x6

    goto :goto_25

    :sswitch_7d
    const-string v2, "NUBIA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x7

    goto :goto_25

    :sswitch_87
    const-string v2, "ASUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0x8

    goto :goto_25

    :sswitch_92
    const-string v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0x9

    goto :goto_25

    :sswitch_9d
    const-string v2, "LENOVO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0xa

    goto/16 :goto_25

    :sswitch_a9
    const-string v2, "OPPO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0xb

    goto/16 :goto_25

    :sswitch_b5
    const-string v2, "VIVO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0xc

    goto/16 :goto_25

    :pswitch_c1
    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->miitHelpe:Lcom/bilibili/deviceutils/utils/MiitHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/deviceutils/utils/MiitHelper;->getDeviceIds(Landroid/content/Context;)V

    goto/16 :goto_c

    :pswitch_c8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->miitHelpe:Lcom/bilibili/deviceutils/utils/MiitHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/deviceutils/utils/MiitHelper;->getDeviceIds(Landroid/content/Context;)V

    goto/16 :goto_c

    :pswitch_d5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->miitHelpe:Lcom/bilibili/deviceutils/utils/MiitHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/deviceutils/utils/MiitHelper;->getDeviceIds(Landroid/content/Context;)V

    goto/16 :goto_c

    :pswitch_e2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->miitHelpe:Lcom/bilibili/deviceutils/utils/MiitHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/deviceutils/utils/MiitHelper;->getDeviceIds(Landroid/content/Context;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ed} :catch_35

    goto/16 :goto_c

    nop

    :sswitch_data_f0
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_9d
        -0x660bb426 -> :sswitch_69
        -0x65b21745 -> :sswitch_37
        -0x23e7db20 -> :sswitch_5f
        0x15c4b -> :sswitch_4b
        0x1ece50 -> :sswitch_87
        0x251fa0 -> :sswitch_a9
        0x26fcf4 -> :sswitch_55
        0x2834ac -> :sswitch_b5
        0x45d8cac -> :sswitch_73
        0x472cdb3 -> :sswitch_7d
        0x3a35353b -> :sswitch_41
        0x7fa995e7 -> :sswitch_92
    .end sparse-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_c1
        :pswitch_c8
        :pswitch_d5
        :pswitch_e2
    .end packed-switch
.end method

.method public getOaid(Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/utils/OaidUtil;->oAidCallBack:Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;

    return-void
.end method
