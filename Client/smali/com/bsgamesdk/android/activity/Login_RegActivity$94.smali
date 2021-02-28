.class Lcom/bsgamesdk/android/activity/Login_RegActivity$94;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$94;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$94;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$94;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$94;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$94;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bsgamesdk_arrow_down"

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/s;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method
