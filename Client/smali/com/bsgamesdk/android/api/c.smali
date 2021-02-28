.class public abstract Lcom/bsgamesdk/android/api/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lorg/apache/http/client/HttpClient;

.field private f:Lcom/bsgamesdk/android/api/d;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/api/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/api/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bsgamesdk/android/api/c;->d:I

    new-instance v0, Lcom/bsgamesdk/android/api/d;

    invoke-direct {v0}, Lcom/bsgamesdk/android/api/d;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    sget v0, Lcom/bsgamesdk/android/api/b;->o:I

    sget v1, Lcom/bsgamesdk/android/api/b;->p:I

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/api/asynchttp/HttpManager;->createClient(II)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/c;->e:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private a(ILjava/util/LinkedList;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    invoke-virtual {v0, p3}, Lcom/bsgamesdk/android/api/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "\u7f51\u7edc\u7e41\u5fd9,\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, p5}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    :cond_1c
    :goto_1c
    return-object v5

    :cond_1d
    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_149

    if-eqz p2, :cond_149

    iput-object p2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p2

    move-object v2, p2

    :goto_2e
    invoke-direct {p0, p3}, Lcom/bsgamesdk/android/api/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1c

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v1, v6}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;)V

    :try_start_43
    invoke-virtual {p0, v3}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_46
    .catch Lorg/apache/http/HttpException; {:try_start_43 .. :try_end_46} :catch_58
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_13e
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_43 .. :try_end_46} :catch_b6

    move-result-object v5

    if-lez p1, :cond_54

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;)V

    :cond_54
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    goto :goto_1c

    :catch_58
    move-exception v0

    :goto_59
    instance-of v4, v0, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    if-eqz v4, :cond_97

    if-ge p4, v6, :cond_97

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :try_start_62
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_6b} :catch_146

    :goto_6b
    add-int/lit8 v4, p4, 0x1

    :try_start_6d
    invoke-virtual {p0, v3}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_70
    .catch Lorg/apache/http/HttpException; {:try_start_6d .. :try_end_70} :catch_72
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_141

    move-result-object v5

    goto :goto_1c

    :catch_72
    move-exception v0

    :goto_73
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8c

    invoke-virtual {p0, v2, v0, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8c

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1c

    :cond_8c
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b2

    invoke-virtual {p0, v2, v3, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_b2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_1c

    :cond_b2
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    throw v0

    :catch_b6
    move-exception v0

    iget v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v4, -0x1f4

    if-ne v3, v4, :cond_d1

    iget-object v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d1

    iget-object v5, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_1c

    :cond_d1
    iget v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v4, 0xea65

    if-eq v3, v4, :cond_df

    iget v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v4, 0xea66

    if-ne v3, v4, :cond_e0

    :cond_df
    throw v0

    :cond_e0
    iget v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v4, -0x2711

    if-eq v3, v4, :cond_f3

    if-lez p1, :cond_f3

    iget-object v3, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v3, :cond_f3

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;)V

    :cond_f3
    iget v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v4, 0x927c0

    if-ne v3, v4, :cond_13a

    if-ge p4, v6, :cond_13a

    sget-object v3, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lcom/bsgamesdk/android/api/b;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v4, p4, 0x1

    :try_start_105
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/bsgamesdk/android/api/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_111
    .catch Lorg/apache/http/HttpException; {:try_start_105 .. :try_end_111} :catch_114
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_111} :catch_144

    move-result-object v5

    goto/16 :goto_1c

    :catch_114
    move-exception v0

    :goto_115
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12f

    invoke-virtual {p0, v2, v0, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12f

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_1c

    :cond_12f
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13a
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    throw v0

    :catch_13e
    move-exception v0

    goto/16 :goto_59

    :catch_141
    move-exception v0

    goto/16 :goto_73

    :catch_144
    move-exception v0

    goto :goto_115

    :catch_146
    move-exception v0

    goto/16 :goto_6b

    :cond_149
    move-object v2, p2

    goto/16 :goto_2e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sdk_app_api"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "/api/verify_channel"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_15
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string v1, "/api/client/verify_channel"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_15
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "gameInfoc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "gameInfoc"

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_14c

    :cond_19
    :goto_19
    packed-switch v0, :pswitch_data_1b2

    const-string v0, "base"

    goto :goto_10

    :sswitch_1f
    const-string v1, "rsa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    goto :goto_19

    :sswitch_29
    const-string v1, "login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    goto :goto_19

    :sswitch_33
    const-string v1, "myinfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x2

    goto :goto_19

    :sswitch_3d
    const-string v1, "refreshToken"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x3

    goto :goto_19

    :sswitch_47
    const-string v1, "renewToken"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x4

    goto :goto_19

    :sswitch_51
    const-string v1, "getnotice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x5

    goto :goto_19

    :sswitch_5b
    const-string v1, "logout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x6

    goto :goto_19

    :sswitch_65
    const-string v1, "activate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x7

    goto :goto_19

    :sswitch_6f
    const-string v1, "callAuthenticate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x8

    goto :goto_19

    :sswitch_7a
    const-string v1, "loginCached"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x9

    goto :goto_19

    :sswitch_85
    const-string v1, "order"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0xa

    goto :goto_19

    :sswitch_90
    const-string v1, "queryorder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0xb

    goto/16 :goto_19

    :sswitch_9c
    const-string v1, "paypalVerify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0xc

    goto/16 :goto_19

    :sswitch_a8
    const-string v1, "verifyCoupon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0xd

    goto/16 :goto_19

    :sswitch_b4
    const-string v1, "getCoupon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0xe

    goto/16 :goto_19

    :sswitch_c0
    const-string v1, "payCondition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0xf

    goto/16 :goto_19

    :sswitch_cc
    const-string v1, "phonecaptcha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x10

    goto/16 :goto_19

    :sswitch_d8
    const-string v1, "phoneregister"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x11

    goto/16 :goto_19

    :sswitch_e4
    const-string v1, "reg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x12

    goto/16 :goto_19

    :sswitch_f0
    const-string v1, "touristlogin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x13

    goto/16 :goto_19

    :sswitch_fc
    const-string v1, "touristbind"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x14

    goto/16 :goto_19

    :sswitch_108
    const-string v1, "getFreeUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x15

    goto/16 :goto_19

    :sswitch_114
    const-string v1, "SDKAppConfig"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x16

    goto/16 :goto_19

    :sswitch_120
    const-string v1, "initConfig"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x17

    goto/16 :goto_19

    :sswitch_12c
    const-string v1, "config"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x18

    goto/16 :goto_19

    :pswitch_138
    const-string v0, "login"

    goto/16 :goto_10

    :pswitch_13c
    const-string v0, "pay"

    goto/16 :goto_10

    :pswitch_140
    const-string v0, "reg_tour"

    goto/16 :goto_10

    :pswitch_144
    const-string v0, "sdk_app_api"

    goto/16 :goto_10

    :pswitch_148
    const-string v0, "config"

    goto/16 :goto_10

    :sswitch_data_14c
    .sparse-switch
        -0x7ccde6ad -> :sswitch_c0
        -0x675912b4 -> :sswitch_cc
        -0x66d0b094 -> :sswitch_47
        -0x62b42b0d -> :sswitch_65
        -0x5f3aa7ad -> :sswitch_6f
        -0x50c07cbe -> :sswitch_12c
        -0x4167ea76 -> :sswitch_5b
        -0x3febb201 -> :sswitch_a8
        -0x3f2543a6 -> :sswitch_33
        -0x1d6d5089 -> :sswitch_f0
        -0x19bdd591 -> :sswitch_fc
        -0xc26378e -> :sswitch_120
        -0x925547a -> :sswitch_90
        -0x35e3822 -> :sswitch_3d
        0x1b894 -> :sswitch_e4
        0x1ba40 -> :sswitch_1f
        0x625ef69 -> :sswitch_29
        0x651874e -> :sswitch_85
        0x1459fb1c -> :sswitch_b4
        0x19cfcb2d -> :sswitch_108
        0x31ff29eb -> :sswitch_7a
        0x521e69c9 -> :sswitch_114
        0x56121e11 -> :sswitch_d8
        0x5db9cdae -> :sswitch_51
        0x62ff914c -> :sswitch_9c
    .end sparse-switch

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_144
        :pswitch_144
        :pswitch_148
        :pswitch_148
    .end packed-switch
.end method

.method private e(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    invoke-virtual {v1, p3}, Lcom/bsgamesdk/android/api/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u7f51\u7edc\u7e41\u5fd9,\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v1, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-nez v1, :cond_23

    if-eqz p2, :cond_23

    iput-object p2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p2

    :cond_23
    invoke-direct {p0, p3}, Lcom/bsgamesdk/android/api/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_51

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v2, v5}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;)V

    :try_start_38
    const-string v3, "----> url"

    invoke-static {v3, v1}, Lcom/bsgamesdk/android/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_40
    .catch Lorg/apache/http/HttpException; {:try_start_38 .. :try_end_40} :catch_52
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_15b
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_38 .. :try_end_40} :catch_b1

    move-result-object v0

    if-lez p1, :cond_4e

    iget-object v1, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v1, :cond_4e

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v2}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;)V

    :cond_4e
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-object v0

    :catch_52
    move-exception v0

    :goto_53
    instance-of v3, v0, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    if-eqz v3, :cond_8f

    if-ge p4, v5, :cond_8f

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :try_start_5c
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_65} :catch_158

    :goto_65
    add-int/lit8 v0, p4, 0x1

    :try_start_67
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6a
    .catch Lorg/apache/http/HttpException; {:try_start_67 .. :try_end_6a} :catch_6c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_153

    move-result-object v0

    goto :goto_51

    :catch_6c
    move-exception v1

    :goto_6d
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_84

    invoke-virtual {p0, p2, v1, p3, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_84

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->e(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_51

    :cond_84
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a6

    invoke-virtual {p0, p2, v0, p3, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a6

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/bsgamesdk/android/api/c;->e(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_51

    :cond_a6
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_b1
    move-exception v1

    iget v3, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v4, 0xc350b

    if-ne v3, v4, :cond_e8

    iget-object v3, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e8

    iget-object v3, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    iget-object v4, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bsgamesdk/android/api/d;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e8

    iget-object v3, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    iget-object v4, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bsgamesdk/android/api/d;->c(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->backUpUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/bsgamesdk/android/utils/ab;->b(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_e8

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_e8

    iput-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    invoke-virtual {p0, v6, v3, p3}, Lcom/bsgamesdk/android/api/c;->b(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_51

    :cond_e8
    iget v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0xea65

    if-eq v0, v3, :cond_f6

    iget v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0xea66

    if-ne v0, v3, :cond_f7

    :cond_f6
    throw v1

    :cond_f7
    iget v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v3, -0x2711

    if-eq v0, v3, :cond_10a

    if-lez p1, :cond_10a

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_10a

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v2}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;)V

    :cond_10a
    iget v0, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0x927c0

    if-ne v0, v3, :cond_14f

    if-ge p4, v5, :cond_14f

    sget-object v0, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v1, v1, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/api/b;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v0, p4, 0x1

    :try_start_11c
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/bsgamesdk/android/api/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_128
    .catch Lorg/apache/http/HttpException; {:try_start_11c .. :try_end_128} :catch_12b
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_128} :catch_156

    move-result-object v0

    goto/16 :goto_51

    :catch_12b
    move-exception v1

    :goto_12c
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_144

    invoke-virtual {p0, p2, v1, p3, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_144

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->e(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_51

    :cond_144
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14f
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    throw v1

    :catch_153
    move-exception v1

    goto/16 :goto_6d

    :catch_156
    move-exception v1

    goto :goto_12c

    :catch_158
    move-exception v0

    goto/16 :goto_65

    :catch_15b
    move-exception v0

    goto/16 :goto_53
.end method


# virtual methods
.method public a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    move v3, p2

    :goto_6
    if-ge v3, v2, :cond_4a

    if-nez v1, :cond_4a

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    invoke-virtual {v0, p3}, Lcom/bsgamesdk/android/api/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p4}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_21
    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->e:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->e:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_32} :catch_41

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_4c

    const/4 v0, 0x1

    :goto_38
    add-int/lit8 v3, v3, 0x1

    iget-object v1, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/d;->a()V

    move v1, v0

    goto :goto_6

    :catch_41
    move-exception v0

    move v0, v1

    goto :goto_38

    :cond_44
    move v0, v2

    :goto_45
    if-eqz v1, :cond_49

    add-int/lit8 v0, v0, -0x1

    :cond_49
    return v0

    :cond_4a
    move v0, v3

    goto :goto_45

    :cond_4c
    move v0, v1

    goto :goto_38
.end method

.method public a(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    invoke-virtual {v0, p3}, Lcom/bsgamesdk/android/api/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u7f51\u7edc\u7e41\u5fd9,\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_21

    if-eqz p2, :cond_21

    iput-object p2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p2

    :cond_21
    invoke-direct {p0, p3}, Lcom/bsgamesdk/android/api/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_107

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1, v4}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;)V

    :try_start_36
    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_39
    .catch Lorg/apache/http/HttpException; {:try_start_36 .. :try_end_39} :catch_48
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_10a
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_36 .. :try_end_39} :catch_a1

    move-result-object v0

    if-lez p1, :cond_47

    iget-object v2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v2, :cond_47

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;)V

    :cond_47
    :goto_47
    return-object v0

    :catch_48
    move-exception v0

    :goto_49
    instance-of v3, v0, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    if-eqz v3, :cond_82

    if-ge p4, v4, :cond_82

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :try_start_52
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5b} :catch_112

    :goto_5b
    add-int/lit8 v0, p4, 0x1

    :try_start_5d
    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_60
    .catch Lorg/apache/http/HttpException; {:try_start_5d .. :try_end_60} :catch_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_10d

    move-result-object v0

    goto :goto_47

    :catch_62
    move-exception v2

    :goto_63
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7a

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7a

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_47

    :cond_7a
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_99

    invoke-virtual {p0, p2, v0, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_99

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_47

    :cond_99
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_a1
    move-exception v0

    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0xea65

    if-eq v2, v3, :cond_b0

    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0xea66

    if-ne v2, v3, :cond_b1

    :cond_b0
    throw v0

    :cond_b1
    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v3, -0x2711

    if-eq v2, v3, :cond_c4

    if-lez p1, :cond_c4

    iget-object v2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v2, :cond_c4

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;)V

    :cond_c4
    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0x927c0

    if-ne v2, v3, :cond_106

    if-ge p4, v4, :cond_106

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/b;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v0, p4, 0x1

    :try_start_d6
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/bsgamesdk/android/api/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_e2
    .catch Lorg/apache/http/HttpException; {:try_start_d6 .. :try_end_e2} :catch_e5
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e2} :catch_110

    move-result-object v0

    goto/16 :goto_47

    :catch_e5
    move-exception v2

    :goto_e6
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_fe

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_fe

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_47

    :cond_fe
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_106
    throw v0

    :cond_107
    const/4 v0, 0x0

    goto/16 :goto_47

    :catch_10a
    move-exception v0

    goto/16 :goto_49

    :catch_10d
    move-exception v2

    goto/16 :goto_63

    :catch_110
    move-exception v2

    goto :goto_e6

    :catch_112
    move-exception v0

    goto/16 :goto_5b
.end method

.method public a(ILjava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;,
            Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;
        }
    .end annotation
.end method

.method public a(ILjava/util/LinkedList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-lez p1, :cond_23

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_23

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/c;->c:Ljava/lang/String;

    iput p1, p0, Lcom/bsgamesdk/android/api/c;->d:I

    :cond_22
    :goto_22
    return-void

    :cond_23
    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_22

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/api/c;->c:Ljava/lang/String;

    iput p1, p0, Lcom/bsgamesdk/android/api/c;->d:I

    goto :goto_22
.end method

.method public a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "original_domain"

    iget-object v1, p0, Lcom/bsgamesdk/android/api/c;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "domain"

    iget-object v1, p0, Lcom/bsgamesdk/android/api/c;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "domain_switch_count"

    iget v1, p0, Lcom/bsgamesdk/android/api/c;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->e(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    invoke-virtual {v0, p3}, Lcom/bsgamesdk/android/api/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "\u7f51\u7edc\u7e41\u5fd9,\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_21

    if-eqz p2, :cond_21

    iput-object p2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p2

    :cond_21
    invoke-direct {p0, p3}, Lcom/bsgamesdk/android/api/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_10f

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1, v4}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;)V

    :try_start_36
    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_39
    .catch Lorg/apache/http/HttpException; {:try_start_36 .. :try_end_39} :catch_4b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_112
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_36 .. :try_end_39} :catch_a3

    move-result-object v0

    if-lez p1, :cond_47

    iget-object v2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v2, :cond_47

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;)V

    :cond_47
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    :goto_4a
    return-object v0

    :catch_4b
    move-exception v0

    :goto_4c
    instance-of v3, v0, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    if-eqz v3, :cond_88

    if-ge p4, v4, :cond_88

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :try_start_55
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_5e} :catch_11a

    :goto_5e
    add-int/lit8 v0, p4, 0x1

    :try_start_60
    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_63
    .catch Lorg/apache/http/HttpException; {:try_start_60 .. :try_end_63} :catch_65
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_115

    move-result-object v0

    goto :goto_4a

    :catch_65
    move-exception v2

    :goto_66
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7d

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->b(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4a

    :cond_7d
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9f

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9f

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/bsgamesdk/android/api/c;->b(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4a

    :cond_9f
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    throw v0

    :catch_a3
    move-exception v0

    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0xea65

    if-eq v2, v3, :cond_b2

    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0xea66

    if-ne v2, v3, :cond_b3

    :cond_b2
    throw v0

    :cond_b3
    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v3, -0x2711

    if-eq v2, v3, :cond_c6

    if-lez p1, :cond_c6

    iget-object v2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v2, :cond_c6

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;)V

    :cond_c6
    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0x927c0

    if-ne v2, v3, :cond_10b

    if-ge p4, v4, :cond_10b

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/b;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v0, p4, 0x1

    :try_start_d8
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/bsgamesdk/android/api/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_e4
    .catch Lorg/apache/http/HttpException; {:try_start_d8 .. :try_end_e4} :catch_e7
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e4} :catch_118

    move-result-object v0

    goto/16 :goto_4a

    :catch_e7
    move-exception v2

    :goto_e8
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_100

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_100

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->b(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_4a

    :cond_100
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10b
    invoke-static {p3}, Lcom/bsgamesdk/android/api/b;->a(Ljava/lang/String;)V

    throw v0

    :cond_10f
    const/4 v0, 0x0

    goto/16 :goto_4a

    :catch_112
    move-exception v0

    goto/16 :goto_4c

    :catch_115
    move-exception v2

    goto/16 :goto_66

    :catch_118
    move-exception v2

    goto :goto_e8

    :catch_11a
    move-exception v0

    goto/16 :goto_5e
.end method

.method public c(ILjava/util/LinkedList;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->b(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_12

    if-eqz p2, :cond_12

    iput-object p2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p2

    :cond_12
    invoke-direct {p0, p3}, Lcom/bsgamesdk/android/api/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_c2

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;)V

    :try_start_27
    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2a
    .catch Lorg/apache/http/HttpException; {:try_start_27 .. :try_end_2a} :catch_39
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_c5
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_27 .. :try_end_2a} :catch_77

    move-result-object v0

    if-lez p1, :cond_38

    iget-object v3, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v3, :cond_38

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v3

    invoke-virtual {v3, p2, v2, v1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    :goto_38
    return-object v0

    :catch_39
    move-exception v0

    :goto_3a
    instance-of v1, v0, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    if-eqz v1, :cond_69

    if-ge p4, v5, :cond_69

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :try_start_43
    sget-object v0, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4c} :catch_cc

    :goto_4c
    add-int/lit8 v0, p4, 0x1

    :try_start_4e
    invoke-virtual {p0, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_51
    .catch Lorg/apache/http/HttpException; {:try_start_4e .. :try_end_51} :catch_53
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_c8

    move-result-object v0

    goto :goto_38

    :catch_53
    move-exception v1

    :goto_54
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_38

    :cond_61
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_38

    :cond_76
    throw v0

    :catch_77
    move-exception v0

    iget v3, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const/16 v4, -0x2711

    if-eq v3, v4, :cond_8b

    if-lez p1, :cond_8b

    iget-object v3, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-eqz v3, :cond_8b

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v3

    invoke-virtual {v3, p2, v2, v1}, Lcom/bsgamesdk/android/api/b;->a(Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    iget v2, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0x927c0

    if-ne v2, v3, :cond_c1

    if-ge p4, v5, :cond_c1

    sget-object v2, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/bsgamesdk/android/api/b;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v0, p4, 0x1

    :try_start_9d
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/bsgamesdk/android/api/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a9
    .catch Lorg/apache/http/HttpException; {:try_start_9d .. :try_end_a9} :catch_ab
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a9} :catch_ca

    move-result-object v0

    goto :goto_38

    :catch_ab
    move-exception v1

    :goto_ac
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b9

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->c(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_38

    :cond_b9
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    throw v0

    :cond_c2
    const/4 v0, 0x0

    goto/16 :goto_38

    :catch_c5
    move-exception v0

    goto/16 :goto_3a

    :catch_c8
    move-exception v1

    goto :goto_54

    :catch_ca
    move-exception v1

    goto :goto_ac

    :catch_cc
    move-exception v0

    goto/16 :goto_4c
.end method

.method public d(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->f:Lcom/bsgamesdk/android/api/d;

    invoke-virtual {v0, p3}, Lcom/bsgamesdk/android/api/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "\u7f51\u7edc\u7e41\u5fd9,\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_19

    if-eqz p2, :cond_19

    iput-object p2, p0, Lcom/bsgamesdk/android/api/c;->a:Ljava/util/LinkedList;

    :cond_19
    invoke-direct {p0, p3}, Lcom/bsgamesdk/android/api/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_d6

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bsgamesdk/android/api/c;->a(ILjava/util/LinkedList;)V

    :try_start_2c
    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2f
    .catch Lorg/apache/http/HttpException; {:try_start_2c .. :try_end_2f} :catch_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_d9
    .catch Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode; {:try_start_2c .. :try_end_2f} :catch_83

    move-result-object v0

    :goto_30
    return-object v0

    :catch_31
    move-exception v1

    :goto_32
    instance-of v3, v1, Lcom/bsgamesdk/android/api/asynchttp/HTTPFobiddenException;

    if-eqz v3, :cond_6b

    if-ge p4, v4, :cond_6b

    invoke-static {v1}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    :try_start_3b
    sget-object v1, Lcom/bsgamesdk/android/b;->c:Lcom/bsgamesdk/android/api/k;

    invoke-static {}, Lcom/bsgamesdk/android/utils/ab;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/bsgamesdk/android/api/k;->a(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_44} :catch_e1

    :goto_44
    add-int/lit8 v1, p4, 0x1

    :try_start_46
    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_49
    .catch Lorg/apache/http/HttpException; {:try_start_46 .. :try_end_49} :catch_4b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_dc

    move-result-object v0

    goto :goto_30

    :catch_4b
    move-exception v0

    :goto_4c
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_63

    invoke-virtual {p0, p2, v0, p3, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_63

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/bsgamesdk/android/api/c;->d(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_30

    :cond_63
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_82

    invoke-virtual {p0, p2, v0, p3, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_82

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/bsgamesdk/android/api/c;->d(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_30

    :cond_82
    throw v1

    :catch_83
    move-exception v0

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0xea65

    if-eq v1, v3, :cond_92

    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0xea66

    if-ne v1, v3, :cond_93

    :cond_92
    throw v0

    :cond_93
    iget v1, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->mCode:I

    const v3, 0x927c0

    if-ne v1, v3, :cond_d5

    if-ge p4, v4, :cond_d5

    sget-object v1, Lcom/bsgamesdk/android/api/e;->a:Lcom/bsgamesdk/android/api/b;

    iget-object v0, v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;->newConfig:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/bsgamesdk/android/api/b;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v0, p4, 0x1

    :try_start_a5
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/bsgamesdk/android/api/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/api/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_b1
    .catch Lorg/apache/http/HttpException; {:try_start_a5 .. :try_end_b1} :catch_b4
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b1} :catch_df

    move-result-object v0

    goto/16 :goto_30

    :catch_b4
    move-exception v1

    :goto_b5
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_cd

    invoke-virtual {p0, p2, v1, p3, v2}, Lcom/bsgamesdk/android/api/c;->a(Ljava/util/LinkedList;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_cd

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/bsgamesdk/android/api/c;->d(ILjava/util/LinkedList;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_30

    :cond_cd
    new-instance v0, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/BSGameSdkExceptionCode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d5
    throw v0

    :cond_d6
    const/4 v0, 0x0

    goto/16 :goto_30

    :catch_d9
    move-exception v1

    goto/16 :goto_32

    :catch_dc
    move-exception v0

    goto/16 :goto_4c

    :catch_df
    move-exception v1

    goto :goto_b5

    :catch_e1
    move-exception v1

    goto/16 :goto_44
.end method
