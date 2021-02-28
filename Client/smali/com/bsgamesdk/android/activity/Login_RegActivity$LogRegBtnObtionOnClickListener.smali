.class Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogRegBtnObtionOnClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/os/CountDownTimer;

.field private g:[Landroid/widget/Button;


# direct methods
.method public varargs constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/os/CountDownTimer;[Landroid/widget/Button;)V
    .registers 9

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->e:I

    iput-object p3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->f:Landroid/os/CountDownTimer;

    iput-object p7, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->g:[Landroid/widget/Button;

    iput p2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->e:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bsgamesdk/android/utils/i;->a(Landroid/content/Context;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    iget v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->e:I

    if-ne v0, v2, :cond_2c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->ak(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->f(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u6ca1\u6709\u540c\u610f\u6211\u4eec\u7684\u670d\u52a1\u6761\u6b3e"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Landroid/widget/TextView;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$LogRegBtnObtionOnClickListener;->g:[Landroid/widget/Button;

    array-length v3, v2

    move v0, v1

    :goto_3a
    if-ge v0, v3, :cond_2b

    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a
.end method
