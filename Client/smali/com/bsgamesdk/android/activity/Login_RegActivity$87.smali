.class Lcom/bsgamesdk/android/activity/Login_RegActivity$87;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$87;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$87;->a:I

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$87;->a:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$87;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$87;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aD(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lorg/json/JSONObject;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$87;->a:I

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$87;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->y(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_11
.end method
