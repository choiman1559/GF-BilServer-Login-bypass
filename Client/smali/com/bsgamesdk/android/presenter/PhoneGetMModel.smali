.class public Lcom/bsgamesdk/android/presenter/PhoneGetMModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;)V
    .registers 16

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_19
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/presenter/a;)V
    .registers 14

    sget-object v6, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    new-instance v0, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p6

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$1;-><init>(Lcom/bsgamesdk/android/presenter/PhoneGetMModel;Landroid/content/Context;Landroid/app/Activity;Lcom/bsgamesdk/android/presenter/a;Lcom/bsgamesdk/android/model/CaptchModel;)V

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/bsgamesdk/android/helper/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    return-void
.end method
