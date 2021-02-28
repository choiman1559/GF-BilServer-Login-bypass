.class Lcom/bsgamesdk/android/activity/TouristActivity$22;
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->z(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->A(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/TouristActivity;->B(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/TouristActivity;->C(Lcom/bsgamesdk/android/activity/TouristActivity;)Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->isChecked()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Z)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->z(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    sget v1, Lcom/bsgamesdk/android/utils/b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->A(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->D(Lcom/bsgamesdk/android/activity/TouristActivity;)Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iget-object v5, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->B(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(Lcom/bsgamesdk/android/activity/TouristActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->e:Lcom/bsgamesdk/android/presenter/g;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/TouristActivity;->t(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/TouristActivity;->u(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/TouristActivity$22;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v7, v7, Lcom/bsgamesdk/android/activity/TouristActivity;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/bsgamesdk/android/presenter/g;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    return-void
.end method
