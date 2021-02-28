.class Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Lcom/android/data/sdk/domain/model/AntiModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/data/sdk/domain/model/AntiModel;

.field final synthetic b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;Lcom/android/data/sdk/domain/model/AntiModel;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->a:Lcom/android/data/sdk/domain/model/AntiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :try_start_b
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->a:Lcom/android/data/sdk/domain/model/AntiModel;

    iget-object v2, v2, Lcom/android/data/sdk/domain/model/AntiModel;->view:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_22} :catch_46

    :goto_22
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_45

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->moveToViewLocation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_45
    return-void

    :catch_46
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;->b:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    goto :goto_22
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
