.class Lcom/bsgamesdk/android/activity/ExitActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/ExitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/ExitActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/ExitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/ExitActivity$1;->a:Lcom/bsgamesdk/android/activity/ExitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/ExitActivity$1;->a:Lcom/bsgamesdk/android/activity/ExitActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/ExitActivity;->onBackPressed()V

    return-void
.end method
