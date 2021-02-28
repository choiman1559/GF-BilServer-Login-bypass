.class Lcom/bsgamesdk/android/presenter/g$1;
.super Lcom/bsgamesdk/android/presenter/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/presenter/g;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/presenter/g;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/presenter/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/g$1;->a:Lcom/bsgamesdk/android/presenter/g;

    invoke-direct {p0}, Lcom/bsgamesdk/android/presenter/a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/g$1;->a:Lcom/bsgamesdk/android/presenter/g;

    invoke-static {v0}, Lcom/bsgamesdk/android/presenter/g;->a(Lcom/bsgamesdk/android/presenter/g;)Lcom/bsgamesdk/android/presenter/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bsgamesdk/android/presenter/h;->doTouristBind(Landroid/os/Bundle;)V

    return-void
.end method
