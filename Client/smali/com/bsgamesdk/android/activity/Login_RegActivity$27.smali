.class Lcom/bsgamesdk/android/activity/Login_RegActivity$27;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$27;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$27;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->u(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$27;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5fd8\u8bb0\u5bc6\u7801"

    const/4 v3, 0x0

    const/16 v4, 0xbb9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/activity/WebActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
