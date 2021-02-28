.class Lcom/bsgamesdk/android/activity/TouristActivity$25;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$25;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$25;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$25;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->G(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$25;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$25;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

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

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$25;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->d:Lcom/bsgamesdk/android/presenter/d;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$25;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/TouristActivity$25;->a:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    goto :goto_1f
.end method
