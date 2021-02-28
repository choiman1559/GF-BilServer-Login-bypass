.class public Lcom/bilibili/deviceutils/BatterReciever;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static batteryHealth:Ljava/lang/String;

.field public static batteryLevel:Ljava/lang/String;

.field public static batteryTemp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "unknown"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryLevel:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryTemp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "unknown"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryLevel:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temperature"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryTemp:Ljava/lang/String;

    const-string v0, "health"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_74

    :goto_51
    sget-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    sget-object v1, Lcom/bilibili/deviceutils/BatterReciever;->batteryLevel:Ljava/lang/String;

    sget-object v2, Lcom/bilibili/deviceutils/BatterReciever;->batteryTemp:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bilibili/deviceutils/BilibiliDevice;->setBatterInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    return-void

    :pswitch_5b
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    goto :goto_51

    :pswitch_60
    const-string v0, "\u72b6\u6001\u826f\u597d"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    goto :goto_51

    :pswitch_65
    const-string v0, "\u7535\u6c60\u6ca1\u6709\u7535"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    goto :goto_51

    :pswitch_6a
    const-string v0, "\u7535\u6c60\u7535\u538b\u8fc7\u9ad8"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    goto :goto_51

    :pswitch_6f
    const-string v0, "\u7535\u6c60\u8fc7\u70ed"

    sput-object v0, Lcom/bilibili/deviceutils/BatterReciever;->batteryHealth:Ljava/lang/String;

    goto :goto_51

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_60
        :pswitch_6f
        :pswitch_65
        :pswitch_6a
    .end packed-switch
.end method
