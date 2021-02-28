.class Lcom/bsgamesdk/android/activity/WebActivity$5;
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

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/WebActivity$5;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$5;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->b(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$5;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->c(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WebActivity$5;->a:Lcom/bsgamesdk/android/activity/WebActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/WebActivity;->d(Lcom/bsgamesdk/android/activity/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
