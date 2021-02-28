.class Lcom/bsgamesdk/android/activity/Login_RegActivity$69;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->s()V
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$69;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$69;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->al(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$69;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/16 v1, 0x7d2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->g(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    :cond_f
    return-void
.end method
