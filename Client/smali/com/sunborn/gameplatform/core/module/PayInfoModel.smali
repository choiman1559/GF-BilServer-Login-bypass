.class public Lcom/sunborn/gameplatform/core/module/PayInfoModel;
.super Ljava/lang/Object;
.source "PayInfoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public account_id:Ljava/lang/String;

.field public channel_sign:Ljava/lang/String;

.field public char_id:Ljava/lang/String;

.field public game_order_id:Ljava/lang/String;

.field public money:D

.field public order_sdk:Ljava/lang/String;

.field public payType:I

.field public product_id:Ljava/lang/String;

.field public product_name:Ljava/lang/String;

.field public sdk_order_id:Ljava/lang/String;

.field public zone_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "money"    # D
    .param p3, "product_id"    # Ljava/lang/String;
    .param p4, "product_name"    # Ljava/lang/String;
    .param p5, "serverid"    # Ljava/lang/String;
    .param p6, "charid"    # Ljava/lang/String;
    .param p7, "accountid"    # Ljava/lang/String;
    .param p8, "order_id"    # Ljava/lang/String;
    .param p9, "order_sdk"    # Ljava/lang/String;
    .param p10, "payType"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 16
    .local v0, "bg":Ljava/math/BigDecimal;
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->money:D

    .line 17
    iput-object p3, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->product_id:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->product_name:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->zone_id:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->char_id:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->account_id:Ljava/lang/String;

    .line 22
    iput-object p8, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->game_order_id:Ljava/lang/String;

    .line 23
    iput-object p9, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->order_sdk:Ljava/lang/String;

    .line 24
    iput p10, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->payType:I

    .line 25
    return-void
.end method


# virtual methods
.method public getHashMap()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "jsonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "zone_id"

    iget-object v2, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "mark"

    iget-object v2, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->game_order_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "third_product_id"

    iget-object v2, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->product_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "pay_type"

    iget v2, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->payType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "monetary_unit"

    const-string v2, "CNY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "money"

    iget-wide v2, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->money:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "subject"

    iget-object v2, p0, Lcom/sunborn/gameplatform/core/module/PayInfoModel;->product_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v0
.end method
