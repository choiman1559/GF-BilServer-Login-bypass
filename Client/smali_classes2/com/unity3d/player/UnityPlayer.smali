.class public Lcom/unity3d/player/UnityPlayer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/unity3d/player/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/UnityPlayer$d;,
        Lcom/unity3d/player/UnityPlayer$g;,
        Lcom/unity3d/player/UnityPlayer$a;,
        Lcom/unity3d/player/UnityPlayer$c;,
        Lcom/unity3d/player/UnityPlayer$f;,
        Lcom/unity3d/player/UnityPlayer$b;,
        Lcom/unity3d/player/UnityPlayer$e;
    }
.end annotation


# static fields
.field public static currentActivity:Landroid/app/Activity;

.field private static t:Z


# instance fields
.field a:Lcom/unity3d/player/UnityPlayer$f;

.field b:Lcom/unity3d/player/i;

.field c:Landroid/app/AlertDialog;

.field private d:I

.field private e:Z

.field private f:Z

.field public finishLaunchScreenAds:Z

.field private g:Lcom/unity3d/player/n;

.field private final h:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Z

.field private k:Lcom/unity3d/player/UnityPlayer$c;

.field private l:Landroid/telephony/TelephonyManager;

.field private m:Lcom/unity3d/player/l;

.field private n:Lcom/unity3d/player/GoogleARProxy;

.field private o:Lcom/unity3d/player/GoogleARCoreApi;

.field private p:Lcom/unity3d/player/UnityPlayer$a;

.field private q:Lcom/unity3d/player/k;

.field private r:Landroid/content/Context;

.field private s:Landroid/view/SurfaceView;

.field public shouldShowLaunchScreenAds:Z

.field private u:Z

.field private v:Lcom/unity3d/player/q;

.field private w:Landroid/os/Handler;

.field private x:Ljava/util/Timer;

.field private y:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/unity3d/player/m;

    invoke-direct {v0}, Lcom/unity3d/player/m;-><init>()V

    invoke-virtual {v0}, Lcom/unity3d/player/m;->a()Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->t:Z

    const-string v0, "main"

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->loadLibraryStatic(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->d:I

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->e:Z

    iput-boolean v5, p0, Lcom/unity3d/player/UnityPlayer;->f:Z

    new-instance v0, Lcom/unity3d/player/n;

    invoke-direct {v0}, Lcom/unity3d/player/n;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$f;

    invoke-direct {v0, p0, v4}, Lcom/unity3d/player/UnityPlayer$f;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$c;

    invoke-direct {v0, p0, v4}, Lcom/unity3d/player/UnityPlayer$c;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityPlayer$c;

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/GoogleARCoreApi;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lcom/unity3d/player/UnityPlayer$a;

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->finishLaunchScreenAds:Z

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->shouldShowLaunchScreenAds:Z

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/i;

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->c:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->w:Landroid/os/Handler;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->x:Ljava/util/Timer;

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->y:Ljava/util/TimerTask;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5c

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->d:I

    :cond_5c
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_85

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->k()Z

    move-result v0

    if-eqz v0, :cond_85

    new-instance v0, Lcom/unity3d/player/l;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-static {}, Lcom/unity3d/player/l$a;->a()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSplashMode()I

    move-result v3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/l;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    :cond_85
    sget-boolean v0, Lcom/unity3d/player/h;->c:Z

    if-eqz v0, :cond_99

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_d4

    sget-object v0, Lcom/unity3d/player/h;->d:Lcom/unity3d/player/c;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$1;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$1;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-interface {v0, v1, v2}, Lcom/unity3d/player/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_99
    :goto_99
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->n()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/content/pm/ApplicationInfo;)V

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_da

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Failure to initialize!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/player/UnityPlayer$13;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$13;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Your hardware does not support this application, sorry!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_d3
    return-void

    :cond_d4
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->d()V

    goto :goto_99

    :cond_da
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->initJni(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->o()V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->d()Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->shouldShowLaunchScreenAds:Z

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/content/Context;)Lcom/unity3d/player/k;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    :cond_109
    :goto_109
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->bringChildToFront(Landroid/view/View;)V

    :cond_112
    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    const-class v0, Lcom/unity3d/player/UnityWebRequest;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeInitWebRequest(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$f;->start()V

    goto :goto_d3

    :cond_12b
    iput-boolean v5, p0, Lcom/unity3d/player/UnityPlayer;->finishLaunchScreenAds:Z

    goto :goto_109
.end method

.method static synthetic A(Lcom/unity3d/player/UnityPlayer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Landroid/os/Handler;

    return-object v0
.end method

.method public static UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native libraries not loaded - dropping message for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    :goto_23
    return-void

    :cond_24
    :try_start_24
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->nativeUnitySendMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_23

    :catch_2e
    move-exception v0

    goto :goto_23
.end method

.method private a(Landroid/content/Context;)Lcom/unity3d/player/k;
    .registers 12

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/unity3d/splash/services/core/device/StorageManager;->init(Landroid/content/Context;)Z

    sget-object v1, Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;

    invoke-static {v1}, Lcom/unity3d/splash/services/core/device/StorageManager;->getStorage(Lcom/unity3d/splash/services/core/device/StorageManager$StorageType;)Lcom/unity3d/splash/services/core/device/Storage;

    move-result-object v2

    if-nez v2, :cond_d

    :goto_c
    return-object v0

    :cond_d
    const-string v1, "splash-show"

    invoke-virtual {v2, v1}, Lcom/unity3d/splash/services/core/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_49

    :try_start_15
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/unity3d/player/j;

    invoke-direct {v4, v3}, Lcom/unity3d/player/j;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/unity3d/player/j;->a()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v4}, Lcom/unity3d/player/j;->g()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_49

    const-string v1, "splash show"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    const-string v1, "splash-show"

    invoke-virtual {v2, v1}, Lcom/unity3d/splash/services/core/device/Storage;->delete(Ljava/lang/String;)Z

    new-instance v1, Lcom/unity3d/player/k;

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {v1, v3, p0, v4}, Lcom/unity3d/player/k;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/j;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_46} :catch_48

    move-object v0, v1

    goto :goto_c

    :catch_48
    move-exception v1

    :cond_49
    const-string v1, "splash-show-no-fill"

    invoke-virtual {v2, v1}, Lcom/unity3d/splash/services/core/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_74

    :try_start_51
    const-string v2, "splash show no fill"

    invoke-static {v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/unity3d/player/j;

    invoke-direct {v3, v2}, Lcom/unity3d/player/j;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/unity3d/player/j;->a()Z

    move-result v1

    if-eqz v1, :cond_74

    new-instance v1, Lcom/unity3d/player/k;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v3}, Lcom/unity3d/player/k;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/j;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_71} :catch_73

    move-object v0, v1

    goto :goto_c

    :catch_73
    move-exception v1

    :cond_74
    const-string v1, "splash show nothing"

    invoke-static {v1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private a()V
    .registers 2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$20;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$20;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ILandroid/view/Surface;)V
    .registers 4

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/Surface;)Z

    goto :goto_4
.end method

.method private static a(Landroid/app/Activity;)V
    .registers 4

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.VR_LAUNCH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_23
    return-void
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/player/NativeLoader;->load(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/unity3d/player/n;->a()V

    :cond_f
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->e()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    const/4 v0, 0x1

    move v2, v0

    :goto_e
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v0, v1, Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_1d

    move-object v0, v1

    check-cast v0, Lcom/unity3d/player/UnityPlayer;

    if-eq v0, p0, :cond_2f

    :cond_1d
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_26
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_3f

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->removeView(Landroid/view/View;)V

    :cond_3f
    if-eqz v2, :cond_44

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    :cond_44
    return-void

    :cond_45
    move v2, v3

    goto :goto_e
.end method

.method private a(Lcom/unity3d/player/UnityPlayer$g;)V
    .registers 3

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->c(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeRecreateGfxState(ILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Landroid/view/Surface;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->a(ILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeFocusChanged(Z)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->k()Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "game_view_content_description"

    const-string v3, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$21;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$21;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->a()V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeMuteMasterAudio(Z)V

    return-void
.end method

.method private static b(Ljava/lang/Runnable;)V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(ILandroid/view/Surface;)Z
    .registers 8

    const/4 v4, 0x5

    const/4 v0, 0x0

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return v0

    :cond_9
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v0, Lcom/unity3d/player/UnityPlayer$25;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/unity3d/player/UnityPlayer$25;-><init>(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;Ljava/util/concurrent/Semaphore;)V

    if-nez p1, :cond_38

    if-nez p2, :cond_32

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v2, v0}, Lcom/unity3d/player/UnityPlayer$f;->b(Ljava/lang/Runnable;)V

    :goto_1c
    if-nez p2, :cond_30

    if-nez p1, :cond_30

    const-wide/16 v2, 0x4

    :try_start_22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x5

    const-string v1, "Timeout while trying detaching primary window."

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_30} :catch_3c

    :cond_30
    :goto_30
    const/4 v0, 0x1

    goto :goto_8

    :cond_32
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v2, v0}, Lcom/unity3d/player/UnityPlayer$f;->c(Ljava/lang/Runnable;)V

    goto :goto_1c

    :cond_38
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1c

    :catch_3c
    move-exception v0

    const-string v0, "UI thread got interrupted while trying to detach the primary window from the Unity Engine."

    invoke-static {v4, v0}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    goto :goto_30
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    if-eqz v0, :cond_25

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/unity3d/player/UnityPlayer$22;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$22;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Lcom/unity3d/player/UnityPlayer$23;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/player/UnityPlayer$23;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    :cond_25
    return-void
.end method

.method static synthetic c(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->b()V

    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    if-ne v0, v1, :cond_13

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private d()Landroid/view/SurfaceView;
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/UnityPlayer$24;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$24;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    return-object v0
.end method

.method static synthetic d(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->c()V

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_17
    return-void
.end method

.method static synthetic e(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRender()Z

    move-result v0

    return v0
.end method

.method private f()V
    .registers 8

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v5, v5}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->g()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Lcom/unity3d/player/UnityPlayer$4;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/UnityPlayer$4;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    :goto_26
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v2, v0}, Lcom/unity3d/player/UnityPlayer$f;->a(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x4

    :try_start_2d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x5

    const-string v2, "Timeout while trying to pause the Unity Engine."

    invoke-static {v0, v2}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_3b} :catch_60

    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    :cond_44
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0, v4}, Lcom/unity3d/player/n;->c(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0, v5}, Lcom/unity3d/player/n;->b(Z)V

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityPlayer$c;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_f

    :cond_5a
    new-instance v0, Lcom/unity3d/player/UnityPlayer$5;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/UnityPlayer$5;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    goto :goto_26

    :catch_60
    move-exception v0

    const-string v0, "UI thread got interrupted while trying to pause the Unity Engine."

    invoke-static {v6, v0}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    goto :goto_3b
.end method

.method static synthetic f(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->e()V

    return-void
.end method

.method static synthetic g(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/n;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    return-object v0
.end method

.method private g()V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeDone()V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->f()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/n;->c(Z)V

    new-instance v0, Lcom/unity3d/player/UnityPlayer$7;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$7;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$f;->b()V

    goto :goto_8
.end method

.method static synthetic h(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    return-void
.end method

.method static synthetic i(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/l;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    return-object v0
.end method

.method private static i()V
    .registers 2

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/unity3d/player/NativeLoader;->unload()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Unable to unload libraries from libmain.so"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {}, Lcom/unity3d/player/n;->b()V

    goto :goto_6
.end method

.method private final native initJni(Landroid/content/Context;)V
.end method

.method private j()Landroid/content/pm/ApplicationInfo;
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/l;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    return-object v0
.end method

.method static synthetic k(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    return-object v0
.end method

.method private k()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.splash-enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private l()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.tango-enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method static synthetic l(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Z

    return v0
.end method

.method protected static loadLibraryStatic(Ljava/lang/String;)Z
    .registers 6

    const/4 v4, 0x6

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1b

    const/4 v0, 0x1

    :goto_6
    return v0

    :catch_7
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    goto :goto_6

    :catch_1b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    goto :goto_6
.end method

.method static synthetic m(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.splash-ads-game-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private n()V
    .registers 3

    const/16 v1, 0x400

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_13
    return-void
.end method

.method static synthetic n(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->g()V

    return-void
.end method

.method private final native nativeDone()V
.end method

.method private final native nativeFocusChanged(Z)V
.end method

.method private final native nativeInitWebRequest(Ljava/lang/Class;)V
.end method

.method private final native nativeInjectEvent(Landroid/view/InputEvent;)Z
.end method

.method private final native nativeIsAutorotationOn()Z
.end method

.method private final native nativeLowMemory()V
.end method

.method private final native nativeMuteMasterAudio(Z)V
.end method

.method private final native nativePause()Z
.end method

.method private final native nativeRecreateGfxState(ILandroid/view/Surface;)V
.end method

.method private final native nativeRender()Z
.end method

.method private final native nativeRestartActivityIndicator()V
.end method

.method private final native nativeResume()V
.end method

.method private final native nativeSetInputString(Ljava/lang/String;)V
.end method

.method private final native nativeSoftInputCanceled()V
.end method

.method private final native nativeSoftInputClosed()V
.end method

.method private final native nativeSoftInputLostFocus()V
.end method

.method private static native nativeUnitySendMessage(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method private o()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_74

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "game_detail"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "game_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_ads"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "blocked"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, ""

    if-ne v1, v2, :cond_6b

    :cond_40
    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->shouldShowLaunchScreenAds:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->p()V

    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/splash/services/core/device/Device;->getSIMMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/UnityPlayer$d;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$d;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/unity3d/player/UnityPlayer$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_6b
    iput-boolean v5, p0, Lcom/unity3d/player/UnityPlayer;->shouldShowLaunchScreenAds:Z

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unity3d/splash/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/splash/IUnityAdsListener;)V

    goto :goto_4b

    :cond_74
    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->shouldShowLaunchScreenAds:Z

    goto :goto_4b
.end method

.method static synthetic o(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativePause()Z

    move-result v0

    return v0
.end method

.method private p()V
    .registers 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Sorry"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/player/UnityPlayer$17;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$17;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "The app is using unauthorized engine, please contact the publisher!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->c:Landroid/app/AlertDialog;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$18;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$18;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Landroid/os/Handler;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$19;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$19;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->y:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->x:Ljava/util/Timer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->y:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x927c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic p(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    return v0
.end method

.method static synthetic q(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeLowMemory()V

    return-void
.end method

.method static synthetic r(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    return-void
.end method

.method static synthetic s(Lcom/unity3d/player/UnityPlayer;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputCanceled()V

    return-void
.end method

.method static synthetic u(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputClosed()V

    return-void
.end method

.method static synthetic v(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->d()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/q;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    return-object v0
.end method

.method static synthetic x(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeIsAutorotationOn()Z

    move-result v0

    return v0
.end method

.method static synthetic y(Lcom/unity3d/player/UnityPlayer;)I
    .registers 2

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->d:I

    return v0
.end method

.method static synthetic z(Lcom/unity3d/player/UnityPlayer;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public NotifySplashAdsFinished()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->finishLaunchScreenAds:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$f;->e()V

    return-void
.end method

.method final a(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x5

    const-string v1, "Not running Unity from an Activity; ignored..."

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    goto :goto_d
.end method

.method protected addPhoneCallListener()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityPlayer$c;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public addViewToPlayer(Landroid/view/View;Z)Z
    .registers 9

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3e

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    :goto_7
    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_40

    move v4, v1

    :goto_11
    if-eqz p2, :cond_42

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_42

    move v0, v1

    :goto_1c
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_44

    move v3, v1

    :goto_25
    if-eqz v4, :cond_46

    if-nez v0, :cond_2b

    if-eqz v3, :cond_46

    :cond_2b
    :goto_2b
    if-nez v1, :cond_3d

    if-nez v4, :cond_34

    const-string v2, "addViewToPlayer: Failure adding view to hierarchy"

    invoke-static {v5, v2}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    :cond_34
    if-nez v0, :cond_3d

    if-nez v3, :cond_3d

    const-string v0, "addViewToPlayer: Failure removing old view from hierarchy"

    invoke-static {v5, v0}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    :cond_3d
    return v1

    :cond_3e
    const/4 v0, 0x0

    goto :goto_7

    :cond_40
    move v4, v2

    goto :goto_11

    :cond_42
    move v0, v2

    goto :goto_1c

    :cond_44
    move v3, v2

    goto :goto_25

    :cond_46
    move v1, v2

    goto :goto_2b
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_f
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    invoke-virtual {v0}, Lcom/unity3d/player/q;->c()V

    :cond_18
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->c()V

    :cond_21
    return-void
.end method

.method protected disableLogger()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/e;->a:Z

    return-void
.end method

.method public displayChanged(ILandroid/view/Surface;)Z
    .registers 4

    if-nez p1, :cond_f

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$2;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/Surface;)Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected executeGLThreadJobs()V
    .registers 2

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_e
    return-void
.end method

.method protected getBuilderUserId()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.builder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "device_detail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "device_id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/unity3d/splash/services/core/device/Device;->getUniqueEventId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6
.end method

.method public getSettings()Landroid/os/Bundle;
    .registers 2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getShowSplashSlogan()Ljava/lang/Boolean;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.splash-ads-slogan"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10
.end method

.method protected getShowSplashSloganHeight()I
    .registers 5

    const/16 v0, 0x96

    :try_start_2
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "unity.splash-ads-slogan-height"

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method protected getSplashMode()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.splash-mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method protected hideSoftInput()V
    .registers 2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$9;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$9;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(IZ)V
    .registers 3

    return-void
.end method

.method protected initializeGoogleAr()Z
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    if-nez v0, :cond_58

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_58

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->l()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {}, Lcom/unity3d/player/GoogleARProxy;->a()Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Lcom/unity3d/player/GoogleARProxy;

    invoke-direct {v0, p0}, Lcom/unity3d/player/GoogleARProxy;-><init>(Lcom/unity3d/player/d;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/GoogleARProxy;->a(Landroid/app/Activity;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARProxy;->b()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->e()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARProxy;->d()V

    :cond_36
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARProxy;->e()Z

    move-result v0

    :goto_3c
    return v0

    :cond_3d
    new-instance v0, Lcom/unity3d/player/GoogleARCoreApi;

    invoke-direct {v0}, Lcom/unity3d/player/GoogleARCoreApi;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/GoogleARCoreApi;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/GoogleARCoreApi;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/GoogleARCoreApi;->initializeARCore(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->e()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/GoogleARCoreApi;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->resumeARCore()V

    :cond_58
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method protected initializeGoogleVr()Z
    .registers 8

    const/4 v6, 0x5

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lcom/unity3d/player/GoogleVrApi;->a(Lcom/unity3d/player/d;)V

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 v0, 0x6

    const-string v2, "Unable to create Google VR subsystem."

    invoke-static {v0, v2}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    move v0, v1

    :goto_18
    return v0

    :cond_19
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v3, Lcom/unity3d/player/UnityPlayer$12;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer$12;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    new-instance v4, Lcom/unity3d/player/UnityPlayer$14;

    invoke-direct {v4, p0, v0, v3, v2}, Lcom/unity3d/player/UnityPlayer$14;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/GoogleVrProxy;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x4

    :try_start_2d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_56

    const/4 v0, 0x5

    const-string v2, "Timeout while trying to initialize Google VR."

    invoke-static {v0, v2}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_3b} :catch_3d

    move v0, v1

    goto :goto_18

    :catch_3d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UI thread was interrupted while initializing Google VR. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_18

    :cond_56
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->a()Z

    move-result v0

    goto :goto_18
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeInjectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method protected isFinishing()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    if-eqz v0, :cond_1c

    :cond_1b
    move v2, v1

    :cond_1c
    return v2

    :cond_1d
    move v0, v2

    goto :goto_17
.end method

.method public isLaunchScreenAdsFinished()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->finishLaunchScreenAds:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/unity3d/splash/UnityAds;->isSkipLaunchScreenAds()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isShouldShowLaunchScreenAds()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->shouldShowLaunchScreenAds:Z

    return v0
.end method

.method protected kill()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected loadLibrary(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->loadLibraryStatic(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lowMemory()V
    .registers 2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$6;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$6;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p0, p3}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARProxy;->c()V

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    invoke-virtual {v0}, Lcom/unity3d/player/q;->a()V

    :cond_12
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    invoke-virtual {v0}, Lcom/unity3d/player/k;->b()V

    :cond_1b
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->pauseGvrLayout()V

    :cond_24
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->f()V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/GoogleARCoreApi;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/GoogleARCoreApi;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->pauseARCore()V

    goto :goto_9
.end method

.method public quit()V
    .registers 5

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->a()V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->e()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_17
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$f;->a()V

    :try_start_1c
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/UnityPlayer$f;->join(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_23} :catch_41

    :goto_23
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->removeAllViews()V

    :cond_3a
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->i()V

    return-void

    :catch_41
    move-exception v0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$f;->interrupt()V

    goto :goto_23
.end method

.method public removeViewFromPlayer(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_2f

    move v3, v1

    :goto_18
    if-eqz v0, :cond_31

    if-eqz v3, :cond_31

    :goto_1c
    if-nez v1, :cond_2c

    if-nez v0, :cond_25

    const-string v0, "removeViewFromPlayer: Failure removing view from hierarchy"

    invoke-static {v4, v0}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    :cond_25
    if-nez v3, :cond_2c

    const-string v0, "removeVireFromPlayer: Failure agging old view to hierarchy"

    invoke-static {v4, v0}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    :cond_2c
    return-void

    :cond_2d
    move v0, v2

    goto :goto_f

    :cond_2f
    move v3, v2

    goto :goto_18

    :cond_31
    move v1, v2

    goto :goto_1c
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    return-void
.end method

.method protected reportSoftInputStr(Ljava/lang/String;IZ)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V

    :cond_6
    new-instance v0, Lcom/unity3d/player/UnityPlayer$11;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unity3d/player/UnityPlayer$11;-><init>(Lcom/unity3d/player/UnityPlayer;ZLjava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer$g;)V

    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARProxy;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARProxy;->d()V

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/n;->b(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    invoke-virtual {v0}, Lcom/unity3d/player/q;->b()V

    :cond_18
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/k;

    invoke-virtual {v0}, Lcom/unity3d/player/k;->c()V

    :cond_21
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRestartActivityIndicator()V

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->b()V

    :cond_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/GoogleARCoreApi;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/GoogleARCoreApi;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->resumeARCore()V

    goto :goto_9
.end method

.method protected setSoftInputStr(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/unity3d/player/UnityPlayer$10;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$10;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldRegisterLaunch(Landroid/content/Context;)Z
    .registers 6

    invoke-static {p1}, Lcom/unity3d/splash/services/core/device/Device;->getSIMMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "454"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "455"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "460"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "461"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "466"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;)V
    .registers 18

    new-instance v0, Lcom/unity3d/player/UnityPlayer$8;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/player/UnityPlayer$8;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showVideoPlayer(Ljava/lang/String;IIIZII)Z
    .registers 23

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    if-nez v2, :cond_b

    new-instance v2, Lcom/unity3d/player/q;

    invoke-direct {v2, p0}, Lcom/unity3d/player/q;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    :cond_b
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->v:Lcom/unity3d/player/q;

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    move/from16 v0, p6

    int-to-long v10, v0

    move/from16 v0, p7

    int-to-long v12, v0

    new-instance v14, Lcom/unity3d/player/UnityPlayer$15;

    invoke-direct {v14, p0}, Lcom/unity3d/player/UnityPlayer$15;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v14}, Lcom/unity3d/player/q;->a(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/q$a;)Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v3, Lcom/unity3d/player/UnityPlayer$16;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer$16;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    :cond_32
    return v2
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method

.method protected toggleGyroscopeSensor(Z)V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz p1, :cond_19

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->p:Lcom/unity3d/player/UnityPlayer$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_18
    return-void

    :cond_19
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->p:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_18
.end method

.method public windowFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Lcom/unity3d/player/n;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/n;->a(Z)V

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$f;->c()V

    :goto_c
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$f;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$f;->d()V

    goto :goto_c
.end method
