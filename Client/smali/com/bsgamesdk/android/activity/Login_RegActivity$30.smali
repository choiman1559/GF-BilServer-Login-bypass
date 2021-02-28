.class Lcom/bsgamesdk/android/activity/Login_RegActivity$30;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$30;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$30;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->d(Lcom/bsgamesdk/android/activity/Login_RegActivity;I)V

    return-void
.end method
