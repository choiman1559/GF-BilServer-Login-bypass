.class public abstract Lcom/bsgamesdk/android/utils/i$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# static fields
.field public static final TIME:J = 0x3e8L


# instance fields
.field public currentClickTime:J

.field public lastClickTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract click(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bsgamesdk/android/utils/i$f;->currentClickTime:J

    iget-wide v0, p0, Lcom/bsgamesdk/android/utils/i$f;->currentClickTime:J

    iget-wide v2, p0, Lcom/bsgamesdk/android/utils/i$f;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/utils/i$f;->click(Landroid/view/View;)V

    iget-wide v0, p0, Lcom/bsgamesdk/android/utils/i$f;->currentClickTime:J

    iput-wide v0, p0, Lcom/bsgamesdk/android/utils/i$f;->lastClickTime:J

    :cond_18
    return-void
.end method
