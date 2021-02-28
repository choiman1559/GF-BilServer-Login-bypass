.class final Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/widget/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/bsgamesdk/android/widget/SwitchButton;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;->a:Lcom/bsgamesdk/android/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bsgamesdk/android/widget/SwitchButton;Lcom/bsgamesdk/android/widget/SwitchButton$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;-><init>(Lcom/bsgamesdk/android/widget/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/SwitchButton$PerformClick;->a:Lcom/bsgamesdk/android/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/SwitchButton;->performClick()Z

    return-void
.end method
