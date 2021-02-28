.class public Lcom/bsgamesdk/android/helper/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/bsgamesdk/android/helper/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bsgamesdk/android/helper/a;
    .registers 2

    sget-object v0, Lcom/bsgamesdk/android/helper/a;->a:Lcom/bsgamesdk/android/helper/a;

    if-nez v0, :cond_13

    const-class v1, Lcom/bsgamesdk/android/helper/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/bsgamesdk/android/helper/a;->a:Lcom/bsgamesdk/android/helper/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bsgamesdk/android/helper/a;

    invoke-direct {v0}, Lcom/bsgamesdk/android/helper/a;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/helper/a;->a:Lcom/bsgamesdk/android/helper/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/bsgamesdk/android/helper/a;->a:Lcom/bsgamesdk/android/helper/a;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bsgamesdk/android/helper/a;
    .registers 4

    const-class v1, Lcom/bsgamesdk/android/helper/a;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    sget-object v0, Lcom/bsgamesdk/android/helper/a;->a:Lcom/bsgamesdk/android/helper/a;

    return-object v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public a(ILcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/bsgamesdk/android/task/l;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/bsgamesdk/android/task/l;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/l;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bsgamesdk/android/api/BSGameSdkAuth;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auth"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/bsgamesdk/android/task/a;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/bsgamesdk/android/task/a;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/a;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/bsgamesdk/android/task/i;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/bsgamesdk/android/task/i;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/i;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bsgamesdk/android/model/UserParcelable;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "captchModel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcom/bsgamesdk/android/task/j;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p3, v0}, Lcom/bsgamesdk/android/task/j;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/j;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/e;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/bsgamesdk/android/task/e;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/e;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "captcha"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captchModel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcom/bsgamesdk/android/task/aa;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p3, v0}, Lcom/bsgamesdk/android/task/aa;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/aa;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "activation"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/b;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p3, v0}, Lcom/bsgamesdk/android/task/b;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/b;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captcha"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/r;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p4, v0}, Lcom/bsgamesdk/android/task/r;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/r;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "real_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id_card"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captchModel"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcom/bsgamesdk/android/task/c;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p5, v0}, Lcom/bsgamesdk/android/task/c;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/c;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "country_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captcha"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/s;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p5, v0}, Lcom/bsgamesdk/android/task/s;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/s;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pwd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "access_key"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captchModel"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcom/bsgamesdk/android/task/o;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p6, v0}, Lcom/bsgamesdk/android/task/o;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/o;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "country_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captcha"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "access_key"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pwd"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captcha_key"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/z;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p7, v0}, Lcom/bsgamesdk/android/task/z;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/z;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "country_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nickname"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captcha"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reg_type"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open_id"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apple_type"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captcha_key"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/q;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p10, v0}, Lcom/bsgamesdk/android/task/q;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/q;->c([Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZLcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accessKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "needRefreshToken"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "captchModel"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "isTourist"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/bsgamesdk/android/task/n;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p5, v0}, Lcom/bsgamesdk/android/task/n;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/n;->c([Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/bsgamesdk/android/task/g;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/bsgamesdk/android/task/g;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/g;->c([Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/y;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/bsgamesdk/android/task/y;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/y;->c([Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accessKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captchModel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcom/bsgamesdk/android/task/k;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p3, v0}, Lcom/bsgamesdk/android/task/k;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/k;->c([Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/t;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p3, v0}, Lcom/bsgamesdk/android/task/t;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/t;->c([Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pwd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captchModel"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcom/bsgamesdk/android/task/x;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p5, v0}, Lcom/bsgamesdk/android/task/x;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/x;->c([Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "payment_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recharge_order_no"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderHost"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "request_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/p;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p5, v0}, Lcom/bsgamesdk/android/task/p;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/p;->c([Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/bsgamesdk/android/task/w;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/bsgamesdk/android/task/w;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/w;->c([Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/u;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/bsgamesdk/android/task/u;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/u;->c([Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "country_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "captchModel"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "captcha"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/h;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p5, v0}, Lcom/bsgamesdk/android/task/h;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/h;->c([Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/bsgamesdk/android/task/m;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/bsgamesdk/android/task/m;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/m;->c([Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ctoken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bsgamesdk/android/task/f;

    iget-object v2, p0, Lcom/bsgamesdk/android/helper/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/bsgamesdk/android/task/f;-><init>(Landroid/content/Context;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/task/f;->c([Ljava/lang/String;)V

    return-void
.end method
