.class public Lcn/sharesdk/system/text/login/gui/d;
.super Lcom/mob/tools/FakeActivity;
.source "InputPhoneNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcn/sharesdk/system/text/login/LoginActionListener;

.field private b:Lcn/sharesdk/system/text/login/utils/b;

.field private c:Lcn/sharesdk/system/text/login/utils/b;

.field private d:Lcn/sharesdk/system/text/login/utils/b;

.field private e:Lcn/sharesdk/system/text/login/utils/b;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 33
    const-string v0, "86"

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->h:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/gui/d;)Lcn/sharesdk/system/text/login/LoginActionListener;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->a:Lcn/sharesdk/system/text/login/LoginActionListener;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "^0{0,1}(13[0-9]|15[3-9]|15[0-2]|18[0-9]|17[0-9]|14[0-9])[0-9]{8}$"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/sharesdk/system/text/login/gui/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/system/text/login/gui/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/system/text/login/gui/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public a(Lcn/sharesdk/system/text/login/LoginActionListener;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcn/sharesdk/system/text/login/gui/d;->a:Lcn/sharesdk/system/text/login/LoginActionListener;

    .line 40
    return-void
.end method

.method public a(Lcn/sharesdk/system/text/login/a/d;)V
    .registers 4

    .prologue
    .line 55
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/d;->b()Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    .line 56
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/d;->c()Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    .line 57
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/d;->d()Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    .line 58
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/d;->e()Lcn/sharesdk/system/text/login/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    .line 59
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/d;->f()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->f:Landroid/widget/Button;

    .line 60
    invoke-virtual {p1}, Lcn/sharesdk/system/text/login/a/d;->g()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->g:Landroid/widget/ImageView;

    .line 62
    iget-boolean v0, p0, Lcn/sharesdk/system/text/login/gui/d;->k:Z

    if-nez v0, :cond_35

    .line 63
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/b;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->c:Lcn/sharesdk/system/text/login/utils/b;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/b;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_35
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v0, p0}, Lcn/sharesdk/system/text/login/utils/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/sharesdk/system/text/login/gui/d;->k:Z

    .line 44
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_a5

    .line 74
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/b;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_98

    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->e:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/b;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/system/text/login/gui/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 75
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->e:Lcn/sharesdk/system/text/login/utils/b;

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

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->j:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->d:Lcn/sharesdk/system/text/login/utils/b;

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

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->h:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/b;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->i:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcn/sharesdk/system/text/login/a;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/sharesdk/system/text/login/a;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v1, v0}, Lcn/sharesdk/system/text/login/a;->a(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcn/sharesdk/system/text/login/gui/d$1;

    invoke-direct {v2, p0, v1}, Lcn/sharesdk/system/text/login/gui/d$1;-><init>(Lcn/sharesdk/system/text/login/gui/d;Lcn/sharesdk/system/text/login/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_97
    :goto_97
    return-void

    .line 94
    :cond_98
    new-instance v0, Lcn/sharesdk/system/text/login/a;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/a;->d()V

    goto :goto_97

    .line 96
    :cond_a5
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    if-ne p1, v0, :cond_bc

    .line 97
    new-instance v0, Lcn/sharesdk/system/text/login/gui/b;

    invoke-direct {v0}, Lcn/sharesdk/system/text/login/gui/b;-><init>()V

    .line 98
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/d;->a:Lcn/sharesdk/system/text/login/LoginActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/gui/b;->a(Lcn/sharesdk/system/text/login/LoginActionListener;)V

    .line 99
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcn/sharesdk/system/text/login/gui/b;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    goto :goto_97

    .line 100
    :cond_bc
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_97

    .line 101
    new-instance v0, Lcn/sharesdk/system/text/login/gui/d$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/system/text/login/gui/d$2;-><init>(Lcn/sharesdk/system/text/login/gui/d;)V

    .line 115
    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/gui/d$2;->start()V

    goto :goto_97
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 47
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/gui/d;->setRequestedOrientation(I)V

    .line 49
    new-instance v0, Lcn/sharesdk/system/text/login/a/d;

    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/system/text/login/a/d;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/d;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/a/d;->a()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0, v0}, Lcn/sharesdk/system/text/login/gui/d;->a(Lcn/sharesdk/system/text/login/a/d;)V

    .line 52
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 149
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 150
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->a:Lcn/sharesdk/system/text/login/LoginActionListener;

    if-eqz v0, :cond_12

    .line 151
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->a:Lcn/sharesdk/system/text/login/LoginActionListener;

    invoke-interface {v0}, Lcn/sharesdk/system/text/login/LoginActionListener;->onCancel()V

    .line 153
    :cond_12
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/d;->finish()V

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public onResult(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_60

    .line 128
    const-string v0, "page"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 130
    const-string v0, "zone"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->h:Ljava/lang/String;

    .line 131
    const-string v0, "country"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->i:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 133
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->d:Lcn/sharesdk/system/text/login/utils/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/system/text/login/gui/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/b;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->b:Lcn/sharesdk/system/text/login/utils/b;

    iget-object v1, p0, Lcn/sharesdk/system/text/login/gui/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/system/text/login/utils/b;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_4e
    const-string v0, "listener"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const/4 v0, 0x0

    :goto_57
    iput-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->a:Lcn/sharesdk/system/text/login/LoginActionListener;

    .line 138
    iget-object v0, p0, Lcn/sharesdk/system/text/login/gui/d;->a:Lcn/sharesdk/system/text/login/LoginActionListener;

    if-nez v0, :cond_60

    .line 139
    invoke-virtual {p0}, Lcn/sharesdk/system/text/login/gui/d;->finish()V

    .line 142
    :cond_60
    return-void

    .line 137
    :cond_61
    const-string v0, "listener"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/system/text/login/LoginActionListener;

    goto :goto_57
.end method
