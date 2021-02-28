.class Lcom/bsgamesdk/android/activity/RegisterActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/RegisterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$5;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$5;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->g(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
