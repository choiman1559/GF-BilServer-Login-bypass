.class Lcom/bsgamesdk/android/activity/Login_RegActivity$80$1;
.super Lcom/bsgamesdk/android/utils/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity$80;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity$80;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity$80;

    invoke-direct {p0}, Lcom/bsgamesdk/android/utils/i$f;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80$1;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity$80;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/Login_RegActivity$80;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Lcom/bsgamesdk/android/activity/Login_RegActivity;Z)V

    return-void
.end method
