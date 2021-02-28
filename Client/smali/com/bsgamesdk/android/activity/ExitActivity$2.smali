.class Lcom/bsgamesdk/android/activity/ExitActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/ExitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/ExitActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/ExitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/ExitActivity$2;->a:Lcom/bsgamesdk/android/activity/ExitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "result"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_11

    :goto_b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/ExitActivity$2;->a:Lcom/bsgamesdk/android/activity/ExitActivity;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/activity/ExitActivity;->a(Lorg/json/JSONObject;)V

    return-void

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_b
.end method
