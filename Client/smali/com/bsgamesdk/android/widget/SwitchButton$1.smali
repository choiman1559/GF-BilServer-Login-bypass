.class Lcom/bsgamesdk/android/widget/SwitchButton$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/widget/SwitchButton;->setCheckedDelayed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bsgamesdk/android/widget/SwitchButton;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/widget/SwitchButton;Z)V
    .registers 3

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/SwitchButton$1;->b:Lcom/bsgamesdk/android/widget/SwitchButton;

    iput-boolean p2, p0, Lcom/bsgamesdk/android/widget/SwitchButton$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton$1;->b:Lcom/bsgamesdk/android/widget/SwitchButton;

    iget-boolean v1, p0, Lcom/bsgamesdk/android/widget/SwitchButton$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/widget/SwitchButton;->setChecked(Z)V

    return-void
.end method
