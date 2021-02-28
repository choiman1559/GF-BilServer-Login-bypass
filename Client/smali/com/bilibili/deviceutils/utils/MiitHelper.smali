.class public Lcom/bilibili/deviceutils/utils/MiitHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;
    }
.end annotation


# instance fields
.field private _listener:Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;


# direct methods
.method public constructor <init>(Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bilibili/deviceutils/utils/MiitHelper;->_listener:Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;

    return-void
.end method

.method private CallFromReflect(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0, p0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/supplier/IIdentifierListener;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/supplier/IdSupplier;)V
    .registers 7

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getVAID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getAAID()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bilibili/deviceutils/entity/OaidBean;

    invoke-direct {v3}, Lcom/bilibili/deviceutils/entity/OaidBean;-><init>()V

    invoke-virtual {v3, v0}, Lcom/bilibili/deviceutils/entity/OaidBean;->setOaid(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/bilibili/deviceutils/entity/OaidBean;->setAaid(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/bilibili/deviceutils/entity/OaidBean;->setVaid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/MiitHelper;->_listener:Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/MiitHelper;->_listener:Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;

    invoke-interface {v0, v3}, Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;->OnIdsAvalid(Lcom/bilibili/deviceutils/entity/OaidBean;)V

    goto :goto_2
.end method

.method public getDeviceIds(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bilibili/deviceutils/utils/MiitHelper;->CallFromReflect(Landroid/content/Context;)I

    return-void
.end method
