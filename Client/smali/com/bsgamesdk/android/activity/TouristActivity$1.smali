.class Lcom/bsgamesdk/android/activity/TouristActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/TouristActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/TouristActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/TouristActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$1;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_22

    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$1;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    goto :goto_5

    :sswitch_c
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$1;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-static {v1, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_5

    :sswitch_16
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$1;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;Ljava/lang/String;I)V

    goto :goto_5

    :sswitch_data_22
    .sparse-switch
        0xc -> :sswitch_16
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_6
    .end sparse-switch
.end method
