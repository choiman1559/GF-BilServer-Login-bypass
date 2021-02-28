.class public Lcom/mob/tools/FakeActivity;
.super Ljava/lang/Object;
.source "FakeActivity.java"


# static fields
.field private static shellClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected activity:Landroid/app/Activity;

.field private contentView:Landroid/view/View;

.field private result:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resultReceiver:Lcom/mob/tools/FakeActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/FakeActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/mob/tools/FakeActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->showActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static registerExecutor(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "executor"    # Ljava/lang/Object;

    .prologue
    .line 44
    sget-object v2, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    if-eqz v2, :cond_34

    .line 46
    :try_start_4
    sget-object v2, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    const-string v3, "registerExecutor"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    .local v0, "registerExecutor":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 48
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2a} :catch_2b

    .line 55
    .end local v0    # "registerExecutor":Ljava/lang/reflect/Method;
    :goto_2a
    return-void

    .line 49
    :catch_2b
    move-exception v1

    .line 50
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 53
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_34
    invoke-static {p0, p1}, Lcom/mob/tools/MobUIShell;->registerExecutor(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2a
.end method

.method public static setShell(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "shellClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    sput-object p0, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    .line 41
    return-void
.end method

.method private showActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 259
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_13

    .line 260
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 261
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_17

    .line 262
    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    .end local v0    # "act":Landroid/app/Activity;
    :cond_13
    :goto_13
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void

    .line 264
    .restart local v0    # "act":Landroid/app/Activity;
    :cond_17
    move-object p1, v0

    goto :goto_13
.end method


# virtual methods
.method protected disableScreenCapture()Z
    .registers 4

    .prologue
    const/16 v2, 0x2000

    .line 66
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_17

    .line 67
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method public findViewByResName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v2, :cond_6

    .line 109
    :cond_5
    :goto_5
    return-object v1

    .line 105
    :cond_6
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v2, p2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "resId":I
    if-lez v0, :cond_5

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_5
.end method

.method public findViewByResName(Ljava/lang/String;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v2, :cond_6

    .line 121
    :cond_5
    :goto_5
    return-object v1

    .line 117
    :cond_6
    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "resId":I
    if-lez v0, :cond_5

    .line 119
    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_5
.end method

.method public final finish()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    :cond_9
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getParent()Lcom/mob/tools/FakeActivity;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->resultReceiver:Lcom/mob/tools/FakeActivity;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 183
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 198
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method public onFinish()Z
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 202
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 150
    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 142
    return-void
.end method

.method protected onSetTheme(IZ)I
    .registers 3
    .param p1, "resid"    # I
    .param p2, "atLaunch"    # Z

    .prologue
    .line 62
    return p1
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 134
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method

.method public requestFullScreen(Z)V
    .registers 5
    .param p1, "fullScreen"    # Z

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 337
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_9

    .line 349
    :goto_8
    return-void

    .line 340
    :cond_9
    if-eqz p1, :cond_2b

    .line 341
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 342
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 348
    :goto_1d
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_8

    .line 344
    :cond_2b
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 345
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1d
.end method

.method public requestLandscapeOrientation()V
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->setRequestedOrientation(I)V

    .line 328
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;I)V
    .registers 9
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 360
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 371
    :cond_4
    :goto_4
    return-void

    .line 364
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 366
    :try_start_b
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v2, "requestPermissions"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1f} :catch_20

    goto :goto_4

    .line 367
    :catch_20
    move-exception v0

    .line 368
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public requestPortraitOrientation()V
    .registers 2

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->setRequestedOrientation(I)V

    .line 324
    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 296
    const/4 v0, 0x0

    new-instance v1, Lcom/mob/tools/FakeActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/FakeActivity$2;-><init>(Lcom/mob/tools/FakeActivity;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 302
    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 306
    const/4 v0, 0x0

    new-instance v1, Lcom/mob/tools/FakeActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/FakeActivity$3;-><init>(Lcom/mob/tools/FakeActivity;Ljava/lang/Runnable;)V

    invoke-static {v0, p2, p3, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    .line 312
    return-void
.end method

.method public sendResult()V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->resultReceiver:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->resultReceiver:Lcom/mob/tools/FakeActivity;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/mob/tools/FakeActivity;->onResult(Ljava/util/HashMap;)V

    .line 284
    :cond_b
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mob/tools/FakeActivity;->contentView:Landroid/view/View;

    .line 85
    return-void
.end method

.method public setContentViewLayoutResName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 81
    :cond_4
    :goto_4
    return-void

    .line 77
    :cond_5
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "resId":I
    if-lez v0, :cond_4

    .line 79
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_4
.end method

.method public setRequestedOrientation(I)V
    .registers 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 320
    :goto_4
    return-void

    .line 319
    :cond_5
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_4
.end method

.method public final setResult(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/mob/tools/FakeActivity;->result:Ljava/util/HashMap;

    .line 278
    return-void
.end method

.method public show(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/FakeActivity;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    .line 216
    return-void
.end method

.method public showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;
    .param p3, "resultReceiver"    # Lcom/mob/tools/FakeActivity;

    .prologue
    const/4 v12, 0x0

    .line 221
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/mob/tools/FakeActivity;->resultReceiver:Lcom/mob/tools/FakeActivity;

    .line 224
    const/4 v4, 0x0

    .line 225
    .local v4, "launchTime":Ljava/lang/String;
    sget-object v7, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    if-eqz v7, :cond_70

    .line 226
    new-instance v3, Landroid/content/Intent;

    sget-object v7, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v3, "iExec":Landroid/content/Intent;
    :try_start_11
    sget-object v7, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    const-string v8, "registerExecutor"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 229
    .local v5, "registerExecutor":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 230
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_34} :catch_67

    .line 238
    .end local v5    # "registerExecutor":Ljava/lang/reflect/Method;
    :goto_34
    const-string v7, "launch_time"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v7, "executor_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    if-eqz p2, :cond_4b

    .line 241
    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 244
    :cond_4b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_7c

    .line 246
    invoke-direct {p0, p1, v3}, Lcom/mob/tools/FakeActivity;->showActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 256
    :goto_66
    return-void

    .line 231
    :catch_67
    move-exception v6

    .line 232
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_34

    .line 235
    .end local v3    # "iExec":Landroid/content/Intent;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_70
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/mob/tools/MobUIShell;

    invoke-direct {v3, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .restart local v3    # "iExec":Landroid/content/Intent;
    invoke-static {p0}, Lcom/mob/tools/MobUIShell;->registerExecutor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    .line 248
    :cond_7c
    move-object v2, v3

    .line 249
    .local v2, "finalIExec":Landroid/content/Intent;
    new-instance v7, Lcom/mob/tools/FakeActivity$1;

    invoke-direct {v7, p0, p1, v2}, Lcom/mob/tools/FakeActivity$1;-><init>(Lcom/mob/tools/FakeActivity;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v12, v7}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_66
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/FakeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 194
    :goto_4
    return-void

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4
.end method
