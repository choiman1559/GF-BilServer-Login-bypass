.class public Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Resp;
.super Lcom/tencent/mm/opensdk/modelbase/BaseResp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# instance fields
.field public cardItemList:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Resp;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Resp;->cardItemList:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Resp;->cardItemList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Resp;->cardItemList:Ljava/lang/String;

    :goto_13
    return-void

    :cond_14
    const-string v0, "MicroMsg.ChooseCardFromWXCardPackage"

    const-string v1, "cardItemList is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_list"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Resp;->cardItemList:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
