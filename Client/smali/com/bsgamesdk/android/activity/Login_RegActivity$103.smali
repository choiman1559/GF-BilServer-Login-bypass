.class Lcom/bsgamesdk/android/activity/Login_RegActivity$103;
.super Lcom/bsgamesdk/android/utils/i$f;


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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$103;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$103;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$103;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$103;->b:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ah(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$103;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/CaptchModel;->getCtoken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$103;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/CaptchModel;->getCtoken()Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v2, v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->doGetCaptcha(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void

    :cond_1a
    const-string v0, ""

    goto :goto_16
.end method
