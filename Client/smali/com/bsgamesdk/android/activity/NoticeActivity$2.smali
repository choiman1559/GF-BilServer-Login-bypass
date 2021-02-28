.class Lcom/bsgamesdk/android/activity/NoticeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/NoticeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/NoticeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$2;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/NoticeActivity$2;->a:Lcom/bsgamesdk/android/activity/NoticeActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/NoticeActivity;->onBackPressed()V

    return-void
.end method
