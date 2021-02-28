.class Lcom/bsgamesdk/android/activity/Login_RegActivity$77;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$77;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$77;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->an(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    sget v2, Lcom/bsgamesdk/android/utils/b;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$77;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ao(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    sget v2, Lcom/bsgamesdk/android/utils/b;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
