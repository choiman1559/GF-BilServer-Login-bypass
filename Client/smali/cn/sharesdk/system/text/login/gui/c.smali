.class public Lcn/sharesdk/system/text/login/gui/c;
.super Lcom/mob/tools/FakeActivity;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Lcn/sharesdk/system/text/login/LoginActionListener;

.field private c:Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;

.field private d:Lcn/sharesdk/system/text/login/utils/b;

.field private e:Lcn/sharesdk/system/text/login/utils/b;

.field private f:Lcn/sharesdk/system/text/login/utils/b;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageView;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lcn/sharesdk/system/text/login/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 31
    const/16 v0, 0x3c

    iput v0, p0, Lcn/sharesdk/system/text/login/gui/c;->a:I

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/gui/c;I)I
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcn/sharesdk/system/text/login/gui/c;->a:I

    return p1
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/LoginActionListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->b:Lcn/sharesdk/system/text/login/LoginActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/gui/c;Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/c;
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/c;->q:Lcn/sharesdk/system/text/login/c;

    return-object p1
.end method

.method private a()V
    .registers 5

    .prologue
    .line 163
    new-instance v0, Lcn/sharesdk/system/text/login/gui/c$4;

    invoke-direct {v0, p0}, Lcn/sharesdk/system/text/login/gui/c$4;-><init>(Lcn/sharesdk/system/text/login/gui/c;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcn/sharesdk/system/text/login/gui/c;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 188
    return-void
.end method

.method private a(Lcn/sharesdk/system/text/login/a/c;)V
    .registers 5

    .prologue
    .line 96
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/c;->b()Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    .line 97
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/c;->c()Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    .line 98
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/c;->d()Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    .line 99
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/c;->e()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->g:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/c;->f()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->h:Landroid/widget/Button;

    .line 101
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/c;->g()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->i:Landroid/widget/Button;

    .line 102
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/c;->h()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->j:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->d:Lcn/sharesdk/system/text/login/utils/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/b;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v0, p0}, Lcn/sharesdk/system/text/login/utils/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/c;->a()V

    .line 112
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/c;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->q:Lcn/sharesdk/system/text/login/c;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/system/text/login/gui/c;)I
    .registers 3

    .prologue
    .line 28
    iget v0, p0, Lcn/sharesdk/system/text/login/gui/c;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/sharesdk/system/text/login/gui/c;->a:I

    return v0
.end method

.method static synthetic e(Lcn/sharesdk/system/text/login/gui/c;)I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcn/sharesdk/system/text/login/gui/c;->a:I

    return v0
.end method

.method static synthetic f(Lcn/sharesdk/system/text/login/gui/c;)Lcn/sharesdk/system/text/login/utils/b;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/system/text/login/gui/c;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->g:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/system/text/login/LoginActionListener;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/c;->b:Lcn/sharesdk/system/text/login/LoginActionListener;

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 54
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/c;->k:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcn/sharesdk/system/text/login/gui/c;->l:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcn/sharesdk/system/text/login/gui/c;->n:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcn/sharesdk/system/text/login/gui/c;->p:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcn/sharesdk/system/text/login/gui/c;->o:I

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    .line 116
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    :cond_c
    :goto_c
    return-void

    .line 117
    :cond_d
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_3a

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v1, "zone"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "phone"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput v4, p0, Lcn/sharesdk/system/text/login/gui/c;->o:I

    .line 123
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->q:Lcn/sharesdk/system/text/login/c;

    invoke-virtual {v1, v3}, Lcn/sharesdk/system/text/login/c;->a(I)V

    .line 124
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->q:Lcn/sharesdk/system/text/login/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/c;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_c

    .line 125
    :cond_3a
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_95

    .line 126
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/b;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->m:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    const-string v1, "zone"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "phone"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "country"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "code"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "type"

    iget v2, p0, Lcn/sharesdk/system/text/login/gui/c;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "sendRecordId"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->q:Lcn/sharesdk/system/text/login/c;

    invoke-virtual {v1, v4}, Lcn/sharesdk/system/text/login/c;->a(I)V

    .line 135
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->q:Lcn/sharesdk/system/text/login/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/c;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    goto/16 :goto_c

    .line 136
    :cond_95
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->f:Lcn/sharesdk/system/text/login/utils/b;

    if-ne p1, v0, :cond_c6

    .line 137
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/gui/c;->a()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    const-string v1, "zone"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "phone"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iput v5, p0, Lcn/sharesdk/system/text/login/gui/c;->o:I

    .line 143
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->q:Lcn/sharesdk/system/text/login/c;

    invoke-virtual {v1, v3}, Lcn/sharesdk/system/text/login/c;->a(I)V

    .line 144
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->q:Lcn/sharesdk/system/text/login/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/c;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    goto/16 :goto_c

    .line 145
    :cond_c6
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_c

    .line 146
    new-instance v0, Lcn/sharesdk/system/text/login/gui/c$3;

    invoke-direct {v0, p0}, Lcn/sharesdk/system/text/login/gui/c$3;-><init>(Lcn/sharesdk/system/text/login/gui/c;)V

    .line 157
    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/c$3;->start()V

    goto/16 :goto_c
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 63
    invoke-virtual {p0, v3}, Lcn/sharesdk/system/text/login/gui/c;->setRequestedOrientation(I)V

    .line 64
    new-instance v0, Lcn/sharesdk/system/text/login/a/c;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/a/c;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/a/c;->a()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 66
    invoke-direct {p0, v0}, Lcn/sharesdk/system/text/login/gui/c;->a(Lcn/sharesdk/system/text/login/a/c;)V

    .line 69
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sms_dialog_send_success"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 70
    if-lez v0, :cond_3d

    .line 71
    new-instance v1, Lcn/sharesdk/system/text/login/a;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/sharesdk/system/text/login/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v3}, Lcn/sharesdk/system/text/login/a;->a(II)Lcn/sharesdk/system/text/login/utils/a;

    move-result-object v0

    new-instance v1, Lcn/sharesdk/system/text/login/gui/c$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/system/text/login/gui/c$1;-><init>(Lcn/sharesdk/system/text/login/gui/c;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 81
    new-instance v0, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;

    new-instance v1, Lcn/sharesdk/system/text/login/gui/c$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/system/text/login/gui/c$2;-><init>(Lcn/sharesdk/system/text/login/gui/c;)V

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;-><init>(Lcn/sharesdk/system/text/login/utils/VerifyCodeReadListener;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->c:Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;

    .line 86
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->c:Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_65} :catch_66

    .line 93
    :cond_65
    :goto_65
    return-void

    .line 89
    :catch_66
    move-exception v0

    .line 90
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->c:Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;

    goto :goto_65
.end method

.method public onFinish()Z
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->c:Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;

    if-eqz v0, :cond_b

    .line 196
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/c;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/c;->c:Lcn/sharesdk/system/text/login/utils/VerifyCodeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 202
    const/4 v0, 0x4

    if-ne p1, v0, :cond_20

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_20

    .line 203
    new-instance v0, Lcn/sharesdk/system/text/login/a;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/a;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/a;->b()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/system/text/login/gui/c$5;

    invoke-direct {v2, p0, v0}, Lcn/sharesdk/system/text/login/gui/c$5;-><init>(Lcn/sharesdk/system/text/login/gui/c;Lcn/sharesdk/system/text/login/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
