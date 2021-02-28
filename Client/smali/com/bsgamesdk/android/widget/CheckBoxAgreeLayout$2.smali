.class Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$2;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$2;->b:Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

    iput-object p2, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$2;->b:Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout$2;->a:Landroid/content/Context;

    const-string v2, "type_privacy"

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;->showAgreement(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
