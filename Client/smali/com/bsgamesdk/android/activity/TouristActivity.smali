.class public Lcom/bsgamesdk/android/activity/TouristActivity;
.super Lcom/bsgamesdk/android/activity/BaseActivity;

# interfaces
.implements Lcom/bsgamesdk/android/presenter/c;
.implements Lcom/bsgamesdk/android/presenter/e;
.implements Lcom/bsgamesdk/android/presenter/h;


# static fields
.field private static ba:I


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/Button;

.field private D:I

.field private E:Landroid/os/Bundle;

.field private F:Landroid/content/Context;

.field private G:Lcom/bsgamesdk/android/model/TouristUserParceable;

.field private H:Lcom/bsgamesdk/android/model/k;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Landroid/widget/TextView;

.field private K:Lcom/bsgamesdk/android/utils/x;

.field private L:Landroid/widget/EditText;

.field private M:Landroid/widget/EditText;

.field private N:Landroid/widget/EditText;

.field private O:Landroid/widget/ImageButton;

.field private P:Landroid/widget/ImageButton;

.field private Q:Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

.field private R:Landroid/widget/Button;

.field private S:Landroid/widget/Button;

.field private T:Lcom/bsgamesdk/android/utils/i$b;

.field private U:Landroid/widget/ImageView;

.field private V:Landroid/widget/EditText;

.field private W:Landroid/widget/Button;

.field private X:Landroid/widget/TextView;

.field private Y:Landroid/widget/Button;

.field private Z:Landroid/widget/EditText;

.field a:Z

.field private aA:Lcom/bsgamesdk/android/helper/PayRequest;

.field private aB:Ljava/lang/String;

.field private aC:Ljava/lang/String;

.field private aD:Ljava/lang/String;

.field private aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aG:Ljava/lang/String;

.field private aH:Ljava/lang/String;

.field private aI:Ljava/lang/String;

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:Landroid/widget/Button;

.field private aM:Landroid/widget/TextView;

.field private aN:Landroid/widget/TextView;

.field private aO:Landroid/widget/TextView;

.field private aP:Landroid/widget/TextView;

.field private aQ:Landroid/widget/TextView;

.field private aR:Landroid/widget/Button;

.field private aS:Z

.field private aT:Z

.field private aU:Z

.field private aV:Z

.field private aW:Z

.field private aX:Landroid/widget/ImageView;

.field private aY:Landroid/widget/ImageView;

.field private aZ:Landroid/os/Handler;

.field private aa:Landroid/widget/EditText;

.field private ab:Landroid/widget/Button;

.field private ac:Landroid/widget/Button;

.field private ad:Landroid/widget/ImageButton;

.field private ae:Landroid/widget/ImageButton;

.field private af:Landroid/view/View;

.field private ag:Landroid/view/View;

.field private ah:Landroid/widget/TextView;

.field private ai:Z

.field private aj:Landroid/view/View;

.field private ak:Landroid/view/View;

.field private al:Landroid/view/View;

.field private am:Landroid/view/View;

.field private an:Landroid/view/View;

.field private ao:Landroid/view/View;

.field private ap:Landroid/view/View;

.field private aq:Landroid/view/View;

.field private ar:Landroid/view/View;

.field private as:Landroid/view/View;

.field private at:Landroid/widget/ImageButton;

.field private au:Landroid/widget/ImageButton;

.field private av:Landroid/widget/TextView;

.field private aw:Landroid/view/animation/Animation;

.field private ax:Landroid/view/animation/Animation;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private final bb:I

.field private bc:I

.field c:Lcom/bsgamesdk/android/presenter/b;

.field d:Lcom/bsgamesdk/android/presenter/d;

.field e:Lcom/bsgamesdk/android/presenter/g;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private y:Lcom/bsgamesdk/android/api/h;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2329

    sput v0, Lcom/bsgamesdk/android/activity/TouristActivity;->ba:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;-><init>()V

    iput v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->k:I

    iput v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->l:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->n:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->o:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->p:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->q:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->r:I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->s:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->t:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->u:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->v:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->w:I

    const/16 v0, 0x68

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->x:I

    iput-object p0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ai:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->a:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aE:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aF:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aH:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aT:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aU:Z

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aV:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->b:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aW:Z

    new-instance v0, Lcom/bsgamesdk/android/activity/TouristActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity$1;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aZ:Landroid/os/Handler;

    iput v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bb:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->M:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic B(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->N:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic C(Lcom/bsgamesdk/android/activity/TouristActivity;)Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Q:Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

    return-object v0
.end method

.method static synthetic D(Lcom/bsgamesdk/android/activity/TouristActivity;)Lcom/bsgamesdk/android/model/TouristUserParceable;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    return-object v0
.end method

.method static synthetic E(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->S:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic F(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->U:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic G(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->V:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic H(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->l()V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/api/h;)Lcom/bsgamesdk/android/api/h;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    return-object p1
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/TouristActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ay:Ljava/lang/String;

    return-object p1
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
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "</font>"

    const-string v3, "<font color=\'#23aee5\'>"

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_21
    array-length v5, v4

    if-ge v0, v5, :cond_3f

    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_36

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v4, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_36
    aget-object v5, v4, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33

    :cond_3c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->c:Lcom/bsgamesdk/android/presenter/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->c:Lcom/bsgamesdk/android/presenter/b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/presenter/b;->a()V

    :cond_9
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->d:Lcom/bsgamesdk/android/presenter/d;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->d:Lcom/bsgamesdk/android/presenter/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/presenter/d;->a()V

    :cond_12
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->e:Lcom/bsgamesdk/android/presenter/g;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->e:Lcom/bsgamesdk/android/presenter/g;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/presenter/g;->a()V

    :cond_1b
    return-void
.end method

.method private a(I)V
    .registers 6

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_2c

    :goto_4
    return-void

    :pswitch_5
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ay:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/bsgamesdk/android/api/h;->b(ILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "\u5347\u7ea7\u6210\u529f"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->h()V

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->l()V

    goto :goto_4

    :pswitch_25
    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->l()V

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->h()V

    goto :goto_4

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_25
    .end packed-switch
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    const-string v1, ""

    packed-switch p1, :pswitch_data_7a

    :goto_5
    :pswitch_5
    :try_start_5
    sget-object v0, Lcom/bsgamesdk/android/api/b;->y:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_11} :catch_6a

    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    :goto_17
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc

    iput v2, v0, Landroid/os/Message;->what:I

    const v2, 0x7a145

    if-eq p1, v2, :cond_2a

    const v2, 0x7a146

    if-ne p1, v2, :cond_6d

    :cond_2a
    :try_start_2a
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2f} :catch_76

    :goto_2f
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aZ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5e
    sget-object v1, Lcom/bsgamesdk/android/api/b;->A:Ljava/lang/String;

    goto :goto_5

    :pswitch_61
    sget-object v1, Lcom/bsgamesdk/android/api/b;->B:Ljava/lang/String;

    goto :goto_5

    :pswitch_64
    sget-object v1, Lcom/bsgamesdk/android/api/b;->F:Ljava/lang/String;

    goto :goto_5

    :pswitch_67
    sget-object v1, Lcom/bsgamesdk/android/api/b;->G:Ljava/lang/String;

    goto :goto_5

    :catch_6a
    move-exception v0

    move-object v0, v1

    goto :goto_11

    :cond_6d
    :try_start_6d
    const-string v2, "%1%"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_75} :catch_76

    goto :goto_2f

    :catch_76
    move-exception v1

    goto :goto_2f

    :cond_78
    move-object v1, v0

    goto :goto_17

    :pswitch_data_7a
    .packed-switch 0x7a142
        :pswitch_5e
        :pswitch_61
        :pswitch_5
        :pswitch_64
        :pswitch_67
    .end packed-switch
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v10, 0x1

    :try_start_1
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aD:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    invoke-static {v0, v10}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_39
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/TouristActivity;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(Lcom/bsgamesdk/android/model/CaptchModel;)V

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/TouristActivity;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Lcom/bsgamesdk/android/model/m;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/m;->c()Lcom/bsgamesdk/android/model/UserParcelable;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/UserParcelable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->f:Ljava/lang/String;

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aa:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->f:Ljava/lang/String;

    new-instance v5, Lcom/bsgamesdk/android/activity/TouristActivity$16;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-direct {v5, p0, v4}, Lcom/bsgamesdk/android/activity/TouristActivity$16;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;Landroid/content/Context;)V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/helper/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    return-void

    :cond_59
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    if-eqz v0, :cond_25

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->f:Ljava/lang/String;

    goto :goto_25
.end method

.method private a(Ljava/lang/String;I)V
    .registers 7

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->e:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->c:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ar:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aq:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->av:Landroid/widget/TextView;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aX:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aM:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_79

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aN:Landroid/widget/TextView;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->R()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6e
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aL:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$12;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$12;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_79
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aN:Landroid/widget/TextView;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    :try_start_0
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    invoke-virtual {v0, p1, p2}, Lcom/bsgamesdk/android/api/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "pv_juvenile"

    const-string v4, ""

    const-string v5, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    goto :goto_3d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->H:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    if-nez v0, :cond_22

    new-instance v0, Lcom/bsgamesdk/android/model/TouristUserParceable;

    invoke-direct {v0}, Lcom/bsgamesdk/android/model/TouristUserParceable;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    :cond_22
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iput-object p4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iput-object p6, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    :cond_32
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-boolean v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->is_login:Z

    if-nez v0, :cond_57

    :cond_46
    const-string v0, "login"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    iput-boolean v4, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->l()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    :goto_56
    return-void

    :cond_57
    const/4 v0, -0x1

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    if-eqz v0, :cond_73

    const-string v0, ""

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ca

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    :goto_6e
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aO:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_73
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aP:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->as:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->av:Landroid/widget/TextView;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aX:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aY:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "login"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aQ:Landroid/widget/TextView;

    const-string v1, "\u5207 \u6362"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aQ:Landroid/widget/TextView;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$26;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$26;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_bf
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aR:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$28;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$28;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_56

    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :cond_e0
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aQ:Landroid/widget/TextView;

    const-string v1, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aQ:Landroid/widget/TextView;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$27;

    invoke-direct {v1, p0, p2}, Lcom/bsgamesdk/android/activity/TouristActivity$27;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_bf
.end method

.method static synthetic a(Lcom/bsgamesdk/android/activity/TouristActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    return p1
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Z:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/TouristActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->az:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .registers 11

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iput-boolean v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->D:I

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ay:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->az:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/bsgamesdk/android/helper/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3a

    sget-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ay:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->az:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    new-instance v6, Lcom/bsgamesdk/android/activity/TouristActivity$13;

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/bsgamesdk/android/activity/TouristActivity$13;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;Landroid/content/Context;)V

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/helper/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    goto :goto_1e

    :cond_3a
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->H:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "1"

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v6, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v6, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    :goto_74
    :try_start_74
    const-string v7, "result"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nickname"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "access_token"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "expire_times"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "refresh_token"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_97
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_97} :catch_b3

    :goto_97
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lorg/json/JSONObject;)V

    goto :goto_1e

    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v8, v7, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    :catch_b3
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_97

    :cond_b8
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13b

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    if-nez v0, :cond_13b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->H:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "1"

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v6, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v6, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    :goto_f6
    :try_start_f6
    const-string v7, "result"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nickname"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "access_token"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "expire_times"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "refresh_token"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_f6 .. :try_end_119} :catch_136

    :goto_119
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_1e

    :cond_11e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v8, v7, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f6

    :catch_136
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_119

    :cond_13b
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    iput-boolean v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/bsgamesdk/android/helper/c;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    goto/16 :goto_1e

    :cond_157
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touristLimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "login"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_190

    iput-boolean v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    new-instance v1, Lcom/bsgamesdk/android/helper/b;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/bsgamesdk/android/helper/b;-><init>(Landroid/app/Activity;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->D:I

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ay:Ljava/lang/String;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->az:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/bsgamesdk/android/helper/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    goto/16 :goto_1e

    :cond_190
    sget-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ay:Ljava/lang/String;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->az:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    new-instance v6, Lcom/bsgamesdk/android/activity/TouristActivity$14;

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/bsgamesdk/android/activity/TouristActivity$14;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;Landroid/content/Context;)V

    invoke-virtual/range {v0 .. v6}, Lcom/bsgamesdk/android/helper/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;Lcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    goto/16 :goto_1e
.end method

.method private b(I)V
    .registers 8

    const/16 v5, 0xbba

    const/4 v4, 0x4

    const/4 v3, 0x3

    iput p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V

    :goto_11
    return-void

    :cond_12
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->ak()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/api/b;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newUser=yes&type=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7528\u6237\u534f\u8bae"

    invoke-static {p0, v0, v1, v3, v5}, Lcom/bsgamesdk/android/activity/WebActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_11

    :cond_56
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bsgamesdk/android/api/b;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bsgamesdk/android/api/b;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newUser=no&type=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u66f4\u65b0\u63d0\u793a"

    invoke-static {p0, v0, v1, v3, v5}, Lcom/bsgamesdk/android/activity/WebActivity;->goWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_11

    :cond_90
    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V

    goto/16 :goto_11

    :cond_95
    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V

    goto/16 :goto_11
.end method

.method private b(ILjava/lang/String;)V
    .registers 14

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "\u83b7\u53d6\u5b89\u5168\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_8
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    sget-object v2, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "1"

    sget-object v7, Lcom/bsgamesdk/android/model/c;->i:Ljava/lang/String;

    sget-object v8, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    const-string v9, "3"

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    invoke-static {v0, v10}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    goto :goto_29
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/model/CaptchModel;)V

    return-void
.end method

.method private b(Lcom/bsgamesdk/android/model/CaptchModel;)V
    .registers 7

    const/4 v4, 0x0

    const/16 v3, 0x8

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->au:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->V:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->at:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->U:Landroid/widget/ImageView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->av:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->W:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->U:Landroid/widget/ImageView;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/activity/TouristActivity$24;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->W:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$25;

    invoke-direct {v1, p0, p1}, Lcom/bsgamesdk/android/activity/TouristActivity$25;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;Lcom/bsgamesdk/android/model/CaptchModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->V:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ao:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->U:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->av:Landroid/widget/TextView;

    const-string v1, "\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aX:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aY:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->W:Landroid/widget/Button;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->e:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->c:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ao:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b9

    const/16 v0, 0x65

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ak:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ap:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_b9
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_c4

    const/16 v0, 0x67

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    goto :goto_95

    :cond_c4
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_d0

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_95

    :cond_d0
    const/16 v0, 0x68

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    goto :goto_95
.end method

.method static synthetic b(Lcom/bsgamesdk/android/activity/TouristActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aT:Z

    return p1
.end method

.method static synthetic c(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aa:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->af:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->e:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->c:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ag:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->af:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ag:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->al:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aq:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->af:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ag:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->av:Landroid/widget/TextView;

    sget v1, Lcom/bsgamesdk/android/utils/f$f;->c:I

    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aX:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->e:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->c:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aq:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ak:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->i:I

    return-void
.end method

.method private e()V
    .registers 7

    const/4 v2, 0x0

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->X:Landroid/widget/TextView;

    if-nez v0, :cond_40

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bA:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->X:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ay:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->H:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    :goto_31
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->X:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Y:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$18;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$18;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ap:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->av:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aX:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const/high16 v4, 0x43200000    # 160.0f

    invoke-interface {v2, v3, v4}, Lcom/bsgamesdk/android/dynamic/IUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ao:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->al:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ak:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_92
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method static synthetic e(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    return-object v0
.end method

.method private f()V
    .registers 10

    const/16 v8, 0xe

    const/16 v7, 0xd

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->L:Landroid/widget/EditText;

    if-nez v0, :cond_ed

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bp:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->L:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->br:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->M:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bu:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->N:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bq:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->O:Landroid/widget/ImageButton;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bt:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->P:Landroid/widget/ImageButton;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bT:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Q:Lcom/bsgamesdk/android/widget/CheckBoxAgreeLayout;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bw:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->R:Landroid/widget/Button;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bs:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->S:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->L:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->L:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->O:Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/utils/i$d;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->L:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$c;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->O:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->L:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$e;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->O:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->M:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->M:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->P:Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/utils/i$d;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->M:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$c;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->P:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->M:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$e;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->P:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->N:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$19;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$19;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->O:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$20;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$20;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->P:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$21;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$21;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->R:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$22;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$22;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bsgamesdk/android/utils/i$b;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->S:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/utils/i$b;-><init>(Landroid/widget/Button;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->T:Lcom/bsgamesdk/android/utils/i$b;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->S:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$23;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$23;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ed
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    if-nez v0, :cond_173

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->e:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->c:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->al:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput v6, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    :cond_125
    :goto_125
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->av:Landroid/widget/TextView;

    const-string v1, "\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aX:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aY:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ak:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v2, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const/high16 v4, 0x43820000    # 260.0f

    invoke-interface {v2, v3, v4}, Lcom/bsgamesdk/android/dynamic/IUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->al:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ao:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ap:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->M:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->N:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_173
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1af

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->b:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->f:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ao:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput v6, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    goto/16 :goto_125

    :cond_1af
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1ed

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->b:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->f:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ao:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v0, 0x66

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    goto/16 :goto_125

    :cond_1ed
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_220

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->b:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->f:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ap:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x66

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_125

    :cond_220
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    if-eqz v0, :cond_247

    const-string v0, "login"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_247

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->as:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput v8, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_125

    :cond_247
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    if-eqz v0, :cond_27e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touristLimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27e

    const-string v0, "login"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->as:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput v7, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_125

    :cond_27e
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    if-eq v0, v8, :cond_286

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    if-ne v0, v7, :cond_125

    :cond_286
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->as:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    const-string v0, "login"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a7

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_125

    :cond_2a7
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_125
.end method

.method static synthetic g(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aC:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->al:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->b:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    sget v0, Lcom/bsgamesdk/android/utils/f$a;->f:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->al:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ax:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_35
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ak:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ao:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ap:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->i:I

    iput v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    return-void
.end method

.method static synthetic h(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aD:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 3

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d()V

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->b()V

    goto :goto_e
.end method

.method static synthetic i(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aE:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .registers 11

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "1"

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v4, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v6, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->expire_in:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v6, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->access_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    :goto_2d
    :try_start_2d
    const-string v7, "result"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nickname"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "access_token"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "expire_times"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "refresh_token"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_50} :catch_6c

    :goto_50
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v8, v7, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :catch_6c
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_50
.end method

.method static synthetic j(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aF:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 4

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_1b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_20
    const-string v0, "result"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x1771

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_34} :catch_38

    :goto_34
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lorg/json/JSONObject;)V

    :cond_37
    return-void

    :catch_38
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_34
.end method

.method static synthetic k(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aB:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->O()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_11
    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->mExitListener:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    if-eqz v0, :cond_35

    :try_start_1f
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "onExit"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_28} :catch_3c

    :goto_28
    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/bsgamesdk/android/BSGameSdk;->mExitListener:Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;

    invoke-interface {v0}, Lcom/bsgamesdk/android/callbacklistener/ExitCallbackListener;->onExit()V

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    :goto_34
    return-void

    :cond_35
    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_34

    :catch_3c
    move-exception v0

    goto :goto_28
.end method

.method static synthetic l(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aG:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aW:Z

    :try_start_3
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "u3dTag"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "dc_action"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "dc_view"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method static synthetic m(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/bsgamesdk/android/activity/TouristActivity;)Lcom/bsgamesdk/android/api/h;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    return-object v0
.end method

.method static synthetic p(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->j()V

    return-void
.end method

.method static synthetic q(Lcom/bsgamesdk/android/activity/TouristActivity;)Lcom/bsgamesdk/android/utils/x;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->K:Lcom/bsgamesdk/android/utils/x;

    return-object v0
.end method

.method static synthetic r(Lcom/bsgamesdk/android/activity/TouristActivity;)I
    .registers 2

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->D:I

    return v0
.end method

.method static synthetic s(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->k()V

    return-void
.end method

.method static synthetic t(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/bsgamesdk/android/activity/TouristActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->az:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/bsgamesdk/android/activity/TouristActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->c()V

    return-void
.end method

.method static synthetic w(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    return-object v0
.end method

.method static synthetic x(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->O:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic y(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->P:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic z(Lcom/bsgamesdk/android/activity/TouristActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->L:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_11

    sget-object v0, Lcom/bsgamesdk/android/helper/b;->b:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Lcom/bsgamesdk/android/helper/b;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_1f
    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_2e

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2b

    :goto_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method protected a(ZI)V
    .registers 8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u6570\u636e\u53d1\u9001\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/bsgamesdk/android/utils/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    sget-object v0, Lcom/bsgamesdk/android/b;->d:Lcom/bsgamesdk/android/helper/a;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$17;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/bsgamesdk/android/activity/TouristActivity$17;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;Landroid/content/Context;ZI)V

    invoke-virtual {v0, v4, v1}, Lcom/bsgamesdk/android/helper/a;->a(ILcom/bsgamesdk/android/callbacklistener/TaskCallBackListener;)V

    return-void
.end method

.method public doCaptcha(Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;Lcom/bsgamesdk/android/model/b;)V
    .registers 7

    sget-object v0, Lcom/bsgamesdk/android/activity/TouristActivity$29;->a:[I

    invoke-virtual {p1}, Lcom/bsgamesdk/android/presenter/CaptchaMModel$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x15b7

    invoke-static {p0, p2, v0}, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->goWebActivity(Landroid/app/Activity;Lcom/bsgamesdk/android/model/b;I)V

    goto :goto_b

    :pswitch_18
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/bsgamesdk/android/model/CaptchModel;

    invoke-virtual {p2}, Lcom/bsgamesdk/android/model/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bsgamesdk/android/model/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/model/CaptchModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aZ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_c
        :pswitch_18
    .end packed-switch
.end method

.method public doPHoneGet(Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/bsgamesdk/android/activity/TouristActivity$29;->b:[I

    invoke-virtual {p1}, Lcom/bsgamesdk/android/presenter/PhoneGetMModel$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    :cond_b
    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->onBackPressed()V

    goto :goto_b

    :pswitch_18
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->c:Lcom/bsgamesdk/android/presenter/b;

    invoke-virtual {v0, p0}, Lcom/bsgamesdk/android/presenter/b;->a(Landroid/app/Activity;)V

    goto :goto_b

    :pswitch_1e
    iput-object p2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->g:Ljava/lang/String;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aZ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->T:Lcom/bsgamesdk/android/utils/i$b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/i$b;->start()Landroid/os/CountDownTimer;

    goto :goto_b

    :pswitch_34
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->S:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_b

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_18
        :pswitch_1e
        :pswitch_34
    .end packed-switch
.end method

.method public doTouristBind(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->l()V

    sget-object v0, Lcom/bsgamesdk/android/b;->e:Lcom/bsgamesdk/android/helper/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/helper/d;->b()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->H:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->b()V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    if-ne v0, v1, :cond_16

    invoke-direct {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(I)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_20

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->h()V

    goto :goto_15

    :cond_20
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touristLimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "login"

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(I)V

    goto :goto_15

    :cond_3f
    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->l()V

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->h()V

    goto :goto_15
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 16

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xbba

    const/16 v7, -0x22b8

    const/16 v6, -0x22b9

    sget v0, Lcom/bsgamesdk/android/activity/TouristActivity;->ba:I

    if-ne p1, v0, :cond_13

    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_af

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->i()V

    :cond_13
    :goto_13
    const/16 v0, 0x15b7

    if-ne p1, v0, :cond_60

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->f()V

    if-ne p2, v8, :cond_60

    if-eqz p3, :cond_ff

    const/4 v1, 0x0

    const-string v2, "-1"

    :try_start_21
    const-string v0, "capthc_model"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/CaptchModel;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_29} :catch_e8

    :try_start_29
    const-string v1, "type_js"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2e} :catch_1bc

    move-result-object v1

    move-object v5, v0

    move-object v0, v1

    :goto_31
    if-eqz v5, :cond_f0

    const-string v0, "geetest"

    invoke-virtual {v5, v0}, Lcom/bsgamesdk/android/model/CaptchModel;->setCaptcha_type(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    sget v1, Lcom/bsgamesdk/android/utils/b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->d:Lcom/bsgamesdk/android/presenter/d;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bsgamesdk/android/presenter/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/model/CaptchModel;)V

    :cond_60
    :goto_60
    if-ne p1, v8, :cond_88

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    if-ne p2, v8, :cond_88

    if-eqz p3, :cond_18c

    :try_start_6b
    const-string v0, "type_js"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type_json"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_106

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->k()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_88} :catch_12c

    :cond_88
    :goto_88
    const/16 v0, 0x15b8

    if-ne p1, v0, :cond_ae

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    if-ne p2, v8, :cond_ae

    if-eqz p3, :cond_1b0

    const/4 v1, 0x0

    const-string v2, "-1"

    :try_start_98
    const-string v0, "capthc_model"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/CaptchModel;
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_a0} :catch_19a

    :try_start_a0
    const-string v1, "type_js"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a5} :catch_1b7

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_a9
    if-eqz v1, :cond_1a1

    invoke-direct {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lcom/bsgamesdk/android/model/CaptchModel;)V

    :cond_ae
    :goto_ae
    return-void

    :cond_af
    const/16 v0, 0x3ec

    if-ne p2, v0, :cond_13

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginoutUser(Landroid/content/Context;)V

    sget-object v0, Lcom/bsgamesdk/android/b;->b:Lcom/bsgamesdk/android/dynamic/IUtils;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/bsgamesdk/android/dynamic/IUtils;->loginoutTourist(Landroid/content/Context;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_c6
    const-string v0, "result"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const/16 v2, 0x1772

    invoke-static {v2}, Lcom/bsgamesdk/android/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x1772

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_de} :catch_e3

    :goto_de
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_13

    :catch_e3
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_de

    :catch_e8
    move-exception v0

    :goto_e9
    invoke-static {v0, v10}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    move-object v0, v2

    move-object v5, v1

    goto/16 :goto_31

    :cond_f0
    const-string v1, "-1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "pushCaptch is null"

    invoke-direct {p0, v7, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(ILjava/lang/String;)V

    goto/16 :goto_60

    :cond_ff
    const-string v0, "data is null"

    invoke-direct {p0, v7, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(ILjava/lang/String;)V

    goto/16 :goto_60

    :cond_106
    :try_start_106
    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17e

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13b

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->h:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_12a} :catch_12c

    goto/16 :goto_88

    :catch_12c
    move-exception v0

    const-string v0, "data is null"

    const-string v1, ""

    invoke-direct {p0, v6, v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V

    goto/16 :goto_88

    :cond_13b
    :try_start_13b
    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_161

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->h:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V

    goto/16 :goto_88

    :cond_161
    const-string v2, "3"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_170

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V

    goto/16 :goto_88

    :cond_170
    const/16 v0, -0x22b9

    const-string v2, "json error"

    invoke-direct {p0, v0, v2, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V

    goto/16 :goto_88

    :cond_17e
    const/16 v0, -0x22b9

    const-string v2, "json error"

    invoke-direct {p0, v0, v2, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V
    :try_end_18a
    .catch Ljava/lang/Throwable; {:try_start_13b .. :try_end_18a} :catch_12c

    goto/16 :goto_88

    :cond_18c
    const-string v0, "data is null"

    const-string v1, ""

    invoke-direct {p0, v6, v0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->bc:I

    invoke-direct {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(I)V

    goto/16 :goto_88

    :catch_19a
    move-exception v0

    :goto_19b
    invoke-static {v0, v10}, Lcom/bsgamesdk/android/utils/LogUtils;->printThrowableStackTrace(Ljava/lang/Throwable;Z)V

    move-object v0, v2

    goto/16 :goto_a9

    :cond_1a1
    const-string v1, "-1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-string v0, "pushCaptch is null"

    invoke-direct {p0, v7, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(ILjava/lang/String;)V

    goto/16 :goto_ae

    :cond_1b0
    const-string v0, "data is null"

    invoke-direct {p0, v7, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->b(ILjava/lang/String;)V

    goto/16 :goto_ae

    :catch_1b7
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_19b

    :catch_1bc
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_e9
.end method

.method public onBackPressed()V
    .registers 19

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->a:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->ar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->as:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authpay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aD:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aF:Ljava/lang/String;

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aB:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aG:Ljava/lang/String;

    const/16 v11, 0x1771

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aI:Ljava/lang/String;

    const-string v13, "\u652f\u4ed8\u5b9e\u540d\u8ba4\u8bc1\u53d6\u6d88"

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aK:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/bsgamesdk/android/api/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    const-string v3, "6001"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    const-string v3, "\u652f\u4ed8\u5b9e\u540d\u8ba4\u8bc1\u53d6\u6d88"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "total_fee"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aC:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aD:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recharge_order_no"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aE:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_money"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aF:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "out_trade_no"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aB:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payMethod"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originMessage"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "originCode"

    const-string v3, "-9999"

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aG:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->aK:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->getInstance()Lcom/bilibili/baseconnect/BaseSDKConnectManager;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "pay"

    const-string v6, ""

    const-string v7, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/bilibili/baseconnect/BaseSDKConnectManager;->reportCustomEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->j()V

    goto/16 :goto_f

    :cond_fc
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->i:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v3, "\u8bf7\u5148\u5b8c\u6210\u5b9e\u540d\u8ba4\u8bc1!"

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_10e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_127

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->i:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_127

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v3, "\u8bf7\u5148\u5b8c\u6210\u5b9e\u540d\u8ba4\u8bc1!"

    invoke-static {v2, v3}, Lcom/bsgamesdk/android/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_127
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_133

    invoke-direct/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->g()V

    goto/16 :goto_f

    :cond_133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v3, 0x65

    if-eq v2, v3, :cond_14b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v3, 0x67

    if-eq v2, v3, :cond_14b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v3, 0x68

    if-ne v2, v3, :cond_150

    :cond_14b
    invoke-direct/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->f()V

    goto/16 :goto_f

    :cond_150
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_15f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_164

    :cond_15f
    invoke-direct/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->j()V

    goto/16 :goto_f

    :cond_164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->H:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v2}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    new-instance v2, Lcom/bsgamesdk/android/model/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bsgamesdk/android/model/a;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v4, v4, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v4, v4, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bsgamesdk/android/model/a;->a(Ljava/lang/String;Z)V

    :cond_1b5
    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bsgamesdk/android/api/b;->q()Z

    move-result v3

    if-eqz v3, :cond_217

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v4, v4, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bsgamesdk/android/model/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_217

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-class v4, Lcom/bsgamesdk/android/activity/LicenseAgreementActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "IN_TYPE"

    const-string v4, "IN_TYPE_TOUR_AUTO_LOGIN"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "UID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v6, v5, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v3, Lcom/bsgamesdk/android/activity/TouristActivity;->ba:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/bsgamesdk/android/activity/TouristActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_f

    :cond_217
    invoke-direct/range {p0 .. p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->i()V

    goto/16 :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15

    const/16 v2, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bsgamesdk/android/BSGameSdk;->getInstance()Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    sget v0, Lcom/bsgamesdk/android/utils/f$e;->j:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->setContentView(I)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bz:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    new-instance v0, Lcom/bsgamesdk/android/model/k;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bsgamesdk/android/model/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->H:Lcom/bsgamesdk/android/model/k;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aP:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aQ:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ak:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->by:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->al:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bx:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->am:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bB:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ao:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bC:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ap:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->cc:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aq:Landroid/view/View;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_antiIndulgenceLayout"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ar:Landroid/view/View;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_touristLimitLayout"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->as:Landroid/view/View;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bagamesdk_anti_submit"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aL:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_anti_firsttext"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aM:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_anti_secondtext"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aN:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_tourist_limit_name"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aO:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_tourist_limit_content"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aP:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bagamesdk_tourist_limit_bind"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aR:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bagamesdk_tourist_limit_close"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aQ:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_title_logo"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aX:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_title_logo_new"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aY:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aX:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->af:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ae:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ag:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->av:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bsgamesdk/android/api/b;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ai:Z

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->ca:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ag:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->cb:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->af:Landroid/view/View;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bU:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Z:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bV:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aa:Landroid/widget/EditText;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bW:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ab:Landroid/widget/Button;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bX:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ad:Landroid/widget/ImageButton;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bY:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ae:Landroid/widget/ImageButton;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->bZ:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ac:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v1, "bsgamesdk_id_top_tip"

    invoke-static {v0, v1}, Lcom/bsgamesdk/android/utils/s;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ah:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ah:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bsgamesdk/android/api/b;->a()Lcom/bsgamesdk/android/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bsgamesdk/android/api/b;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Z:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$e;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ad:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Z:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Z:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ad:Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/utils/i$d;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->Z:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$c;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ad:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aa:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$e;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ae:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aa:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$d;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aa:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ae:Landroid/widget/ImageButton;

    invoke-direct {v1, v2, v3}, Lcom/bsgamesdk/android/utils/i$d;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aa:Landroid/widget/EditText;

    new-instance v1, Lcom/bsgamesdk/android/utils/i$c;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ae:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/bsgamesdk/android/utils/i$c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ad:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$2;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$2;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ae:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$3;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$3;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ab:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$4;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$4;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->ac:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$5;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$5;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$6;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$6;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$7;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$7;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aN:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->I:Landroid/widget/RelativeLayout;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aO:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->J:Landroid/widget/TextView;

    sget-object v0, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/model/d;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/bsgamesdk/android/utils/x;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->J:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    iget-object v4, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->an:Landroid/view/View;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/bsgamesdk/android/utils/x;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->K:Lcom/bsgamesdk/android/utils/x;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->I:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$8;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$8;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bsgamesdk/android/presenter/b;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/presenter/b;-><init>(Lcom/bsgamesdk/android/presenter/c;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->c:Lcom/bsgamesdk/android/presenter/b;

    new-instance v0, Lcom/bsgamesdk/android/presenter/d;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/presenter/d;-><init>(Lcom/bsgamesdk/android/presenter/e;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->d:Lcom/bsgamesdk/android/presenter/d;

    new-instance v0, Lcom/bsgamesdk/android/presenter/g;

    invoke-direct {v0, p0}, Lcom/bsgamesdk/android/presenter/g;-><init>(Lcom/bsgamesdk/android/presenter/h;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->e:Lcom/bsgamesdk/android/presenter/g;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    :try_start_2ae
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2c4
    sput-object v0, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_451

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2dc
    sput-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_455

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f4
    sput-object v0, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_459

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_30c
    sput-object v0, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_324
    sput-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_461

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_33c
    sput-object v0, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->D:I

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v6, "1"

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bsgamesdk/android/helper/PayRequest;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    if-eqz v0, :cond_3d2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aH:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->out_trade_no:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aB:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-wide v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->money:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aC:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aD:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->role:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aE:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->game_money:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aF:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->item_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aG:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->order_sign:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aI:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->notify_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aA:Lcom/bsgamesdk/android/helper/PayRequest;

    iget-object v0, v0, Lcom/bsgamesdk/android/helper/PayRequest;->product_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aK:Ljava/lang/String;

    :cond_3d2
    new-instance v0, Lcom/bsgamesdk/android/api/h;

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    iget-object v5, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aH:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/bsgamesdk/android/api/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->y:Lcom/bsgamesdk/android/api/h;
    :try_end_3df
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_3df} :catch_465

    :goto_3df
    :try_start_3df
    sget-boolean v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->isPayCaptcha:Z

    if-nez v0, :cond_3e7

    sget-boolean v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->isUpgradeCaptcha:Z

    if-eqz v0, :cond_46b

    :cond_3e7
    move v0, v11

    :goto_3e8
    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aV:Z
    :try_end_3ea
    .catch Ljava/lang/Throwable; {:try_start_3df .. :try_end_3ea} :catch_542

    :goto_3ea
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aV:Z

    if-eqz v0, :cond_401

    const-string v0, "intent"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touristLimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_401

    iput-boolean v10, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    :cond_401
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touristLimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46e

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aT:Z

    if-nez v0, :cond_46e

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "dc_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "dc_view"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v3, "from"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v4, "access_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v5, "uid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v6, "uname"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_44d
    :try_start_44d
    sget-object v0, Lcom/bsgamesdk/android/model/c;->a:Ljava/lang/String;

    goto/16 :goto_2c4

    :cond_451
    sget-object v0, Lcom/bsgamesdk/android/model/c;->c:Ljava/lang/String;

    goto/16 :goto_2dc

    :cond_455
    sget-object v0, Lcom/bsgamesdk/android/model/c;->g:Ljava/lang/String;

    goto/16 :goto_2f4

    :cond_459
    sget-object v0, Lcom/bsgamesdk/android/model/c;->f:Ljava/lang/String;

    goto/16 :goto_30c

    :cond_45d
    sget-object v0, Lcom/bsgamesdk/android/model/c;->e:Ljava/lang/String;

    goto/16 :goto_324

    :cond_461
    sget-object v0, Lcom/bsgamesdk/android/model/c;->b:Ljava/lang/String;
    :try_end_463
    .catch Ljava/lang/Exception; {:try_start_44d .. :try_end_463} :catch_465

    goto/16 :goto_33c

    :catch_465
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_3df

    :cond_46b
    move v0, v10

    goto/16 :goto_3e8

    :cond_46e
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tourist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_502

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aB:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->A:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->az:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->z:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aC:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->B:Landroid/widget/TextView;

    sget v0, Lcom/bsgamesdk/android/utils/f$d;->aA:I

    invoke-virtual {p0, v0}, Lcom/bsgamesdk/android/activity/TouristActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->C:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->H:Lcom/bsgamesdk/android/model/k;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/model/k;->c()Lcom/bsgamesdk/android/model/TouristUserParceable;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    if-eqz v0, :cond_4c7

    const-string v0, ""

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v1, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4ec

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-object v0, v0, Lcom/bsgamesdk/android/model/TouristUserParceable;->nickname:Ljava/lang/String;

    :goto_4c2
    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4c7
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->A:Landroid/widget/TextView;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$9;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$9;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->B:Landroid/widget/TextView;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$10;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$10;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->C:Landroid/widget/Button;

    new-instance v1, Lcom/bsgamesdk/android/activity/TouristActivity$11;

    invoke-direct {v1, p0}, Lcom/bsgamesdk/android/activity/TouristActivity$11;-><init>(Lcom/bsgamesdk/android/activity/TouristActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v11, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aU:Z

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->g()V

    goto/16 :goto_10

    :cond_4ec
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->G:Lcom/bsgamesdk/android/model/TouristUserParceable;

    iget-wide v2, v1, Lcom/bsgamesdk/android/model/TouristUserParceable;->uid_long:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c2

    :cond_502
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touristpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_519

    iput-boolean v11, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aU:Z

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->e()V

    goto/16 :goto_10

    :cond_519
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-boolean v11, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aU:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->j:I

    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->d()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aj:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->au:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->at:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_10

    :catch_542
    move-exception v0

    goto/16 :goto_3ea
.end method

.method protected onDestroy()V
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/bsgamesdk/android/utils/k;->a()V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aZ:Landroid/os/Handler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aZ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_d
    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->T:Lcom/bsgamesdk/android/utils/i$b;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->T:Lcom/bsgamesdk/android/utils/i$b;

    invoke-virtual {v0}, Lcom/bsgamesdk/android/utils/i$b;->cancel()V

    iput-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->T:Lcom/bsgamesdk/android/utils/i$b;

    :cond_18
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aW:Z

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touristLimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "dc_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v1, "dc_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v2, "dc_view"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v3, "u3dTag"

    const-string v4, "isTouristKill"

    invoke-static {v2, v3, v4}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v3, "dc_action"

    invoke-static {v2, v3, v0}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->F:Landroid/content/Context;

    const-string v2, "dc_view"

    invoke-static {v0, v2, v1}, Lcom/bsgamesdk/android/buvid/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_75
    :goto_75
    invoke-direct {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->a()V

    invoke-super {p0}, Lcom/bsgamesdk/android/activity/BaseActivity;->onDestroy()V

    return-void

    :cond_7c
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    if-eqz v0, :cond_75

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_85
    const-string v0, "result"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "\u7528\u6237\u53d6\u6d88"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    const/16 v2, 0x1771

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_99} :catch_9d

    :goto_99
    invoke-virtual {p0, v1}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Lorg/json/JSONObject;)V

    goto :goto_75

    :catch_9d
    move-exception v0

    invoke-static {v0}, Lcom/bsgamesdk/android/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Exception;)V

    goto :goto_99
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 9

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/bsgamesdk/android/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    :try_start_4
    sget-boolean v0, Lcom/bsgamesdk/android/activity/PaymentActivity;->isPayCaptcha:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/bsgamesdk/android/activity/CaptchaWebActivity;->isUpgradeCaptcha:Z

    if-eqz v0, :cond_6b

    :cond_c
    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aV:Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_6d

    :goto_f
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aV:Z

    if-eqz v0, :cond_26

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "touristLimit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iput-boolean v1, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aS:Z

    invoke-virtual {p0}, Lcom/bsgamesdk/android/activity/TouristActivity;->finish()V

    :cond_26
    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aU:Z

    if-nez v0, :cond_6a

    iget-boolean v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->aT:Z

    if-nez v0, :cond_6a

    if-eqz p1, :cond_6a

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touristLimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "dc_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bsgamesdk/android/activity/TouristActivity;->E:Landroid/os/Bundle;

    const-string v0, "dc_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "dc_view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bsgamesdk/android/activity/TouristActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    return-void

    :cond_6b
    move v0, v1

    goto :goto_d

    :catch_6d
    move-exception v0

    goto :goto_f
.end method
