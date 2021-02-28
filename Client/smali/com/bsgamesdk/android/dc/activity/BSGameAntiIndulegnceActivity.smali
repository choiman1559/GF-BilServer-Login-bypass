.class public Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Bundle;

.field c:Lcom/android/data/sdk/domain/model/AntiModel;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/data/sdk/domain/model/AntiModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private final o:I

.field private final p:I

.field private q:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    iput v1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->o:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->p:I

    iput-boolean v1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""

    const-string v3, "</font>"

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    const-string v1, "sdkType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    const-string v0, "<font color=\'#23aee5\'>"

    :goto_1f
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_2e
    array-length v5, v4

    if-ge v1, v5, :cond_4f

    rem-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_46

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_43
    const-string v0, "<font color=\'#CE7590\'>"

    goto :goto_1f

    :cond_46
    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_40

    :cond_4c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bsgamesdk_dc_themeone"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bsgamesdk_dc_themetwo"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bsgamesdk_dc_themeone_title_content"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bsgamesdk_dc_themetwo_title_content"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bagamesdk_dc_themeone_anti_submit"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bagamesdk_dc_themetwo_anti_submit"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bsgamesdk_dc_themeone_anti_firsttext"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bsgamesdk_dc_themeone_anti_secondtext"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bsgamesdk_dc_themetwo_anti_firsttext"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v1, "bsgamesdk_dc_themetwo_anti_secondtext"

    invoke-static {v0, v1}, Lcom/android/data/sdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v3, "bsgamesdk_dc_anti_title"

    invoke-static {v2, v3}, Lcom/android/data/sdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    const-string v3, "bsgamesdk_dc_anti_title"

    invoke-static {v2, v3}, Lcom/android/data/sdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$1;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$1;-><init>(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->l:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$2;-><init>(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/android/data/sdk/domain/model/AntiModel;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->h:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/data/sdk/domain/model/AntiModel;->view:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_29

    :goto_19
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->e:Landroid/view/View;

    invoke-static {}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->moveToViewLocation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    goto :goto_19

    :cond_2e
    invoke-static {}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->moveToViewLeft()Landroid/view/animation/AnimationSet;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$3;-><init>(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;Lcom/android/data/sdk/domain/model/AntiModel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_28
.end method

.method static synthetic a(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->setLogic(I)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    neg-int v4, v2

    if-lt v0, v4, :cond_2e

    neg-int v4, v2

    if-lt v1, v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-le v1, v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method static synthetic b(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->q:Z

    :try_start_3
    const-string v0, "u3dTag"

    invoke-static {p0, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "dc_action"

    invoke-static {p0, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "dc_view"

    invoke-static {p0, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "dc_type"

    invoke-static {p0, v0}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_17} :catch_6a

    :goto_17
    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/a;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/data/sdk/api/c;->a()Lcom/android/data/sdk/api/c;

    move-result-object v0

    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bsgamesdk/android/dc/a;->b:Lcom/android/data/sdk/domain/model/DataParamsModel;

    invoke-virtual {v1}, Lcom/android/data/sdk/domain/model/DataParamsModel;->getApp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/api/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_3f
    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/a;->a:Lcom/bsgamesdk/android/dc/b;

    if-eqz v0, :cond_61

    :try_start_4d
    const-string v0, "onExit"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/android/data/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_54} :catch_68

    :goto_54
    invoke-static {}, Lcom/bsgamesdk/android/dc/a;->a()Lcom/bsgamesdk/android/dc/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/dc/a;->a:Lcom/bsgamesdk/android/dc/b;

    invoke-interface {v0}, Lcom/bsgamesdk/android/dc/b;->a()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    :goto_60
    return-void

    :cond_61
    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_60

    :catch_68
    move-exception v0

    goto :goto_54

    :catch_6a
    move-exception v0

    goto :goto_17
.end method

.method private b(Lcom/android/data/sdk/domain/model/AntiModel;)V
    .registers 4

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    :try_start_a
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->m:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/data/sdk/domain/model/AntiModel;->view:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_29

    :goto_19
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->j:Landroid/view/View;

    invoke-static {}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->moveToViewLocation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    goto :goto_19

    :cond_2e
    invoke-static {}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->moveToViewLeft()Landroid/view/animation/AnimationSet;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$4;-><init>(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;Lcom/android/data/sdk/domain/model/AntiModel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_28
.end method

.method static synthetic c(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .registers 5

    const/4 v3, 0x3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    const-string v1, "sdkType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_10

    invoke-direct {p0, v2}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->setLogic(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    const-string v1, "sdkType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1e

    invoke-direct {p0, v3}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->setLogic(I)V

    goto :goto_f

    :cond_1e
    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    goto :goto_f
.end method

.method static synthetic d(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    const-string v1, "antiModle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/data/sdk/domain/model/AntiModel;

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v1, v0, Lcom/android/data/sdk/domain/model/AntiModel;->mAntiModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/data/sdk/domain/model/AntiModel;

    iget-object v3, v1, Lcom/android/data/sdk/domain/model/AntiModel;->action:Ljava/lang/String;

    const-string v4, "2"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    const-string v1, "sdkType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->setLogic(I)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_c

    :catch_3f
    move-exception v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    goto :goto_c

    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    iget-object v0, v0, Lcom/android/data/sdk/domain/model/AntiModel;->mAntiModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4b} :catch_3f

    goto :goto_c
.end method

.method static synthetic e(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public static moveToViewLeft()Landroid/view/animation/AnimationSet;
    .registers 12

    const-wide/16 v10, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9
.end method

.method public static moveToViewLocation()Landroid/view/animation/AnimationSet;
    .registers 12

    const-wide/16 v10, 0xc8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9
.end method

.method private setLogic(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    :try_start_3
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/data/sdk/domain/model/AntiModel;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c:Lcom/android/data/sdk/domain/model/AntiModel;

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b(Lcom/android/data/sdk/domain/model/AntiModel;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/data/sdk/domain/model/AntiModel;

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c:Lcom/android/data/sdk/domain/model/AntiModel;

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Lcom/android/data/sdk/domain/model/AntiModel;)V

    iget-object v1, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_1f

    :catch_3d
    move-exception v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    goto :goto_1f
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->setFinishOnTouchOutside(Z)V

    :cond_d
    const-string v0, "bsgamesdk_activity_dc_antindulgence"

    invoke-static {p0, v0}, Lcom/android/data/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a()V

    :try_start_25
    invoke-direct {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d()V

    invoke-direct {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->c()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->finish()V

    goto :goto_2b
.end method

.method protected onDestroy()V
    .registers 3

    iget-boolean v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->q:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/data/sdk/net/c;->a()Lcom/android/data/sdk/net/c;

    move-result-object v0

    new-instance v1, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity$5;-><init>(Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/data/sdk/net/c;->a(Ljava/lang/Runnable;)V

    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->d()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p0, p1}, Lcom/bsgamesdk/android/dc/activity/BSGameAntiIndulegnceActivity;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method
