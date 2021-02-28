.class Lcom/bsgamesdk/android/BSGameSdk$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/BSGameSdk;->notifyZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bsgamesdk/android/BSGameSdk;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/BSGameSdk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->e:Lcom/bsgamesdk/android/BSGameSdk;

    iput-object p2, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->e:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v2, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->e:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v2}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->a:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->b:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->c:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->d:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->o:Ljava/lang/String;

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->e:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v3

    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->e:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v1

    iget-wide v4, v3, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->a:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->b:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->c:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->d:Ljava/lang/String;

    sput-object v0, Lcom/bsgamesdk/android/model/c;->o:Ljava/lang/String;

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->e:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v3

    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->e:Lcom/bsgamesdk/android/BSGameSdk;

    invoke-static {v1}, Lcom/bsgamesdk/android/BSGameSdk;->a(Lcom/bsgamesdk/android/BSGameSdk;)Landroid/app/Activity;

    move-result-object v1

    iget-wide v4, v3, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v4, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/bsgamesdk/android/BSGameSdk$2;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_91} :catch_92

    goto :goto_54

    :catch_92
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_54
.end method
