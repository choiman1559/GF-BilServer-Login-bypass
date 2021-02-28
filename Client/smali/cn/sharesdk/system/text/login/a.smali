.class public Lcn/sharesdk/system/text/login/a;
.super Ljava/lang/Object;
.source "DialogShell.java"


# static fields
.field private static a:Lcn/sharesdk/system/text/login/utils/a;

.field private static b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sput-object p1, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    .line 25
    new-instance v0, Lcn/sharesdk/system/text/login/utils/a;

    const v1, 0x103000b

    invoke-direct {v0, p1, v1}, Lcn/sharesdk/system/text/login/utils/a;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 172
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000b

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 173
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 179
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 182
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 186
    invoke-static {p0}, Lcn/sharesdk/system/text/login/utils/d;->a(Landroid/content/Context;)V

    .line 187
    const/16 v3, 0x14

    invoke-static {v3}, Lcn/sharesdk/system/text/login/utils/d;->b(I)I

    move-result v3

    .line 188
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    if-eqz v1, :cond_4e

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 194
    :cond_4e
    return-object v0
.end method

.method static synthetic e()Lcn/sharesdk/system/text/login/utils/a;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/widget/Button;
    .registers 5

    .prologue
    .line 61
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_confirm_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 62
    if-lez v0, :cond_f

    .line 63
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->a(I)V

    .line 65
    :cond_f
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_confirm_des"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 67
    if-lez v0, :cond_1e

    .line 68
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->b(I)V

    .line 71
    :cond_1e
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_btn_cancel"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 72
    if-lez v0, :cond_2d

    .line 73
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->d(I)V

    .line 75
    :cond_2d
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_btn_ok"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 76
    if-lez v0, :cond_3c

    .line 77
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->e(I)V

    .line 79
    :cond_3c
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->show()V

    .line 80
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->a()Landroid/widget/TextView;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_65

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_65
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->b()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcn/sharesdk/system/text/login/utils/a;
    .registers 7

    .prologue
    .line 155
    if-lez p1, :cond_7

    .line 156
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/system/text/login/utils/a;->b(I)V

    .line 158
    :cond_7
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->show()V

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/sharesdk/system/text/login/a$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/system/text/login/a$1;-><init>(Lcn/sharesdk/system/text/login/a;)V

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->dismiss()V

    .line 30
    return-void
.end method

.method public b()Landroid/widget/Button;
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_close_identify_page"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 39
    if-lez v0, :cond_f

    .line 40
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->b(I)V

    .line 42
    :cond_f
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_btn_wait"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 43
    if-lez v0, :cond_1e

    .line 44
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->d(I)V

    .line 46
    :cond_1e
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_btn_back"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 47
    if-lez v0, :cond_2d

    .line 48
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->e(I)V

    .line 50
    :cond_2d
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->show()V

    .line 51
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->b()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/widget/Button;
    .registers 3

    .prologue
    .line 93
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_smart_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 94
    if-lez v0, :cond_f

    .line 95
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->a(I)V

    .line 97
    :cond_f
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_smart_dec"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 98
    if-lez v0, :cond_1e

    .line 99
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->b(I)V

    .line 101
    :cond_1e
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_btn_cancel"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 102
    if-lez v0, :cond_2d

    .line 103
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->d(I)V

    .line 105
    :cond_2d
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_btn_login"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 106
    if-lez v0, :cond_3c

    .line 107
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->e(I)V

    .line 109
    :cond_3c
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->show()V

    .line 110
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->b()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 134
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_error_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 135
    if-lez v0, :cond_f

    .line 136
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->a(I)V

    .line 138
    :cond_f
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_error_des"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 139
    if-lez v0, :cond_1e

    .line 140
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->b(I)V

    .line 142
    :cond_1e
    sget-object v0, Lcn/sharesdk/system/text/login/a;->b:Landroid/content/Context;

    const-string v1, "ssdk_sms_dialog_btn_sure"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 143
    if-lez v0, :cond_2d

    .line 144
    sget-object v1, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/utils/a;->c(I)V

    .line 146
    :cond_2d
    sget-object v0, Lcn/sharesdk/system/text/login/a;->a:Lcn/sharesdk/system/text/login/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/a;->show()V

    .line 147
    return-void
.end method
