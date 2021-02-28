.class Lcom/bsgamesdk/android/activity/RegisterActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/RegisterActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$1;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$1;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->a(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$1;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->b(Lcom/bsgamesdk/android/activity/RegisterActivity;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
