.class Lcom/bsgamesdk/android/activity/Login_RegActivity$93;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bsgamesdk/android/widget/UserAutoViewAdapter$DelOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/Login_RegActivity;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/activity/Login_RegActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/Login_RegActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$93;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delOnClick(Landroid/view/View;I)V
    .registers 6

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$93;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aE(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_51

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$93;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aE(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$93;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aF(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/model/o;->c()Lcom/bsgamesdk/android/model/UNamePwdMap;

    move-result-object v1

    iget-object v2, v1, Lcom/bsgamesdk/android/model/UNamePwdMap;->mUNamepwdMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$93;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aF(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/model/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bsgamesdk/android/model/o;->a(Lcom/bsgamesdk/android/model/UNamePwdMap;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$93;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aE(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$93;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aE(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/widget/UserAutoViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/Login_RegActivity$93;->a:Lcom/bsgamesdk/android/activity/Login_RegActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/Login_RegActivity;->aH(Lcom/bsgamesdk/android/activity/Login_RegActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_51
    return-void
.end method
