.class Lcom/bsgamesdk/android/activity/WebActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/WebActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/WebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/WebActivity$2;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "agreement"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity$2;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    iget-object v1, v1, Lcom/bsgamesdk/android/activity/WebActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$2;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->a(Lcom/bsgamesdk/android/activity/WebActivity;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "state"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type_js"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/WebActivity$2;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    const/16 v2, 0xbba

    invoke-virtual {v1, v2, v0}, Lcom/bsgamesdk/android/activity/WebActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$2;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->finish()V

    goto :goto_11
.end method
