.class Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BtnObtionOnClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/RegisterActivity;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bsgamesdk/android/activity/RegisterActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/RegisterActivity;->h(Lcom/bsgamesdk/android/activity/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->a:Lcom/bsgamesdk/android/activity/RegisterActivity;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/RegisterActivity$BtnObtionOnClickListener;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bsgamesdk/android/activity/RegisterActivity;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method
