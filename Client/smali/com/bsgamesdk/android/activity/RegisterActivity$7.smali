.class Lcom/bsgamesdk/android/activity/RegisterActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/RegisterActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$7;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$7;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->j(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$7;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->h(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$7;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/RegisterActivity;->h(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$7;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$7;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/RegisterActivity;->f(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/bsgamesdk/android/activity/RegisterActivity;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method
