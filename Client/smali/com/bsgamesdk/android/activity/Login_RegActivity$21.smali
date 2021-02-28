.class Lcom/bsgamesdk/android/activity/Login_RegActivity$21;
.super Lcom/bsgamesdk/android/utils/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->i()V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$21;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$21;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->I(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$21;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bsgamesdk_arrow_up"

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/s;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$21;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$21;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->B(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$21;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->D(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$21;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->I(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method
