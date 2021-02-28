.class Lcom/bsgamesdk/android/activity/PrePayActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a(Lcom/bsgamesdk/android/model/PayConditionModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/PrePayActivity$1;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PrePayActivity$1;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PrePayActivity$1$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity$1;

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PrePayActivity$1;->a:Lcom/bsgamesdk/android/activity/PrePayActivity;

    sget-object v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->E_MINOR_LIMITED:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PrePayActivity;->a(Lcom/bsgamesdk/android/activity/PrePayActivity;I)V

    return-void
.end method
