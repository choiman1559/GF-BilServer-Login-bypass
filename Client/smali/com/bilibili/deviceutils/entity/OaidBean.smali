.class public Lcom/bilibili/deviceutils/entity/OaidBean;
.super Ljava/lang/Object;


# instance fields
.field private aaid:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private vaid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAaid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/deviceutils/entity/OaidBean;->aaid:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/deviceutils/entity/OaidBean;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public getVaid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bilibili/deviceutils/entity/OaidBean;->vaid:Ljava/lang/String;

    return-object v0
.end method

.method public setAaid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/entity/OaidBean;->aaid:Ljava/lang/String;

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/entity/OaidBean;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setVaid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/entity/OaidBean;->vaid:Ljava/lang/String;

    return-void
.end method
