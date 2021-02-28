.class Lcom/bsgamesdk/android/activity/Login_RegActivity$104;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$104;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$104;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$104;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ai(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$104;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$104;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$104;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->o(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$104;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v1, v2, v0, v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_1f
.end method
