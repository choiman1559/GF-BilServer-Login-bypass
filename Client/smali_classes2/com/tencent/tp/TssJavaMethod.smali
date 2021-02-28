.class public Lcom/tencent/tp/TssJavaMethod;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 11

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-ge v0, v8, :cond_e

    :goto_d
    return-void

    :cond_e
    aget-object v0, v6, v2

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    move v0, v1

    :goto_19
    aget-object v3, v6, v1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4b

    move v3, v1

    :goto_24
    const/4 v4, 0x2

    aget-object v4, v6, v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4d

    move v4, v1

    :goto_30
    const-string v5, "0"

    array-length v7, v6

    if-lt v7, v9, :cond_53

    aget-object v7, v6, v8

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4f

    :goto_3f
    array-length v2, v6

    const/4 v7, 0x5

    if-lt v2, v7, :cond_51

    aget-object v2, v6, v9

    :goto_45
    invoke-static {v0, v3, v4, v1, v2}, Lcom/tencent/tp/w;->a(ZZZZLjava/lang/String;)V

    goto :goto_d

    :cond_49
    move v0, v2

    goto :goto_19

    :cond_4b
    move v3, v2

    goto :goto_24

    :cond_4d
    move v4, v2

    goto :goto_30

    :cond_4f
    move v1, v2

    goto :goto_3f

    :cond_51
    move-object v2, v5

    goto :goto_45

    :cond_53
    move v1, v2

    goto :goto_3f
.end method

.method private static b(Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tp/v;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/tencent/tp/v;->b(Landroid/content/Context;)Z

    move-result v0

    :goto_b
    const-string v2, "pkyvoz_vyw_zivwgzy_jqzm_pnw:%n:0:0"

    invoke-static {v2}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_22

    const-string v0, "1"

    :goto_18
    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    return-void

    :cond_22
    const-string v0, "0"

    goto :goto_18

    :cond_25
    move v0, v1

    goto :goto_b
.end method

.method public static initialize()V
    .registers 0

    invoke-static {}, Lcom/tencent/tp/v;->a()V

    return-void
.end method

.method public static scan()V
    .registers 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const-string v1, "0"

    invoke-static {v0, v2, v2, v2, v1}, Lcom/tencent/tp/w;->a(ZZZZLjava/lang/String;)V

    return-void
.end method

.method public static sendCmd(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/tencent/tp/TssJavaMethod;->sendCmdEx(Ljava/lang/String;)I

    return-void
.end method

.method public static sendCmdEx(Ljava/lang/String;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    const-string v0, "didodvgduz"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/tencent/tp/v;->a()V

    :cond_13
    :goto_13
    const/4 v0, 0x0

    goto :goto_3

    :cond_15
    const-string v0, "ho:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/MainThreadDispatcher2;->SendCmd(Ljava/lang/String;)V

    goto :goto_13

    :cond_2a
    const-string v0, "dia_xg:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/TssJavaMethod;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_3f
    const-string v0, "dn_hvdi_gjjkzm"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    const-string v0, "DnHvdiOcmzvy"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_5f
    const-string v0, "hnbwjs:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "cdyz_hnbwjs:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_77
    invoke-static {}, Lcom/tencent/tp/g;->a()Lcom/tencent/tp/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tp/g;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_7f
    const-string v0, "yg_adgz:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "pkyvoz_vyw_zivwgzy_jqzm_pnw:"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-static {p0}, Lcom/tencent/tp/TssJavaMethod;->b(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_9c
    const-string v0, "zszx|"

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*#07#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)V

    goto/16 :goto_13
.end method
