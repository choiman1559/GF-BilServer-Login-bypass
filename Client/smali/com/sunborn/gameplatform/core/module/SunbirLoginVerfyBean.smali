.class public Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;
.super Lcom/sunborn/gameplatform/core/module/BaseResultBean;
.source "SunbirLoginVerfyBean.java"


# instance fields
.field public extend:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public open_id:Ljava/lang/String;

.field public result:I

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sunborn/gameplatform/core/module/BaseResultBean;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/sunborn/gameplatform/core/module/SunbirLoginVerfyBean;->msg:Ljava/lang/String;

    .line 21
    return-void
.end method
