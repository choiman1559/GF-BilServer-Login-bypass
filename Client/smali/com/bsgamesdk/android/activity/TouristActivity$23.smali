.class Lcom/bsgamesdk/android/activity/TouristActivity$23;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/TouristActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/TouristActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$23;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$23;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$23;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->z(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$23;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->z(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    sget v1, Lcom/bsgamesdk/android/utils/b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$23;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->d:Lcom/bsgamesdk/android/presenter/d;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$23;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    const-string v3, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$23;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->E(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_4c
    return-void
.end method
