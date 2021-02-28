.class public Lcn/sharesdk/google/b;
.super Ljava/lang/Object;
.source "GooglePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/google/b$a;,
        Lcn/sharesdk/google/b$b;,
        Lcn/sharesdk/google/b$c;
    }
.end annotation


# static fields
.field public static a:Landroid/os/IBinder;

.field public static b:Landroid/os/IBinder;

.field private static final c:[[B

.field private static s:Z


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcn/sharesdk/google/b$b;

.field private i:[Ljava/lang/String;

.field private j:Z

.field private k:Lcn/sharesdk/framework/PlatformActionListener;

.field private l:Lcn/sharesdk/framework/Platform;

.field private m:Lcn/sharesdk/framework/PlatformDb;

.field private n:Z

.field private o:Lcn/sharesdk/google/e;

.field private p:Z

.field private q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const-string v1, "MIIEQzCCAyugAwIBAgIJAMLgh0ZkSjCNMA0GCSqGSIb3DQEBBAUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAeFw0wODA4MjEyMzEzMzRaFw0zNjAxMDcyMzEzMzRaMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBAKtWLgDYO6IIrgqWbxJOKdoR8qtW0I9Y4sypEwPpt1TTcvZApxsdyxMJZ2JORland2qSGT2y5b+3JKkedxiLDmpHpDsz2WCbdxgxRczfey5YZnTJ4VZbH0xqWVW/8lGmPav5xVwnIiJS6HXk+BVKZF+JcWjAsb/GEuq/eFdpuzSqeYTcfi6idkyugwfYwXFU1+5fZKUaRKYCwkkFQVfcAs1fXA5V+++FGfvjJ/CxURaSxaBvGdGDhfXE28LWuT9ozCl5xw4Yq5OGazvV24mZVSoOO0yZ31j7kYvtwYK6NeADwbSxDdJEqO4k//0zOHKrUiGYXtqw/A0LFFtqoZKFjnkCAQOjgdkwgdYwHQYDVR0OBBYEFMd9jMIhF1Ylmn/Tgt9r45jk14alMIGmBgNVHSMEgZ4wgZuAFMd9jMIhF1Ylmn/Tgt9r45jk14aloXikdjB0MQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEUMBIGA1UEChMLR29vZ2xlIEluYy4xEDAOBgNVBAsTB0FuZHJvaWQxEDAOBgNVBAMTB0FuZHJvaWSCCQDC4IdGZEowjTAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBAUAA4IBAQBt0lLO74UwLDYKqs6Tm8/yzKkEu116FmH4rkaymUIE0P9KaMftGlMexFlaYjzmB2OxZyl6euNXEsQH8gjwyxCUKRJNexBiGcCEyj6z+a1fuHHvkiaai+KL8W1EyNmgjmyy8AW7P+LLlkR+ho5zEHatRbM/YAnqGcFh5iZBqpknHf1SKMXFh4dd239FJ1jWYfbMDMy3NS5CTMQ2XFI1MvcyUTdZPErjQfTbQe3aDQsQcafEQPD+nqActifKZ0Np0IS9L9kR/wbNvyz6ENwPiTrjV2KRkEjH78ZMcUQXg0L3BYHJ3lc69Vs5Ddf9uUGGMYldX3WfMBEmh/9iFBDAaTCK"

    .line 58
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "MIIEqDCCA5CgAwIBAgIJANWFuGx90071MA0GCSqGSIb3DQEBBAUAMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTAeFw0wODA0MTUyMzM2NTZaFw0zNTA5MDEyMzM2NTZaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbTCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBANbOLggKv+IxTdGNs8/TGFy0PTP6DHThvbbR24kT9ixcOd9W+EaBPWW+wPPKQmsHxajtWjmQwWfna8mZuSeJS48LIgAZlKkpFeVyxW0qMBujb8X8ETrWy550NaFtI6t9+u7hZeTfHwqNvacKhp1RbE6dBRGWynwMVX8XW8N1+UjFaq6GCJukT4qmpN2afb8sCjUigq0GuMwYXrFVee74bQgLHWGJwPmvmLHC69EH6kWr22ijx4OKXlSIx2xT1AsSHee70w5iDBiK4aph27yH3TxkXy9V89TDdexAcKk/cVHYNnDBapcavl7y0RiQ4biu8ymM8Ga/nmzhRKya6G0cGw8CAQOjgfwwgfkwHQYDVR0OBBYEFI0cxb6VTEM8YYY6FbBMvAPyT+CyMIHJBgNVHSMEgcEwgb6AFI0cxb6VTEM8YYY6FbBMvAPyT+CyoYGapIGXMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEQMA4GA1UEChMHQW5kcm9pZDEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDEiMCAGCSqGSIb3DQEJARYTYW5kcm9pZEBhbmRyb2lkLmNvbYIJANWFuGx90071MAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEEBQADggEBABnTDPEF+3iSP0wNfdIjIz1AlnrPzgAIHVvXxunW7SBrDhEglQZBbKJEk5kT0mtKoOD1JMrSu1xuTKEBahWRbqHsXclaXjoBADb0kkjVEJu/Lh5hgYZnOjvlba8Ld7HCKePCVePoTJBdI4fvugnL8TsgK05aIskyY0hKI9L8KfqfGTl1lzOv2KoWD0KWwtAWPoGChZxmQ+nBli+gwYMzM1vAkP+aayLe0a1EQimlOalO762r0GXO0ks+UeXde2Z4e+8S/pf7pITEI/tP+MxJTALw9QUWEv9lKTk+jkbqxbsh8nfBUapfKqYn0eidpwq2AzVp3juYl7//fKnaPhJD9gs="

    .line 76
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcn/sharesdk/google/b;->c:[[B

    .line 109
    sput-boolean v3, Lcn/sharesdk/google/b;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcn/sharesdk/google/b;->j:Z

    .line 108
    iput-boolean v0, p0, Lcn/sharesdk/google/b;->r:Z

    .line 115
    iput-object p2, p0, Lcn/sharesdk/google/b;->d:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcn/sharesdk/google/b;->e:Landroid/content/Context;

    .line 117
    iput-object p4, p0, Lcn/sharesdk/google/b;->f:[Ljava/lang/String;

    .line 118
    iput-object p6, p0, Lcn/sharesdk/google/b;->g:[Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcn/sharesdk/google/b;->i:[Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/google/b;->p:Z

    .line 121
    sget v0, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    iput v0, p0, Lcn/sharesdk/google/b;->q:I

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcn/sharesdk/google/b;->b:Landroid/os/IBinder;

    .line 123
    return-void
.end method

.method public static a()I
    .registers 1

    .prologue
    .line 130
    const v0, 0x13ab6680

    invoke-static {v0}, Lcn/sharesdk/google/b;->a(I)I

    move-result v0

    return v0
.end method

.method private static a(I)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 136
    :try_start_9
    const-string v2, "com.google.android.apps.plus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 137
    const-string v3, "com.google.android.apps.plus"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 138
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v2, p0, :cond_1d

    .line 139
    const/4 v0, 0x2

    .line 147
    :cond_1c
    :goto_1c
    return v0

    .line 141
    :cond_1d
    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1f} :catch_23

    if-nez v1, :cond_1c

    .line 142
    const/4 v0, 0x3

    goto :goto_1c

    .line 145
    :catch_23
    move-exception v0

    .line 147
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method static synthetic a(Lcn/sharesdk/google/b;)I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcn/sharesdk/google/b;->q:I

    return v0
.end method

.method static synthetic a(Lcn/sharesdk/google/b;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/sharesdk/google/b;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Parcel;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static/range {p1 .. p1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;)I

    move-result v20

    .line 470
    const/16 v19, 0x0

    .line 471
    const/16 v18, 0x0

    .line 472
    const/16 v17, 0x0

    .line 473
    const/16 v16, 0x0

    .line 474
    const/4 v15, 0x0

    .line 476
    const/4 v14, 0x0

    .line 477
    const/4 v13, 0x0

    .line 478
    const/4 v12, 0x0

    .line 480
    const/4 v11, 0x0

    .line 482
    const/4 v10, 0x0

    .line 483
    const/4 v9, 0x0

    .line 484
    const/4 v8, 0x0

    .line 485
    const/4 v7, 0x0

    .line 492
    const/4 v6, 0x0

    .line 493
    const/4 v5, 0x0

    .line 494
    const/4 v4, 0x0

    .line 496
    const/4 v3, 0x0

    .line 497
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v20

    if-ge v2, v0, :cond_3ce

    .line 498
    invoke-static/range {p1 .. p1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;)I

    move-result v2

    .line 499
    invoke-static {v2}, Lcn/sharesdk/google/d;->a(I)I

    move-result v21

    packed-switch v21, :pswitch_data_4ee

    .line 600
    :pswitch_2c
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;I)V

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    :goto_46
    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move-object v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    .line 603
    goto :goto_19

    .line 501
    :pswitch_5c
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 503
    goto :goto_46

    .line 505
    :pswitch_77
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    move/from16 v2, v22

    .line 507
    goto :goto_46

    .line 509
    :pswitch_96
    sget-object v18, Lcn/sharesdk/google/UserData$AgeRange;->a:Lcn/sharesdk/google/UserData$AgeRange$a;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/google/UserData$AgeRange;

    move-object/from16 v18, v19

    move-object/from16 v22, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v2

    move v2, v3

    move-object/from16 v3, v22

    .line 511
    goto :goto_46

    .line 513
    :pswitch_bb
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    move v2, v3

    move-object v3, v4

    move-object/from16 v4, v22

    .line 515
    goto/16 :goto_46

    .line 517
    :pswitch_db
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v22, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object v15, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, v22

    .line 519
    goto/16 :goto_46

    .line 521
    :pswitch_fa
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v2

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v6, v22

    .line 523
    goto/16 :goto_46

    .line 525
    :pswitch_11a
    sget-object v21, Lcn/sharesdk/google/UserData$Cover;->a:Lcn/sharesdk/google/UserData$Cover$a;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/google/UserData$Cover;

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 527
    goto/16 :goto_46

    .line 529
    :pswitch_13d
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v22, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, v22

    .line 531
    goto/16 :goto_46

    .line 533
    :pswitch_15d
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object/from16 v8, v22

    .line 535
    goto/16 :goto_46

    .line 537
    :pswitch_17d
    sget-object v12, Lcn/sharesdk/google/UserData$Emails;->a:Lcn/sharesdk/google/UserData$Emails$a;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v12}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v10

    move v10, v11

    move-object v11, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, v22

    .line 539
    goto/16 :goto_46

    .line 541
    :pswitch_19f
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 543
    goto/16 :goto_46

    .line 545
    :pswitch_1bb
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v2

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v22, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move/from16 v10, v22

    .line 547
    goto/16 :goto_46

    .line 549
    :pswitch_1db
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->c(Landroid/os/Parcel;I)Z

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 551
    goto/16 :goto_46

    .line 553
    :pswitch_1f7
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v2

    move v2, v3

    move-object/from16 v3, v22

    .line 555
    goto/16 :goto_46

    .line 557
    :pswitch_217
    sget-object v9, Lcn/sharesdk/google/UserData$Image;->a:Lcn/sharesdk/google/UserData$Image$a;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/google/UserData$Image;

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v22, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, v22

    .line 558
    goto/16 :goto_46

    .line 560
    :pswitch_23b
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->c(Landroid/os/Parcel;I)Z

    move-result v2

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v22, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, v22

    .line 561
    goto/16 :goto_46

    .line 563
    :pswitch_25b
    sget-object v21, Lcn/sharesdk/google/UserData$Name;->a:Lcn/sharesdk/google/UserData$Name$a;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Lcn/sharesdk/google/d;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/google/UserData$Name;

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 564
    goto/16 :goto_46

    .line 566
    :pswitch_27e
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v5

    move v5, v6

    move-object v6, v2

    move v2, v3

    move-object v3, v4

    move-object/from16 v4, v22

    .line 567
    goto/16 :goto_46

    .line 569
    :pswitch_29e
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 570
    goto/16 :goto_46

    .line 572
    :pswitch_2ba
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 573
    goto/16 :goto_46

    .line 575
    :pswitch_2d6
    sget-object v21, Lcn/sharesdk/google/UserData$PlacesLived;->a:Lcn/sharesdk/google/UserData$PlacesLived$a;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 576
    goto/16 :goto_46

    .line 578
    :pswitch_2f6
    sget-object v21, Lcn/sharesdk/google/UserData$Organizations;->a:Lcn/sharesdk/google/UserData$Organizations$a;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 579
    goto/16 :goto_46

    .line 581
    :pswitch_316
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move-result v2

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v4

    move-object v4, v5

    move v5, v2

    move v2, v3

    move-object/from16 v3, v22

    .line 582
    goto/16 :goto_46

    .line 584
    :pswitch_336
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->d(Landroid/os/Parcel;I)I

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 585
    goto/16 :goto_46

    .line 587
    :pswitch_352
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v2

    move v2, v3

    move-object/from16 v3, v22

    .line 588
    goto/16 :goto_46

    .line 590
    :pswitch_372
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v22, v2

    move v2, v3

    move-object v3, v4

    move-object/from16 v4, v22

    .line 591
    goto/16 :goto_46

    .line 593
    :pswitch_392
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/sharesdk/google/d;->c(Landroid/os/Parcel;I)Z

    move-result v2

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 594
    goto/16 :goto_46

    .line 596
    :pswitch_3ae
    sget-object v21, Lcn/sharesdk/google/UserData$Urls;->a:Lcn/sharesdk/google/UserData$Urls$a;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Lcn/sharesdk/google/d;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    .line 597
    goto/16 :goto_46

    .line 604
    :cond_3ce
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v20

    if-eq v2, v0, :cond_3f1

    .line 605
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overread allowed size end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    :cond_3f1
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v20, "googleinitPerson,"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 613
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 614
    const-string v2, "id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v2, "DisplayName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v10, "ageRange_Max"

    if-nez v18, :cond_4c0

    const/4 v2, 0x0

    :goto_41e
    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v10, "ageRange_Min"

    if-nez v18, :cond_4ca

    const/4 v2, 0x0

    :goto_428
    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v2, "aboutMe"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v2, "birthday"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v2, "braggingRights"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v2, "circledByCount"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v2, "currentLocation"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    if-eqz v12, :cond_4e0

    .line 626
    const-string v10, "Emails"

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4d4

    const/4 v2, 0x0

    :goto_465
    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :goto_46a
    const-string v2, "gender"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v10, "image"

    if-nez v9, :cond_4e9

    const/4 v2, 0x0

    :goto_47a
    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v2, "isPlusUser"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v2, "Language"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v2, "RelationshipStatus"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v2, "Tagline"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v2, "url"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v2, "isVerified"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v2, ""

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/google/b;->a(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 643
    return-void

    .line 617
    :cond_4c0
    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/google/UserData$AgeRange;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_41e

    .line 618
    :cond_4ca
    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/google/UserData$AgeRange;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_428

    .line 626
    :cond_4d4
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/google/UserData$Emails;

    invoke-virtual {v2}, Lcn/sharesdk/google/UserData$Emails;->e()Ljava/lang/String;

    move-result-object v2

    goto :goto_465

    .line 628
    :cond_4e0
    const-string v2, "Emails"

    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46a

    .line 632
    :cond_4e9
    invoke-virtual {v9}, Lcn/sharesdk/google/UserData$Image;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_47a

    .line 499
    :pswitch_data_4ee
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_77
        :pswitch_96
        :pswitch_bb
        :pswitch_db
        :pswitch_fa
        :pswitch_11a
        :pswitch_13d
        :pswitch_15d
        :pswitch_17d
        :pswitch_19f
        :pswitch_1bb
        :pswitch_1db
        :pswitch_1f7
        :pswitch_217
        :pswitch_23b
        :pswitch_2c
        :pswitch_27e
        :pswitch_25b
        :pswitch_2ba
        :pswitch_29e
        :pswitch_2f6
        :pswitch_2d6
        :pswitch_336
        :pswitch_316
        :pswitch_372
        :pswitch_352
        :pswitch_3ae
        :pswitch_392
    .end packed-switch
.end method

.method private a(Lcn/sharesdk/google/b$b;)V
    .registers 3

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/google/b;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 203
    monitor-exit p0

    .line 204
    return-void

    .line 203
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method static synthetic a(Lcn/sharesdk/google/b;Landroid/os/Parcel;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/sharesdk/google/b;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/google/b;Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/google/b;->a(Ljava/lang/String;Ljava/util/HashMap;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 439
    iget-boolean v0, p0, Lcn/sharesdk/google/b;->p:Z

    if-eqz v0, :cond_c

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/google/b;->p:Z

    .line 441
    packed-switch p3, :pswitch_data_36

    .line 463
    :cond_c
    :goto_c
    return-void

    .line 443
    :pswitch_d
    iget-object v0, p0, Lcn/sharesdk/google/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_c

    .line 444
    iget-object v0, p0, Lcn/sharesdk/google/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/google/b;->l:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v3, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_c

    .line 448
    :pswitch_19
    iget-object v0, p0, Lcn/sharesdk/google/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_c

    .line 449
    iget-object v0, p0, Lcn/sharesdk/google/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/google/b;->l:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_c

    .line 453
    :pswitch_25
    iget-object v0, p0, Lcn/sharesdk/google/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_c

    .line 454
    iget-object v0, p0, Lcn/sharesdk/google/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/google/b;->l:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_c

    .line 441
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_d
        :pswitch_19
        :pswitch_25
    .end packed-switch
.end method

.method public static a(ZLjava/lang/Object;)V
    .registers 4

    .prologue
    .line 843
    if-nez p0, :cond_c

    .line 844
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_c
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/google/b;Z)Z
    .registers 2

    .prologue
    .line 54
    iput-boolean p1, p0, Lcn/sharesdk/google/b;->r:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 54
    sput-boolean p0, Lcn/sharesdk/google/b;->s:Z

    return p0
.end method

.method private static a(Landroid/content/pm/PackageInfo;[[B)[B
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 322
    :try_start_3
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_8} :catch_1f

    move-result-object v0

    .line 327
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-eq v3, v6, :cond_31

    .line 328
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Package has more than one signature."

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 356
    :goto_1e
    return-object v0

    .line 323
    :catch_1f
    move-exception v0

    .line 324
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Could not get certificate instance."

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 325
    goto :goto_1e

    .line 331
    :cond_31
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 334
    :try_start_3e
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_44
    .catch Ljava/security/cert/CertificateException; {:try_start_3e .. :try_end_44} :catch_5d

    .line 340
    :try_start_44
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_47
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_44 .. :try_end_47} :catch_6f
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_44 .. :try_end_47} :catch_81

    .line 348
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    move v0, v1

    .line 349
    :goto_50
    array-length v3, p1

    if-ge v0, v3, :cond_96

    .line 350
    aget-object v3, p1, v0

    .line 351
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_93

    move-object v0, v3

    .line 352
    goto :goto_1e

    .line 335
    :catch_5d
    move-exception v0

    .line 336
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Could not generate certificate."

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 337
    goto :goto_1e

    .line 341
    :catch_6f
    move-exception v0

    .line 342
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Certificate has expired."

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 343
    goto :goto_1e

    .line 344
    :catch_81
    move-exception v0

    .line 345
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Certificate is not yet valid."

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 346
    goto :goto_1e

    .line 349
    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 355
    :cond_96
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v5, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature not valid.  Found: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 356
    goto/16 :goto_1e
.end method

.method private b(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_38

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 659
    :pswitch_17
    const-string v0, "SUCCESS"

    goto :goto_16

    .line 660
    :pswitch_1a
    const-string v0, "SERVICE_MISSING"

    goto :goto_16

    .line 661
    :pswitch_1d
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_16

    .line 662
    :pswitch_20
    const-string v0, "SERVICE_DISABLED"

    goto :goto_16

    .line 663
    :pswitch_23
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_16

    .line 664
    :pswitch_26
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_16

    .line 665
    :pswitch_29
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_16

    .line 666
    :pswitch_2c
    const-string v0, "NETWORK_ERROR"

    goto :goto_16

    .line 667
    :pswitch_2f
    const-string v0, "INTERNAL_ERROR"

    goto :goto_16

    .line 668
    :pswitch_32
    const-string v0, "SERVICE_INVALID"

    goto :goto_16

    .line 669
    :pswitch_35
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_16

    .line 658
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
    .end packed-switch
.end method

.method static synthetic b(Lcn/sharesdk/google/b;)Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcn/sharesdk/google/b;->r:Z

    return v0
.end method

.method static synthetic b(Lcn/sharesdk/google/b;Z)Z
    .registers 2

    .prologue
    .line 54
    iput-boolean p1, p0, Lcn/sharesdk/google/b;->n:Z

    return p1
.end method

.method static synthetic c(Lcn/sharesdk/google/b;)Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcn/sharesdk/google/b;->n:Z

    return v0
.end method

.method public static d()I
    .registers 7

    .prologue
    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 276
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 279
    :try_start_c
    const-string v4, "com.android.vending"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_13} :catch_2c

    move-result-object v4

    .line 284
    sget-object v5, Lcn/sharesdk/google/b;->c:[[B

    invoke-static {v4, v5}, Lcn/sharesdk/google/b;->a(Landroid/content/pm/PackageInfo;[[B)[B

    move-result-object v4

    .line 285
    if-nez v4, :cond_3e

    .line 286
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "GooglePlayServicesUtil"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Google Play Store signature invalid."

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 316
    :goto_2b
    return v0

    .line 280
    :catch_2c
    move-exception v0

    .line 281
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Google Play Store is missing."

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    .line 282
    goto :goto_2b

    .line 291
    :cond_3e
    :try_start_3e
    const-string v5, "com.google.android.gms"

    const/16 v6, 0x40

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_45} :catch_60

    move-result-object v5

    .line 296
    new-array v6, v2, [[B

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Lcn/sharesdk/google/b;->a(Landroid/content/pm/PackageInfo;[[B)[B

    move-result-object v4

    if-nez v4, :cond_72

    .line 297
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "GooglePlayServicesUtil"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Google Play services signature invalid."

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2b

    .line 292
    :catch_60
    move-exception v0

    .line 293
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Google Play services is missing."

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    .line 294
    goto :goto_2b

    .line 300
    :cond_72
    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x2fda64

    if-ge v0, v4, :cond_9d

    .line 301
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v3, "GooglePlayServicesUtil"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Google Play services out of date.  Requires 3136100 but found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 303
    const/4 v0, 0x2

    goto :goto_2b

    .line 307
    :cond_9d
    :try_start_9d
    const-string v0, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_a3} :catch_aa

    move-result-object v0

    .line 313
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_c4

    .line 314
    const/4 v0, 0x3

    goto :goto_2b

    .line 308
    :catch_aa
    move-exception v0

    .line 309
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v4, "GooglePlayServicesUtil"

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Google Play services missing when getting application info."

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 310
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v0, v2

    .line 311
    goto/16 :goto_2b

    :cond_c4
    move v0, v1

    .line 316
    goto/16 :goto_2b
.end method

.method static synthetic d(Lcn/sharesdk/google/b;)V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/sharesdk/google/b;->g()V

    return-void
.end method

.method static synthetic e(Lcn/sharesdk/google/b;)Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcn/sharesdk/google/b;->p:Z

    return v0
.end method

.method static synthetic f(Lcn/sharesdk/google/b;)Lcn/sharesdk/framework/PlatformDb;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/sharesdk/google/b;->m:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/google/b;)Lcn/sharesdk/google/e;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/sharesdk/google/b;->o:Lcn/sharesdk/google/e;

    return-object v0
.end method

.method private g()V
    .registers 6

    .prologue
    .line 232
    invoke-virtual {p0}, Lcn/sharesdk/google/b;->c()Z

    move-result v0

    if-nez v0, :cond_10

    .line 233
    iget-object v0, p0, Lcn/sharesdk/google/b;->o:Lcn/sharesdk/google/e;

    if-eqz v0, :cond_f

    .line 234
    iget-object v0, p0, Lcn/sharesdk/google/b;->o:Lcn/sharesdk/google/e;

    invoke-virtual {v0}, Lcn/sharesdk/google/e;->finish()V

    .line 260
    :cond_f
    :goto_f
    return-void

    .line 239
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcn/sharesdk/google/b;->h()V

    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_3f

    move-result-object v2

    .line 244
    :try_start_1b
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 246
    sget-object v0, Lcn/sharesdk/google/b;->b:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 247
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 248
    iget-object v0, p0, Lcn/sharesdk/google/b;->o:Lcn/sharesdk/google/e;

    if-eqz v0, :cond_38

    .line 249
    iget-object v0, p0, Lcn/sharesdk/google/b;->o:Lcn/sharesdk/google/e;

    invoke-virtual {v0}, Lcn/sharesdk/google/e;->finish()V
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_48

    .line 252
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3e} :catch_3f

    goto :goto_f

    .line 256
    :catch_3f
    move-exception v0

    .line 257
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_f

    .line 252
    :catchall_48
    move-exception v0

    :try_start_49
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_3f
.end method

.method private h()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 266
    :try_start_8
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcn/sharesdk/google/b;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 268
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 270
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    return-void

    .line 270
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method


# virtual methods
.method public a(IILandroid/app/PendingIntent;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 647
    invoke-virtual {p0, p1, p3}, Lcn/sharesdk/google/b;->a(ILandroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 651
    :goto_7
    return-void

    .line 650
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/google/b;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_7
.end method

.method protected final a(Landroid/os/IBinder;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 361
    :try_start_2
    new-instance v0, Lcn/sharesdk/google/b$c;

    invoke-direct {v0, p0}, Lcn/sharesdk/google/b$c;-><init>(Lcn/sharesdk/google/b;)V

    .line 362
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 363
    const-string v2, "skip_oob"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    const-string v2, "request_visible_actions"

    iget-object v3, p0, Lcn/sharesdk/google/b;->f:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcn/sharesdk/google/b;->i:[Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 366
    const-string v2, "required_features"

    iget-object v3, p0, Lcn/sharesdk/google/b;->i:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 368
    :cond_24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 370
    const-string v4, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Lcn/sharesdk/google/b$c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 372
    const v0, 0x2fda64

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-object v0, p0, Lcn/sharesdk/google/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcn/sharesdk/google/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcn/sharesdk/google/b;->g:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcn/sharesdk/google/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 379
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 380
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 382
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_70} :catch_71

    .line 392
    :goto_70
    return-void

    .line 384
    :catch_71
    move-exception v0

    .line 385
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "GmsClient"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "service died"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 389
    const-string v0, "google service died"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcn/sharesdk/google/b;->a(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto :goto_70
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/PlatformDb;)V
    .registers 4

    .prologue
    .line 944
    iput-object p2, p0, Lcn/sharesdk/google/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    .line 945
    iput-object p1, p0, Lcn/sharesdk/google/b;->l:Lcn/sharesdk/framework/Platform;

    .line 946
    iput-object p3, p0, Lcn/sharesdk/google/b;->m:Lcn/sharesdk/framework/PlatformDb;

    .line 947
    return-void
.end method

.method public a(Lcn/sharesdk/google/e;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcn/sharesdk/google/b;->o:Lcn/sharesdk/google/e;

    .line 127
    return-void
.end method

.method public a(ILandroid/app/PendingIntent;)Z
    .registers 4

    .prologue
    .line 654
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Ljava/lang/String;Lcn/sharesdk/google/b$b;)Z
    .registers 6

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcn/sharesdk/google/b;->j:Z

    .line 194
    iget-object v0, p0, Lcn/sharesdk/google/b;->e:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/sharesdk/google/b;->j:Z

    .line 196
    monitor-exit p0

    return v0

    .line 197
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public b()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 151
    invoke-static {}, Lcn/sharesdk/google/b;->d()I

    move-result v0

    .line 152
    if-eqz v0, :cond_e

    .line 153
    const-string v0, "Google Play services is missing"

    invoke-direct {p0, v0, v6, v5}, Lcn/sharesdk/google/b;->a(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 189
    :goto_d
    return-void

    .line 157
    :cond_e
    iget-object v0, p0, Lcn/sharesdk/google/b;->h:Lcn/sharesdk/google/b$b;

    if-eqz v0, :cond_38

    .line 160
    iget-object v0, p0, Lcn/sharesdk/google/b;->h:Lcn/sharesdk/google/b$b;

    invoke-direct {p0, v0}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b$b;)V

    .line 164
    :goto_17
    const-string v0, "com.google.android.gms.plus.service.START"

    iget-object v1, p0, Lcn/sharesdk/google/b;->h:Lcn/sharesdk/google/b$b;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/google/b;->a(Ljava/lang/String;Lcn/sharesdk/google/b$b;)Z

    move-result v0

    .line 165
    if-nez v0, :cond_40

    .line 166
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "GmsClient"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "unable to connect to service: com.google.android.gms.plus.service.START"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 167
    const-string v0, "unable to connect to service: com.google.android.gms.plus.service.START"

    invoke-direct {p0, v0, v6, v5}, Lcn/sharesdk/google/b;->a(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto :goto_d

    .line 162
    :cond_38
    new-instance v0, Lcn/sharesdk/google/b$b;

    invoke-direct {v0, p0}, Lcn/sharesdk/google/b$b;-><init>(Lcn/sharesdk/google/b;)V

    iput-object v0, p0, Lcn/sharesdk/google/b;->h:Lcn/sharesdk/google/b$b;

    goto :goto_17

    .line 170
    :cond_40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/google/b$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/google/b$1;-><init>(Lcn/sharesdk/google/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method

.method public b(Lcn/sharesdk/google/e;)V
    .registers 3

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/google/b;->n:Z

    .line 212
    iput-object p1, p0, Lcn/sharesdk/google/b;->o:Lcn/sharesdk/google/e;

    .line 216
    invoke-direct {p0}, Lcn/sharesdk/google/b;->g()V

    .line 229
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcn/sharesdk/google/b;->h:Lcn/sharesdk/google/b$b;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcn/sharesdk/google/b;->s:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 675
    iget-boolean v0, p0, Lcn/sharesdk/google/b;->j:Z

    return v0
.end method

.method public f()V
    .registers 6

    .prologue
    .line 694
    iget-object v0, p0, Lcn/sharesdk/google/b;->h:Lcn/sharesdk/google/b$b;

    if-eqz v0, :cond_1d

    .line 695
    iget-object v0, p0, Lcn/sharesdk/google/b;->h:Lcn/sharesdk/google/b$b;

    invoke-direct {p0, v0}, Lcn/sharesdk/google/b;->a(Lcn/sharesdk/google/b$b;)V

    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/google/b;->h:Lcn/sharesdk/google/b$b;

    .line 697
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "desConnectServer"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 700
    :cond_1d
    return-void
.end method
