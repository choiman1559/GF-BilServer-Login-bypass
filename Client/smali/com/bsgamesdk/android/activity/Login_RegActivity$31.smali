.class Lcom/bsgamesdk/android/activity/Login_RegActivity$31;
.super Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->a:I

    invoke-direct {p0, p2}, Lcom/bsgamesdk/android/callbacklistener/SimpleTaskCallBackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v0, "rsaauth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    :try_start_d
    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mRsa:Lcom/bsgamesdk/android/model/j;

    iget-object v1, v0, Lcom/bsgamesdk/android/model/j;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->D(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->d(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->B(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;)Ljava/lang/String;

    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->a:I

    if-ne v4, v0, :cond_9f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->u(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?type=2&username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->K(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->L(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a\u5b89\u5168\u90ae\u7bb1"

    const/4 v3, 0x1

    const/16 v4, 0xbb9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/WebActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_9f
    iget v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->a:I

    if-ne v5, v0, :cond_c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->u(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?type=1&username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->K(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$31;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->L(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7ed1\u5b9a\u5b89\u5168\u624b\u673a"

    const/4 v3, 0x2

    const/16 v4, 0xbb9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/WebActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_f0} :catch_f2

    goto/16 :goto_c

    :catch_f2
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_c
.end method
