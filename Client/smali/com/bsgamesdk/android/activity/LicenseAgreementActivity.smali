.class public Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;


# static fields
.field public static final IN_TYPE:Ljava/lang/String; = "IN_TYPE"

.field public static final IN_TYPE_TOUR_AUTO_LOGIN:Ljava/lang/String; = "IN_TYPE_TOUR_AUTO_LOGIN"

.field public static final IN_TYPE_TOUR_LOGIN:Ljava/lang/String; = "IN_TYPE_TOUR_LOGIN"

.field public static final IN_TYPE_USER_AUTO_LOGIN:Ljava/lang/String; = "IN_TYPE_USER_AUTO_LOGIN"

.field public static final IN_TYPE_USER_LOGIN:Ljava/lang/String; = "IN_TYPE_USER_LOGIN"

.field public static final TOUR_AUTO_LOGIN_RESULT_AGREE:I = 0x3eb

.field public static final TOUR_AUTO_LOGIN_RESULT_DISAGREE:I = 0x3ec

.field public static final TOUR_LOGIN_RESULT_AGREE:I = 0x3ed

.field public static final TOUR_LOGIN_RESULT_DISAGREE:I = 0x3ee

.field public static final UID:Ljava/lang/String; = "UID"

.field public static final USER_AUTO_LOGIN_RESULT_AGREE:I = 0x3ef

.field public static final USER_AUTO_LOGIN_RESULT_DISAGREE:I = 0x3f0

.field public static final USER_LOGIN_RESULT_AGREE:I = 0x3e9

.field public static final USER_LOGIN_RESULT_DISAGREE:I = 0x3ea


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/bsgamesdk/android/model/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_3d

    move-result-object v0

    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3b} :catch_3d

    move-result-object v0

    goto :goto_8

    :catch_3d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    const-string v0, "\u8bfb\u53d6\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u6587\u4ef6\u540d"

    goto :goto_1b
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 5

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_5e

    :cond_a
    move v1, v0

    :goto_b
    packed-switch v1, :pswitch_data_70

    :goto_e
    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->finish()V

    return-void

    :sswitch_15
    const-string v2, "IN_TYPE_USER_LOGIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :sswitch_1f
    const-string v2, "IN_TYPE_TOUR_AUTO_LOGIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :sswitch_29
    const-string v2, "IN_TYPE_TOUR_LOGIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_b

    :sswitch_33
    const-string v2, "IN_TYPE_USER_AUTO_LOGIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    goto :goto_b

    :pswitch_3d
    if-eqz p1, :cond_42

    const/16 v0, 0x3e9

    goto :goto_e

    :cond_42
    const/16 v0, 0x3ea

    goto :goto_e

    :pswitch_45
    if-eqz p1, :cond_4a

    const/16 v0, 0x3eb

    goto :goto_e

    :cond_4a
    const/16 v0, 0x3ec

    goto :goto_e

    :pswitch_4d
    if-eqz p1, :cond_52

    const/16 v0, 0x3ed

    goto :goto_e

    :cond_52
    const/16 v0, 0x3ee

    goto :goto_e

    :pswitch_55
    if-eqz p1, :cond_5a

    const/16 v0, 0x3ef

    goto :goto_e

    :cond_5a
    const/16 v0, 0x3f0

    goto :goto_e

    nop

    :sswitch_data_5e
    .sparse-switch
        -0x69eb867e -> :sswitch_33
        -0x630daf2b -> :sswitch_1f
        -0x444ab20 -> :sswitch_15
        0x3472f5ad -> :sswitch_29
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_45
        :pswitch_4d
        :pswitch_55
    .end packed-switch
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;)Lcom/bsgamesdk/android/model/a;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->c:Lcom/bsgamesdk/android/model/a;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->finish()V

    :goto_c
    return-void

    :cond_d
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->A:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v1, "IN_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->a:Ljava/lang/String;

    const-string v1, "UID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->b:Ljava/lang/String;

    :cond_2c
    new-instance v0, Lcom/bsgamesdk/android/model/a;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/model/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->c:Lcom/bsgamesdk/android/model/a;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ce:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "license.txt"

    invoke-direct {p0, p0, v1}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameName"

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v3

    iget-object v3, v3, Lcom/bsgamesdk/android/api/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CPName"

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v3

    iget-object v3, v3, Lcom/bsgamesdk/android/api/b;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->cg:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$1;-><init>(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->cf:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$2;-><init>(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->af:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity$3;-><init>(Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c
.end method
