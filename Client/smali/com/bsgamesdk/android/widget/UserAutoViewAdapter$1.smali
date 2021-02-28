.class Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;->b:Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;

    iput p2, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;->b:Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->a(Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;)Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;->b:Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;

    invoke-static {v0}, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->a(Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;)Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;

    move-result-object v0

    iget v1, p0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$1;->a:I

    invoke-interface {v0, p1, v1}, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;->delOnClick(Landroid/view/View;I)V

    :cond_13
    return-void
.end method
