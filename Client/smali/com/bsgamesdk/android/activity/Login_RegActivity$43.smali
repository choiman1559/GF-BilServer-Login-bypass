.class Lcom/bsgamesdk/android/activity/Login_RegActivity$43;
.super Lcom/bsgamesdk/android/utils/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->l()V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$43;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$43;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$43;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->g()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->c(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$43;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->T(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V

    goto :goto_f
.end method