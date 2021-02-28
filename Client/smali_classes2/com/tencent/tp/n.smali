.class public Lcom/tencent/tp/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/n$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/AlertDialog;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/tp/n$a;

.field private g:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/n$a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    new-instance v0, Lcom/tencent/tp/o;

    invoke-direct {v0, p0}, Lcom/tencent/tp/o;-><init>(Lcom/tencent/tp/n;)V

    iput-object v0, p0, Lcom/tencent/tp/n;->g:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tp/n;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tp/n;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tp/n;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tp/n;->f:Lcom/tencent/tp/n$a;

    return-void
.end method

.method private a(Landroid/content/Context;I)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_15

    move-result-object v0

    if-eqz p3, :cond_14

    invoke-direct {p0, p1, v0}, Lcom/tencent/tp/n;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    :cond_14
    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14
.end method

.method static synthetic a(Lcom/tencent/tp/n;)Lcom/tencent/tp/n$a;
    .registers 2

    iget-object v0, p0, Lcom/tencent/tp/n;->f:Lcom/tencent/tp/n$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    const/16 v0, 0x24

    invoke-direct {p0, p1, v0}, Lcom/tencent/tp/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_c
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 7

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lcom/tencent/tp/n;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/tencent/tp/n;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/tencent/tp/n;->a(Landroid/content/Context;I)I

    move-result v2

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private d()Landroid/view/View;
    .registers 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/tencent/tp/n;->a(Landroid/content/Context;I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/tencent/tp/n;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/tp/n;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private e()Landroid/widget/TextView;
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, -0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tp/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-direct {p0, v1}, Lcom/tencent/tp/n;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/tencent/tp/n;->d:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_53

    iget-object v2, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    aget-object v3, v0, v5

    invoke-direct {p0, v2, v3, v5}, Lcom/tencent/tp/n;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_54

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_53
    :goto_53
    return-object v1

    :cond_54
    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53
.end method

.method private f()Landroid/widget/TextView;
    .registers 4

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tp/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/tencent/tp/n;->a(Landroid/widget/TextView;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4d

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/n;->d:Ljava/lang/String;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/tencent/tp/n;->d:Ljava/lang/String;

    const-string v2, "ICON:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-direct {p0}, Lcom/tencent/tp/n;->d()Landroid/view/View;

    move-result-object v1

    :goto_24
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/n;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/tencent/tp/n;->g:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    new-instance v1, Lcom/tencent/tp/p;

    invoke-direct {v1, p0}, Lcom/tencent/tp/p;-><init>(Lcom/tencent/tp/n;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0}, Lcom/tencent/tp/n;->b()V

    return-void

    :cond_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_e

    :cond_55
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/tencent/tp/n;->a(Landroid/widget/TextView;)V

    goto :goto_24
.end method

.method protected b()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/tp/n;->b:Landroid/content/Context;

    const-string v2, "rdiyjr"

    invoke-static {v2}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->y:I

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-le v0, v3, :cond_58

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_3d
    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_8

    :cond_58
    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_3d
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/n;->a:Landroid/app/AlertDialog;

    :cond_c
    return-void
.end method
