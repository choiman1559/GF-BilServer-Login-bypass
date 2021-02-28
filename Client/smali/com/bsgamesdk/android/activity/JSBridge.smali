.class public Lcom/bsgamesdk/android/activity/JSBridge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/activity/JSBridge$OnBackListener;
    }
.end annotation


# static fields
.field public static final JSBRIDGE_FINISH:I = 0xbba

.field public static final TYPE_EVENT:Ljava/lang/String; = "event"

.field public static final TYPE_JS:Ljava/lang/String; = "type_js"

.field public static final TYPE_JSON:Ljava/lang/String; = "type_json"

.field public static final TYPE_STATE:Ljava/lang/String; = "state"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field public mListener:Lcom/bsgamesdk/android/activity/JSBridge$OnBackListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/bsgamesdk/android/activity/JSBridge$OnBackListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/JSBridge;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/JSBridge;->mListener:Lcom/bsgamesdk/android/activity/JSBridge$OnBackListener;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/JSBridge;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type_js"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type_json"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xbba

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type_js"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type_json"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xbba

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public finishWithJson(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    const-string v4, "-1"

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_23
    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_31
    const-string v0, "1"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "agreement"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/JSBridge;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->mListener:Lcom/bsgamesdk/android/activity/JSBridge$OnBackListener;

    invoke-interface {v0, p1}, Lcom/bsgamesdk/android/activity/JSBridge$OnBackListener;->onClick(Ljava/lang/String;)V

    :goto_48
    return-void

    :cond_49
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/activity/JSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_50} :catch_51

    goto :goto_48

    :catch_51
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, p1}, Lcom/bsgamesdk/android/activity/JSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_5a
    :try_start_5a
    const-string v0, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_6a
    const-string v0, "0"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    const-string v1, "2"

    invoke-direct {p0, v0, v1, p1}, Lcom/bsgamesdk/android/activity/JSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_7a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    const-string v1, "1"

    invoke-direct {p0, v0, v1, p1}, Lcom/bsgamesdk/android/activity/JSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_82
    const-string v0, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    const-string v1, "0"

    invoke-direct {p0, v0, v1, p1}, Lcom/bsgamesdk/android/activity/JSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_92
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, p1}, Lcom/bsgamesdk/android/activity/JSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_99} :catch_51

    goto :goto_48

    :cond_9a
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    const-string v1, "-1"

    invoke-direct {p0, v0, v1, p1}, Lcom/bsgamesdk/android/activity/JSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method

.method public goBackNativeWithJson(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/bsgamesdk/android/activity/JSBridge;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public makeToast(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/JSBridge;->a:Landroid/app/Activity;

    new-instance v1, Lcom/bsgamesdk/android/activity/JSBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/activity/JSBridge$1;-><init>(Lcom/bsgamesdk/android/activity/JSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
