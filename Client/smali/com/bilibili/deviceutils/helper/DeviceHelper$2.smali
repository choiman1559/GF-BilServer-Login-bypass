.class final Lcom/bilibili/deviceutils/helper/DeviceHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/helper/DeviceHelper;->restSize(Ljava/util/List;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .registers 5

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v1, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/deviceutils/helper/DeviceHelper$2;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
