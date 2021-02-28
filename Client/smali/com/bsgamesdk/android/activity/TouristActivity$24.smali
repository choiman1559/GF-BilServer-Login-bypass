.class Lcom/bsgamesdk/android/activity/TouristActivity$24;
.super Lcom/bsgamesdk/android/utils/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/TouristActivity;->b(Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic b:Lcom/bsgamesdk/android/activity/TouristActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$24;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$24;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$24;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$24;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->F(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$24;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/CaptchModel;->getCtoken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$24;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/CaptchModel;->getCtoken()Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v2, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->doGetCaptcha(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void

    :cond_1a
    const-string v0, ""

    goto :goto_16
.end method
