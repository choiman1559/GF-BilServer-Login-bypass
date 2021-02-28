.class public final Lcn/sharesdk/google/b$c;
.super Lcn/sharesdk/google/GoogleOutIinterface$a;
.source "GooglePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/google/b;


# direct methods
.method public constructor <init>(Lcn/sharesdk/google/b;)V
    .registers 2

    .prologue
    .line 394
    iput-object p1, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-direct {p0}, Lcn/sharesdk/google/GoogleOutIinterface$a;-><init>()V

    return-void
.end method


# virtual methods
.method public Callback(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "paramInt"    # I
    .param p2, "paramIBinder"    # Landroid/os/IBinder;
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b;Z)Z

    .line 399
    sput-object p2, Lcn/sharesdk/google/b;->b:Landroid/os/IBinder;

    .line 400
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignCallbacks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v2, p1}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 401
    if-nez p1, :cond_6d

    if-eqz p3, :cond_6d

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 402
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->c(Lcn/sharesdk/google/b;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 403
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->d(Lcn/sharesdk/google/b;)V

    .line 404
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v0, v3}, Lcn/sharesdk/google/b;->b(Lcn/sharesdk/google/b;Z)Z

    .line 435
    :goto_49
    return-void

    .line 406
    :cond_4a
    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 409
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 411
    :try_start_5b
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v0, v1}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b;Landroid/os/Parcel;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_60} :catch_64

    .line 415
    :goto_60
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_49

    .line 412
    :catch_64
    move-exception v0

    .line 413
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_60

    .line 418
    :cond_6d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9b

    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->e(Lcn/sharesdk/google/b;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 419
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->f(Lcn/sharesdk/google/b;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "isSigin"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "pendingIntent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 422
    :try_start_8d
    iget-object v1, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcn/sharesdk/google/b;->a(IILandroid/app/PendingIntent;)V
    :try_end_93
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8d .. :try_end_93} :catch_94

    goto :goto_49

    .line 423
    :catch_94
    move-exception v0

    .line 424
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-virtual {v0}, Lcn/sharesdk/google/b;->b()V

    goto :goto_49

    .line 427
    :cond_9b
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->g(Lcn/sharesdk/google/b;)Lcn/sharesdk/google/e;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 428
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v0}, Lcn/sharesdk/google/b;->g(Lcn/sharesdk/google/b;)Lcn/sharesdk/google/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/google/e;->finish()V

    .line 433
    :cond_ac
    iget-object v0, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    iget-object v1, p0, Lcn/sharesdk/google/b$c;->a:Lcn/sharesdk/google/b;

    invoke-static {v1, p1}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b;Ljava/lang/String;Ljava/util/HashMap;I)V

    goto :goto_49
.end method
