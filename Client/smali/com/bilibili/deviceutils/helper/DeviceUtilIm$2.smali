.class Lcom/bilibili/deviceutils/helper/DeviceUtilIm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->getAppList()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;


# direct methods
.method constructor <init>(Lcom/bilibili/deviceutils/helper/DeviceUtilIm;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$2;->this$0:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .registers 9

    const-wide/16 v4, 0x3e8

    iget-wide v0, p2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    div-long/2addr v0, v4

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$2;->compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method
