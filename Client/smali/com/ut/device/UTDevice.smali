.class public Lcom/ut/device/UTDevice;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public static getAidAsync(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ut/device/AidCallback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
