.class Lcom/bsgamesdk/android/presenter/b$1;
.super Lcom/bsgamesdk/android/presenter/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/presenter/b;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/presenter/b;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/presenter/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/b$1;->a:Lcom/bsgamesdk/android/presenter/b;

    invoke-direct {p0}, Lcom/bsgamesdk/android/presenter/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;Lcom/bsgamesdk/android/model/b;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/b$1;->a:Lcom/bsgamesdk/android/presenter/b;

    invoke-static {v0}, Lcom/bsgamesdk/android/presenter/b;->a(Lcom/bsgamesdk/android/presenter/b;)Lcom/bsgamesdk/android/presenter/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bsgamesdk/android/presenter/c;->doCaptcha(Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;Lcom/bsgamesdk/android/model/b;)V

    return-void
.end method
