.class public Lcom/bilibili/baseconnect/StrategyInfo;
.super Ljava/lang/Object;


# instance fields
.field private brand:Ljava/lang/String;

.field private key_brand:I

.field private key_model:I

.field private key_sdkVer:I

.field private key_sysVer:I

.field private model:Ljava/lang/String;

.field private sdkVer:Ljava/lang/String;

.field private sysVer:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    if-ne v2, v7, :cond_4e

    array-length v2, v1

    if-ne v2, v7, :cond_4e

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->sysVer:I

    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->sdkVer:Ljava/lang/String;

    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->brand:Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->model:Ljava/lang/String;

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->key_sysVer:I

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->key_sdkVer:I

    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->key_brand:I

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/baseconnect/StrategyInfo;->key_model:I

    :cond_4e
    return-void
.end method

.method private getBrand()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_a
.end method

.method private getModel()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_a
.end method

.method private getSysVer()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private matchBrand()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->key_brand:I

    packed-switch v1, :pswitch_data_20

    :cond_6
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->getBrand()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_15
    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->getBrand()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_15
    .end packed-switch
.end method

.method private matchModel()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->key_model:I

    packed-switch v1, :pswitch_data_20

    :cond_6
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_15
    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_15
    .end packed-switch
.end method

.method private matchSdkVer(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "0"

    iget-object v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->sdkVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/bilibili/baseconnect/StrategyInfo;->sdkVer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private matchSysVer()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->key_sysVer:I

    packed-switch v2, :pswitch_data_30

    :cond_7
    :goto_7
    return v0

    :pswitch_8
    iget v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->sysVer:I

    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->getSysVer()I

    move-result v3

    if-ne v2, v3, :cond_7

    move v0, v1

    goto :goto_7

    :pswitch_12
    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->getSysVer()I

    move-result v2

    iget v3, p0, Lcom/bilibili/baseconnect/StrategyInfo;->sysVer:I

    if-le v2, v3, :cond_7

    move v0, v1

    goto :goto_7

    :pswitch_1c
    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->getSysVer()I

    move-result v2

    iget v3, p0, Lcom/bilibili/baseconnect/StrategyInfo;->sysVer:I

    if-ge v2, v3, :cond_7

    move v0, v1

    goto :goto_7

    :pswitch_26
    iget v2, p0, Lcom/bilibili/baseconnect/StrategyInfo;->sysVer:I

    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->getSysVer()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_7

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public needInit(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->matchSysVer()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/bilibili/baseconnect/StrategyInfo;->matchSdkVer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->matchBrand()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/bilibili/baseconnect/StrategyInfo;->matchModel()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
