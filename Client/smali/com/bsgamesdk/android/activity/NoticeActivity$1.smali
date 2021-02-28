.class Lcom/bsgamesdk/android/activity/NoticeActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/NoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/NoticeActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$1;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    new-instance v0, Lcom/bsgamesdk/android/helper/b;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$1;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/bsgamesdk/android/activity/NoticeActivity;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/helper/b;->a(IZ)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$1;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->finish()V

    return-void
.end method
