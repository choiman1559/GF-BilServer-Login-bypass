.class Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity$8;->a([Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity$8;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->c:Z

    if-nez v0, :cond_58

    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    const-string v1, "1"

    const-string v2, "1"

    const-string v3, "0"

    const-string v4, "doPaySubmit"

    const-string v5, "resTourist"

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "local_check"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_check"

    const-string v1, "0"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "doPaySubmit"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    const-string v1, "resTourist"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "PaymentActivity"

    const-string v3, "check"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_58
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->w(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/helper/c;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;->a:Lcom/bsgamesdk/android/activity/PaymentActivity$8;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->finish()V

    return-void
.end method
