.class public Lcom/bsgamesdk/android/utils/i$b;
.super Lcom/bsgamesdk/android/utils/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(JJLandroid/widget/Button;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bsgamesdk/android/utils/i$a;-><init>(JJ)V

    iput-wide p1, p0, Lcom/bsgamesdk/android/utils/i$b;->b:J

    iput-wide p3, p0, Lcom/bsgamesdk/android/utils/i$b;->c:J

    iput-object p5, p0, Lcom/bsgamesdk/android/utils/i$b;->a:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>(Landroid/widget/Button;)V
    .registers 9

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/bsgamesdk/android/utils/i$b;-><init>(JJLandroid/widget/Button;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/i$b;->a:Landroid/widget/Button;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/i$b;->a:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/i$b;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_11
    return-void
.end method

.method public onTick(J)V
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/i$b;->a:Landroid/widget/Button;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/i$b;->a:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/utils/i$b;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_26
    return-void
.end method
