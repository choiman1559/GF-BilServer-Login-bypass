.class Lcom/bsgamesdk/android/activity/Login_RegActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_6c

    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_5

    :sswitch_c
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_5

    :sswitch_16
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a()V

    goto :goto_5

    :sswitch_1c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_5

    :sswitch_22
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_5

    :sswitch_28
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->showAuthSubmit()V

    goto :goto_5

    :sswitch_2e
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->d(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_5

    :sswitch_34
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;I)V

    goto :goto_5

    :sswitch_40
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v2

    iget-object v2, v2, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v3

    iget-object v3, v3, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mMid:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v4

    iget-object v4, v4, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mUName:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_62
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;II)V

    goto :goto_5

    :sswitch_data_6c
    .sparse-switch
        0x3 -> :sswitch_6
        0xb -> :sswitch_2e
        0xc -> :sswitch_34
        0xd -> :sswitch_40
        0xe -> :sswitch_62
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_16
        0x3ec -> :sswitch_1c
        0x3ed -> :sswitch_22
        0x3ee -> :sswitch_28
    .end sparse-switch
.end method
