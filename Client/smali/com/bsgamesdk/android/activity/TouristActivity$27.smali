.class Lcom/bsgamesdk/android/activity/TouristActivity$27;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/TouristActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bsgamesdk/android/activity/TouristActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/TouristActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$27;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/TouristActivity$27;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$27;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;Z)Z

    const-string v0, "2"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$27;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$27;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->H(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$27;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->s(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$27;->b:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    goto :goto_1a
.end method
