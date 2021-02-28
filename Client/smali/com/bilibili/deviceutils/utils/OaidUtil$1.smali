.class Lcom/bilibili/deviceutils/utils/OaidUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/deviceutils/utils/MiitHelper$AppIdsUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/utils/OaidUtil;->getAllID(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/deviceutils/utils/OaidUtil;


# direct methods
.method constructor <init>(Lcom/bilibili/deviceutils/utils/OaidUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/utils/OaidUtil$1;->this$0:Lcom/bilibili/deviceutils/utils/OaidUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnIdsAvalid(Lcom/bilibili/deviceutils/entity/OaidBean;)V
    .registers 5

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->setOaid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getAaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->setAaid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getVaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->setVaid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil$1;->this$0:Lcom/bilibili/deviceutils/utils/OaidUtil;

    iget-object v0, v0, Lcom/bilibili/deviceutils/utils/OaidUtil;->oAidCallBack:Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/deviceutils/utils/OaidUtil$1;->this$0:Lcom/bilibili/deviceutils/utils/OaidUtil;

    iget-object v0, v0, Lcom/bilibili/deviceutils/utils/OaidUtil;->oAidCallBack:Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getOaid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;->callback(Ljava/lang/String;)V

    :cond_32
    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/deviceutils/BilibiliDevice;->setOaid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "oaid"

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getAaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "aaid"

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getAaid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getVaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    sget-object v0, Lcom/bilibili/deviceutils/BilibiliDeviceGame;->bsGameMap:Ljava/util/Map;

    const-string v1, "vaid"

    invoke-virtual {p1}, Lcom/bilibili/deviceutils/entity/OaidBean;->getVaid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    return-void
.end method
