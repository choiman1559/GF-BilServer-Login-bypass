.class Lcom/sanbao/micasdk/SDKTools$BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDKTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sanbao/micasdk/SDKTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sanbao/micasdk/SDKTools;


# direct methods
.method constructor <init>(Lcom/sanbao/micasdk/SDKTools;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sanbao/micasdk/SDKTools$BatteryChangedReceiver;->this$0:Lcom/sanbao/micasdk/SDKTools;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 142
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 147
    return-void
.end method
