.class public final Lcom/bsgamesdk/android/utils/f$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:I

.field public static R:I

.field public static S:I

.field public static T:I

.field public static U:I

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:I

.field public static a:I

.field public static aA:I

.field public static aB:I

.field public static aC:I

.field public static aD:I

.field public static aE:I

.field public static aF:I

.field public static aG:I

.field public static aH:I

.field public static aI:I

.field public static aJ:I

.field public static aK:I

.field public static aL:I

.field public static aM:I

.field public static aN:I

.field public static aO:I

.field public static aP:I

.field public static aQ:I

.field public static aR:I

.field public static aS:I

.field public static aT:I

.field public static aU:I

.field public static aV:I

.field public static aW:I

.field public static aX:I

.field public static aY:I

.field public static aZ:I

.field public static aa:I

.field public static ab:I

.field public static ac:I

.field public static ad:I

.field public static ae:I

.field public static af:I

.field public static ag:I

.field public static ah:I

.field public static ai:I

.field public static aj:I

.field public static ak:I

.field public static al:I

.field public static am:I

.field public static an:I

.field public static ao:I

.field public static ap:I

.field public static aq:I

.field public static ar:I

.field public static as:I

.field public static at:I

.field public static au:I

.field public static av:I

.field public static aw:I

.field public static ax:I

.field public static ay:I

.field public static az:I

.field public static b:I

.field public static bA:I

.field public static bB:I

.field public static bC:I

.field public static bD:I

.field public static bE:I

.field public static bF:I

.field public static bG:I

.field public static bH:I

.field public static bI:I

.field public static bJ:I

.field public static bK:I

.field public static bL:I

.field public static bM:I

.field public static bN:I

.field public static bO:I

.field public static bP:I

.field public static bQ:I

.field public static bR:I

.field public static bS:I

.field public static bT:I

.field public static bU:I

.field public static bV:I

.field public static bW:I

.field public static bX:I

.field public static bY:I

.field public static bZ:I

.field public static ba:I

.field public static bb:I

.field public static bc:I

.field public static bd:I

.field public static be:I

.field public static bf:I

.field public static bg:I

.field public static bh:I

.field public static bi:I

.field public static bj:I

.field public static bk:I

.field public static bl:I

.field public static bm:I

.field public static bn:I

.field public static bo:I

.field public static bp:I

.field public static bq:I

.field public static br:I

.field public static bs:I

.field public static bt:I

.field public static bu:I

.field public static bv:I

.field public static bw:I

.field public static bx:I

.field public static by:I

.field public static bz:I

.field public static c:I

.field public static ca:I

.field public static cb:I

.field public static cc:I

.field public static cd:I

.field public static ce:I

.field public static cf:I

.field public static cg:I

.field public static ch:I

.field public static ci:I

.field public static cj:I

.field public static ck:I

.field public static cl:I

.field public static cm:I

.field public static cn:I

.field public static co:I

.field public static cp:I

.field public static cq:I

.field public static cr:I

.field public static cs:I

.field private static ct:Ljava/lang/String;

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "id"

    sput-object v0, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_settings"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->a:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_ProgressBar01"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->b:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_ProgressBar02"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->c:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_Submit_reg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->d:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_agreement_titler_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->e:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_agreement_webView"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->f:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_buttonLogin"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->g:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_buttonReg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->h:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_button_activate"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->i:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login_point_determine"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->j:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_button_oneClickLogin"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->k:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_button_coupon"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->l:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_checkBoxRemeberPassword"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->m:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_textview_oneClickLogin_Info"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->n:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_textview_coupon_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->o:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_textview_coupon_item"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->p:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_textview_coupon_time"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->q:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_textview_oneClickLogin_switchUser"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->r:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_captcha"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->s:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_password_login"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->t:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_password_reg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->u:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_username_login"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->v:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_username_reg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->w:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_activate"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->x:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_errorLinearLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->y:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_ErrorIcon"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->z:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_ErrorMessage"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->A:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_ErrorRetry"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->B:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_button"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->C:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_buttonBack"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->D:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_buttonLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->E:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_emailLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->F:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_loginInputLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->G:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_passwordLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->H:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_regInputLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->I:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_toastImg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->J:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_toastText"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->K:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_usernameLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->L:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_layoutLoading"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->M:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_layoutWeb"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->N:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_linearLayoutLoad"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->O:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_loginLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->P:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_oneClickLoginLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->Q:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_couponLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->R:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_loginTitlebar"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->S:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login_ScrollView"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->T:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login_usernameDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->U:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_registerLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->V:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_ScrollView"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->W:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_captchaDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->X:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_passwordLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->Y:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_switchImg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->Z:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_usernameDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aa:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_usernameLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ab:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activateLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ac:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_switchBtn"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ad:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_title_back"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ae:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_title_close"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->af:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_title_content"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ag:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_title_logo"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ah:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tvloading"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ai:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_webView"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aj:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_webpage_content_titler_root"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ak:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "icon_email"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->al:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "icon_password"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->am:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "icon_register_password"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->an:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "icon_register_user"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ao:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "icon_user"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ap:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_switchImg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aq:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_textview_login_toursitLogin"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ar:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_textview_login_forgetPwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->as:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_captcha_img"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->at:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_captcha_edit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->au:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_captcha_login"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->av:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_captchaLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aw:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_touristLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ax:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_tourist_pay_up"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ay:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_name"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->az:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_tourist_wel_up"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aA:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_tourist_switch"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aB:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_tourist_enter"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aC:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_welcome_name"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aD:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_welcome_change"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aE:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login_main"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aF:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_more_user"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aG:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_item_userauto_user"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aH:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_item_useraotu_del"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aI:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_username_list"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aJ:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_username_ll"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aK:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_welcome_avatar"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aL:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_welcome_container"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aM:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_reg_area_rl"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aN:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_reg_area_name"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aO:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_titleLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aP:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_areaLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aQ:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_authenticationLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aR:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_pointLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aS:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_notice_content"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aT:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_notice_img"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aU:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_notice_btn"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aV:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_noticeLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aW:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_register_obtain"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aX:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_other_reg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aY:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_username_reg_uname"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->aZ:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_usernameDel_uname"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ba:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_password_reg_uname"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bb:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_switchImg_uname"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bc:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_Submit_reg_uname"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bd:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_unameRegisterLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->be:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_point_determine"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bf:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_username_reset_pwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bg:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_reset_pwd_usernameDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bh:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_captcha_reset_pwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bi:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_reset_pwd_obtain"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bj:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_reset_pwd_captchaDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bk:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_password_reset_pwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bl:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_reset_pwd_switchImg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bm:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_determine_reset_pwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bn:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_resetPwdLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bo:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_username_bind"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bp:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_bind_usernameDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bq:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_captcha_bind"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->br:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_bind_obtain"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bs:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_bind_captchaDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bt:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_password_bind"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bu:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_bind_switchImg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bv:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_Submit_bind"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bw:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_touristBindLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bx:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_touristWelLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->by:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_touristMainLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bz:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_pay_name"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bA:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_touristCaptchaLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bB:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_touristPayLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bC:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_gameout_img"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bD:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_gameout_comfirm"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bE:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_gameout_cancel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bF:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_reg_firstLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bG:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_reg_secondLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bH:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_nicename_reg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bI:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_reg_btn_next"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bJ:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_txt_tel_reg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bK:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_get_captchaLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bL:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_submitLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bM:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_registerLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bN:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_checkboxAgree_custom"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bO:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_buttonAgreement_custom"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bP:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_buttonAgreement_privacy"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bQ:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_checkboxAgreeLayout_register_submit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bR:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_checkboxAgreeLayout_register_uname"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bS:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_checkboxAgreeLayout_tourist_bind"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bT:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_authentication_name"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bU:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_edit_authentication_id_number"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bV:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_authentication_submit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bW:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_authentication_nameDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bX:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_authentication_id_numberDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bY:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bagamesdk_auth_success_comfirm"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->bZ:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "auth_submitLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ca:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "auth_successLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cb:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_touristAuthLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cc:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login_pwdDel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cd:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_license_content"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ce:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_license_disagree"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cf:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_license_agree"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cg:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_textview_quickRegister"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ch:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tipPaidLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ci:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_tip_paid_comfirm"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cj:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_permittedMinorLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->ck:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_unpermittedMinorLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cl:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_tip_permittedMinor_comfirm"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cm:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_tip_unpermittedMinor_comfirm"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cn:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_id_prePayLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->co:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_secureBindingLayout"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cp:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bagamesdk_binding_mail"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cq:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bagamesdk_binding_phone"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cr:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_pay_ll"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$d;->ct:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$d;->cs:I

    return-void
.end method
