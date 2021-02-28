.class Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c:Lcom/android/data/sdk/domain/model/AntiModel;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c:Lcom/android/data/sdk/domain/model/AntiModel;

    iget-object v0, v0, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_33

    :cond_2e
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    :cond_33
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;I)V

    goto :goto_19
.end method
