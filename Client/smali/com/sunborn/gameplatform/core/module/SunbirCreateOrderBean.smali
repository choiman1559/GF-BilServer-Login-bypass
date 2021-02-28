.class public Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;
.super Lcom/sunborn/gameplatform/core/module/BaseResultBean;
.source "SunbirCreateOrderBean.java"


# instance fields
.field public order_sign:Ljava/lang/String;

.field public payplat_order_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/sunborn/gameplatform/core/module/BaseResultBean;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->payplat_order_id:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/module/SunbirCreateOrderBean;->order_sign:Ljava/lang/String;

    .line 11
    return-void
.end method
