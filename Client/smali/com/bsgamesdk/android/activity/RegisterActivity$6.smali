.class Lcom/bsgamesdk/android/activity/RegisterActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$6;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$6;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->h(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$6;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/RegisterActivity;->f(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$6;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/RegisterActivity;->g(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$6;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/RegisterActivity;->i(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$6;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->h(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    :cond_2c
    return-void
.end method
