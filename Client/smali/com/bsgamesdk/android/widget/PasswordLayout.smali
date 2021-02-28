.class public Lcom/bsgamesdk/android/widget/PasswordLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bsgamesdk/android/widget/PasswordLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/widget/PasswordLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bsgamesdk/android/utils/f$e;->x:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->t:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/PasswordLayout;->a:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->cd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/widget/PasswordLayout;->b:Landroid/widget/ImageButton;

    new-array v0, v3, [I

    sget v1, Lcom/bsgamesdk/android/utils/f$b;->j:I

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/widget/PasswordLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/PasswordLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bsgamesdk/android/widget/PasswordLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
