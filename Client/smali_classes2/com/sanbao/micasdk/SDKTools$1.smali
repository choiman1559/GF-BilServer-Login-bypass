.class Lcom/sanbao/micasdk/SDKTools$1;
.super Landroid/content/BroadcastReceiver;
.source "SDKTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sanbao/micasdk/SDKTools;->registerBatteryChangedReceiver(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 62
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "batteryLevel":I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, "batteryMax":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    invoke-static {v2}, Lcom/sanbao/micasdk/SDKTools;->access$1(I)V

    .line 67
    .end local v0    # "batteryLevel":I
    .end local v1    # "batteryMax":I
    :cond_21
    return-void
.end method
