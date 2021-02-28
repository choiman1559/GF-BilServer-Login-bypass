.class Lcom/bsgamesdk/android/activity/Login_RegActivity$42;
.super Lcom/bsgamesdk/android/utils/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$42;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$42;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->Q(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$42;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->S(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$42;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2, v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$42;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$42;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v4

    iget-object v4, v4, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->open_id:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method
