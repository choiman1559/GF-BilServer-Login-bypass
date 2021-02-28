.class Lcom/bsgamesdk/android/utils/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/utils/x;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/utils/x;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/utils/x;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/utils/x$1;->a:Lcom/bsgamesdk/android/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x$1;->a:Lcom/bsgamesdk/android/utils/x;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/x;->a(Lcom/bsgamesdk/android/utils/x;)Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/widget/AreaAutoViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/utils/x$1;->a:Lcom/bsgamesdk/android/utils/x;

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/x;->b(Lcom/bsgamesdk/android/utils/x;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sput p3, Lcom/bsgamesdk/android/utils/b;->b:I

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/x$1;->a:Lcom/bsgamesdk/android/utils/x;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/x;->b()V

    return-void
.end method
