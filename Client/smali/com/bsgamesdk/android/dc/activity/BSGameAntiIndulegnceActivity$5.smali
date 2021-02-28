.class Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    const-string v1, "antiModle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/data/sdk/domain/model/AntiModel;

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, v0, Lcom/android/data/sdk/domain/model/AntiModel;->mAntiModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/data/sdk/domain/model/AntiModel;

    iget-object v2, v0, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v2, v2, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v3, "u3dTag"

    const-string v4, "isUserKill"

    invoke-static {v2, v3, v4}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v2, v2, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v3, "dc_type"

    iget-object v4, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v4, v4, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    const-string v5, "sdkType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v2, v2, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v3, "dc_action"

    iget-object v4, v0, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    iget-object v2, v2, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v3, "dc_view"

    iget-object v0, v0, Lcom/android/data/sdk/domain/model/AntiModel;->view:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_63} :catch_64

    goto :goto_15

    :catch_64
    move-exception v0

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;->a:Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    goto :goto_e
.end method
