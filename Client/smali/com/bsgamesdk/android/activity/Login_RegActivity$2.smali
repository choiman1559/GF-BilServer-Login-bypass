.class Lcom/bsgamesdk/android/activity/Login_RegActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$2;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$2;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->g(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$2;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bsgamesdk_arrow_up"

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/utils/s;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$2;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->h(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/utils/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/x;->a()V

    return-void
.end method
