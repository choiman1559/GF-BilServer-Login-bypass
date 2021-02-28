.class Lcom/bsgamesdk/android/activity/Login_RegActivity$53;
.super Lcom/bsgamesdk/android/utils/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$53;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput p2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$53;->a:I

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$53;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$53;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$53;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->e(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/api/BSGameSdkAuth;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkAuth;->mAccessKey:Ljava/lang/String;

    :goto_12
    iget v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$53;->a:I

    invoke-static {v1, v0, v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->b(Lcom/bsgamesdk/android/activity/Login_RegActivity;Ljava/lang/String;I)V

    return-void

    :cond_18
    const-string v0, ""

    goto :goto_12
.end method
