.class public Lcn/sharesdk/system/text/login/c;
.super Ljava/lang/Object;
.source "RequestCore.java"


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private k:Lcn/sharesdk/system/text/login/LoginActionListener;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/mob/tools/FakeActivity;

.field private n:Lcn/sharesdk/system/text/login/a;

.field private o:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, ""

    sput-object v0, Lcn/sharesdk/system/text/login/c;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mob/tools/FakeActivity;Lcn/sharesdk/system/text/login/a;)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/system/text/login/c;->a:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcn/sharesdk/system/text/login/c;->h:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcn/sharesdk/system/text/login/c;->i:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c;->m:Lcom/mob/tools/FakeActivity;

    .line 39
    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/c;->b:Landroid/content/Context;

    .line 40
    if-eqz p2, :cond_1a

    .line 41
    invoke-virtual {p2}, Lcn/sharesdk/system/text/login/a;->a()V

    .line 43
    :cond_1a
    new-instance v0, Lcn/sharesdk/system/text/login/a;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/c;->n:Lcn/sharesdk/system/text/login/a;

    .line 44
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/c;I)I
    .registers 2

    .prologue
    .line 15
    iput p1, p0, Lcn/sharesdk/system/text/login/c;->g:I

    return p1
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c;->l:Ljava/util/HashMap;

    return-object p1
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 128
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->l:Ljava/util/HashMap;

    const-string v1, "smart"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 129
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->l:Ljava/util/HashMap;

    const-string v1, "smart"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/sharesdk/system/text/login/c;->h:I

    .line 130
    iget v0, p0, Lcn/sharesdk/system/text/login/c;->h:I

    if-ne v0, v2, :cond_2d

    .line 131
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->n:Lcn/sharesdk/system/text/login/a;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/a;->c()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcn/sharesdk/system/text/login/c$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/system/text/login/c$3;-><init>(Lcn/sharesdk/system/text/login/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_2d
    :goto_2d
    return-void

    .line 154
    :cond_2e
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->l:Ljava/util/HashMap;

    const-string v1, "recordId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, ""

    :goto_3a
    sput-object v0, Lcn/sharesdk/system/text/login/c;->j:Ljava/lang/String;

    .line 155
    iget v0, p0, Lcn/sharesdk/system/text/login/c;->a:I

    if-ne v0, v2, :cond_2d

    .line 156
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/c;->c()V

    goto :goto_2d

    .line 154
    :cond_44
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->l:Ljava/util/HashMap;

    const-string v1, "recordId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3a
.end method

.method static synthetic b(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .registers 5

    .prologue
    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "country"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "zone"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "smart"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "type"

    iget v2, p0, Lcn/sharesdk/system/text/login/c;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "sendRecordId"

    sget-object v2, Lcn/sharesdk/system/text/login/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "checkRecordId"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcn/sharesdk/system/text/login/c;->b:Landroid/content/Context;

    const-string v2, "ssdk_sms_dialog_login_success"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 172
    if-lez v1, :cond_5b

    .line 173
    new-instance v2, Lcn/sharesdk/system/text/login/a;

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/sharesdk/system/text/login/a;-><init>(Landroid/content/Context;)V

    .line 174
    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcn/sharesdk/system/text/login/a;->a(II)Lcn/sharesdk/system/text/login/utils/a;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/system/text/login/c$4;

    invoke-direct {v2, p0, v0}, Lcn/sharesdk/system/text/login/c$4;-><init>(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Lcn/sharesdk/system/text/login/utils/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 184
    :cond_5b
    return-void
.end method

.method static synthetic c(Lcn/sharesdk/system/text/login/c;)I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcn/sharesdk/system/text/login/c;->g:I

    return v0
.end method

.method static synthetic c(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c;->f:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .registers 7

    .prologue
    .line 187
    new-instance v0, Lcn/sharesdk/system/text/login/gui/c;

    invoke-direct {v0}, Lcn/sharesdk/system/text/login/gui/c;-><init>()V

    .line 188
    iget-object v1, p0, Lcn/sharesdk/system/text/login/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/system/text/login/c;->d:Ljava/lang/String;

    iget v3, p0, Lcn/sharesdk/system/text/login/c;->g:I

    iget-object v4, p0, Lcn/sharesdk/system/text/login/c;->f:Ljava/lang/String;

    sget-object v5, Lcn/sharesdk/system/text/login/c;->j:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/system/text/login/gui/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcn/sharesdk/system/text/login/c;->k:Lcn/sharesdk/system/text/login/LoginActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/c;->a(Lcn/sharesdk/system/text/login/LoginActionListener;)V

    .line 190
    iget-object v1, p0, Lcn/sharesdk/system/text/login/c;->b:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/sharesdk/system/text/login/c;->m:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/system/text/login/gui/c;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    .line 191
    return-void
.end method

.method static synthetic d(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcn/sharesdk/system/text/login/c;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->o:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/system/text/login/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcn/sharesdk/system/text/login/c;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/system/text/login/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/a;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->n:Lcn/sharesdk/system/text/login/a;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/system/text/login/c;)V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/c;->b()V

    return-void
.end method

.method static synthetic j(Lcn/sharesdk/system/text/login/c;)V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/sharesdk/system/text/login/c;->a()V

    return-void
.end method

.method static synthetic k(Lcn/sharesdk/system/text/login/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcn/sharesdk/system/text/login/c;)Lcn/sharesdk/system/text/login/LoginActionListener;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->k:Lcn/sharesdk/system/text/login/LoginActionListener;

    return-object v0
.end method

.method static synthetic m(Lcn/sharesdk/system/text/login/c;)Lcom/mob/tools/FakeActivity;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->m:Lcom/mob/tools/FakeActivity;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/sharesdk/system/text/login/a;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/c;->o:Landroid/app/Dialog;

    .line 56
    new-instance v0, Lcn/sharesdk/system/text/login/c$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/system/text/login/c$1;-><init>(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 79
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 80
    new-instance v1, Lcn/sharesdk/system/text/login/c$2;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/system/text/login/c$2;-><init>(Lcn/sharesdk/system/text/login/c;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 122
    iget-object v0, p0, Lcn/sharesdk/system/text/login/c;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcn/sharesdk/system/text/login/c;->a:I

    .line 48
    return-void
.end method

.method public a(Lcn/sharesdk/system/text/login/LoginActionListener;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcn/sharesdk/system/text/login/c;->k:Lcn/sharesdk/system/text/login/LoginActionListener;

    .line 52
    return-void
.end method
