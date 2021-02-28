.class Lcom/bsgamesdk/android/presenter/d$1;
.super Lcom/bsgamesdk/android/presenter/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/presenter/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/presenter/d;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/presenter/d;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/d$1;->a:Lcom/bsgamesdk/android/presenter/d;

    invoke-direct {p0}, Lcom/bsgamesdk/android/presenter/a;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/d$1;->a:Lcom/bsgamesdk/android/presenter/d;

    invoke-static {v0}, Lcom/bsgamesdk/android/presenter/d;->a(Lcom/bsgamesdk/android/presenter/d;)Lcom/bsgamesdk/android/presenter/e;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->FOUR:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bsgamesdk/android/presenter/e;->doPHoneGet(Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/d$1;->a:Lcom/bsgamesdk/android/presenter/d;

    invoke-static {v0}, Lcom/bsgamesdk/android/presenter/d;->a(Lcom/bsgamesdk/android/presenter/d;)Lcom/bsgamesdk/android/presenter/e;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/bsgamesdk/android/presenter/e;->doPHoneGet(Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/d$1;->a:Lcom/bsgamesdk/android/presenter/d;

    invoke-static {v0}, Lcom/bsgamesdk/android/presenter/d;->a(Lcom/bsgamesdk/android/presenter/d;)Lcom/bsgamesdk/android/presenter/e;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->THREE:Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;

    invoke-interface {v0, v1, p1}, Lcom/bsgamesdk/android/presenter/e;->doPHoneGet(Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;Ljava/lang/String;)V

    return-void
.end method
