.class Lcom/bsgamesdk/android/activity/PaymentActivity$8;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/model/CaptchModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field final synthetic d:Lcom/bsgamesdk/android/model/CaptchModel;

.field final synthetic e:Lcom/bsgamesdk/android/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bsgamesdk/android/activity/PaymentActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 4

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iput-object p2, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->b:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)[Ljava/lang/String;
    .registers 21

    :try_start_0
    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->c:Z

    if-eqz v2, :cond_d2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v2

    iget-wide v2, v2, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lcom/bsgamesdk/android/model/m;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v4

    if-eqz v4, :cond_51

    iget-wide v2, v4, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_51

    iget-wide v2, v4, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :cond_51
    sget-object v2, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iget-object v4, v4, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v5

    iget-wide v8, v5, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v10}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v12}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v13}, Lcom/bsgamesdk/android/activity/PaymentActivity;->u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v13

    iget-object v13, v13, Lcom/bsgamesdk/android/helper/PayRequest;->item_desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v14}, Lcom/bsgamesdk/android/activity/PaymentActivity;->u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v14

    iget-object v14, v14, Lcom/bsgamesdk/android/helper/PayRequest;->extension_info:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v15}, Lcom/bsgamesdk/android/activity/PaymentActivity;->v(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v2 .. v18}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_d1
    return-object v2

    :cond_d2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->c:Z

    if-eqz v2, :cond_35a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v2

    iget-wide v2, v2, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lcom/bsgamesdk/android/model/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v4

    if-eqz v4, :cond_107

    iget-wide v2, v4, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_107

    iget-wide v2, v4, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :cond_107
    sget-object v2, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    iget-object v4, v4, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v5

    iget-wide v8, v5, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v10}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v11}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v12}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v13}, Lcom/bsgamesdk/android/activity/PaymentActivity;->u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v13

    iget-object v13, v13, Lcom/bsgamesdk/android/helper/PayRequest;->item_desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v14}, Lcom/bsgamesdk/android/activity/PaymentActivity;->u(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/helper/PayRequest;

    move-result-object v14

    iget-object v14, v14, Lcom/bsgamesdk/android/helper/PayRequest;->extension_info:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v15}, Lcom/bsgamesdk/android/activity/PaymentActivity;->v(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->d:Lcom/bsgamesdk/android/model/CaptchModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v2 .. v18}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_186
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_0 .. :try_end_186} :catch_189

    move-result-object v2

    goto/16 :goto_d1

    :catch_189
    move-exception v2

    move-object/from16 v18, v2

    :try_start_18c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v7}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v8}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v9}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v10}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v18

    iget v11, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v12}, Lcom/bsgamesdk/android/activity/PaymentActivity;->r(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const-string v15, "server_request_failed"

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/bsgamesdk/android/activity/PaymentActivity;->s(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget v4, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-virtual/range {v18 .. v18}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->k(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->l(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->o(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->m(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->n(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->p(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originMessage"

    const-string v3, "server_request_failed"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->q(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2a1
    .catch Ljava/lang/Throwable; {:try_start_18c .. :try_end_2a1} :catch_35d

    :goto_2a1
    move-object/from16 v0, v18

    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-static/range {v18 .. v18}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    move-object/from16 v0, v18

    iget v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{result:-1,error_code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",error_msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->a:Ljava/lang/String;

    const/16 v3, -0xf

    if-ne v2, v3, :cond_2f8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->x(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/activity/PaymentActivity$8$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity$8$1;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$8;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    goto/16 :goto_d1

    :cond_2f8
    const v3, 0x30d40

    if-ne v2, v3, :cond_312

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->x(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/activity/PaymentActivity$8$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity$8$2;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$8;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    goto/16 :goto_d1

    :cond_312
    const v3, 0x30d41

    if-ne v2, v3, :cond_32c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->x(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/activity/PaymentActivity$8$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity$8$3;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$8;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    goto/16 :goto_d1

    :cond_32c
    const v3, 0x30d43

    if-ne v2, v3, :cond_346

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->x(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bsgamesdk/android/activity/PaymentActivity$8$4;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$8;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    goto/16 :goto_d1

    :cond_346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->x(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bsgamesdk/android/activity/PaymentActivity$8$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity$8$5;-><init>(Lcom/bsgamesdk/android/activity/PaymentActivity$8;Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_35a
    const/4 v2, 0x0

    goto/16 :goto_d1

    :catch_35d
    move-exception v2

    goto/16 :goto_2a1
.end method

.method protected b([Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_106

    array-length v1, p1

    if-lt v1, v5, :cond_106

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->y(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    aget-object v1, p1, v0

    aget-object v2, p1, v4

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    aget-object v4, p1, v4

    invoke-static {v3, v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)Ljava/lang/String;

    aget-object v3, p1, v5

    sput-object v3, Lcom/bsgamesdk/android/model/c;->w:Ljava/lang/String;

    :try_start_20
    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-static {v3, v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->b(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->j(Lcom/bsgamesdk/android/activity/PaymentActivity;)Lcom/bsgamesdk/android/api/h;

    move-result-object v3

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->i(Lcom/bsgamesdk/android/activity/PaymentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_3f} :catch_11e

    :cond_3f
    :goto_3f
    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->c(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->z(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v0

    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&supportSdk=alipay&version="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bsgamesdk/android/BSGameSdk;->sdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&isSupportWechat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v3}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsLogined(Landroid/content/Context;)Z

    move-result v1

    sget-object v3, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v4}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bsgamesdk/android/dynamic/IUtils;->checkIsTouristLogined(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Lcom/bsgamesdk/android/model/m;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v5}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v4

    new-instance v5, Lcom/bsgamesdk/android/model/k;

    iget-object v6, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v6}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v5

    if-eqz v1, :cond_ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&accessKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lcom/bsgamesdk/android/model/UserParcelable;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d0
    :goto_d0
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1, v2}, Lcom/bsgamesdk/android/activity/PaymentActivity;->d(Lcom/bsgamesdk/android/activity/PaymentActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->A(Lcom/bsgamesdk/android/activity/PaymentActivity;)Z

    move-result v1

    if-nez v1, :cond_e6

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_e6
    :goto_e6
    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    return-void

    :cond_ea
    if-eqz v3, :cond_d0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&accessKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d0

    :cond_106
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->B(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    invoke-static {v0}, Lcom/bsgamesdk/android/activity/PaymentActivity;->B(Lcom/bsgamesdk/android/activity/PaymentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->e:Lcom/bsgamesdk/android/activity/PaymentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/activity/PaymentActivity;->a(Lcom/bsgamesdk/android/activity/PaymentActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_e6

    :catch_11e
    move-exception v3

    goto/16 :goto_3f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bsgamesdk/android/activity/PaymentActivity$8;->b([Ljava/lang/String;)V

    return-void
.end method
