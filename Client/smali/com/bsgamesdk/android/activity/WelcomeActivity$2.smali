.class Lcom/bsgamesdk/android/activity/WelcomeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/WelcomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity$2;->a:Lcom/bsgamesdk/android/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/WelcomeActivity$2;->a:Lcom/bsgamesdk/android/activity/WelcomeActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/activity/WelcomeActivity;->onBackPressed()V

    return-void
.end method
