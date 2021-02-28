.class Lcom/bsgamesdk/android/activity/TouristActivity$28;
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
.field final synthetic a:Lcom/bsgamesdk/android/activity/TouristActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity$28;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$28;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(Lcom/bsgamesdk/android/activity/TouristActivity;Z)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity$28;->a:Lcom/bsgamesdk/android/activity/TouristActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    return-void
.end method
