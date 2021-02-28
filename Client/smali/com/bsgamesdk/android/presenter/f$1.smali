.class Lcom/bsgamesdk/android/presenter/f$1;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/presenter/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/presenter/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/presenter/a;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/bsgamesdk/android/presenter/f;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/presenter/f;Landroid/content/Context;Lcom/bsgamesdk/android/presenter/a;Landroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/f$1;->c:Lcom/bsgamesdk/android/presenter/f;

    iput-object p3, p0, Lcom/bsgamesdk/android/presenter/f$1;->a:Lcom/bsgamesdk/android/presenter/a;

    iput-object p4, p0, Lcom/bsgamesdk/android/presenter/f$1;->b:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "e_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/f$1;->b:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/f$1;->c:Lcom/bsgamesdk/android/presenter/f;

    iget-object v1, p0, Lcom/bsgamesdk/android/presenter/f$1;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/f;->a(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/f$1;->a:Lcom/bsgamesdk/android/presenter/a;

    invoke-virtual {v0, p1}, Lcom/bsgamesdk/android/presenter/a;->a(Landroid/os/Bundle;)V

    return-void
.end method
