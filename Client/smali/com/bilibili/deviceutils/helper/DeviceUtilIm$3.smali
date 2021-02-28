.class Lcom/bilibili/deviceutils/helper/DeviceUtilIm$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->hasCupFile()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;


# direct methods
.method constructor <init>(Lcom/bilibili/deviceutils/helper/DeviceUtilIm;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$3;->this$0:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    const-string v0, "thermal_zone[0-9]+"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bilibili/deviceutils/helper/DeviceUtilIm$3;->this$0:Lcom/bilibili/deviceutils/helper/DeviceUtilIm;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/bilibili/deviceutils/helper/DeviceUtilIm;->access$002(Lcom/bilibili/deviceutils/helper/DeviceUtilIm;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
