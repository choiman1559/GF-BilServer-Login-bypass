.class Lcom/bsgamesdk/android/activity/WebActivity$6;
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/WebActivity$6;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$6;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    const/16 v1, 0xbba

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/activity/WebActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$6;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->finish()V

    return-void
.end method
