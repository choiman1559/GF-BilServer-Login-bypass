.class public final Lcom/bsgamesdk/android/utils/f$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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

.field public static aa:I

.field public static ab:I

.field public static ac:I

.field public static ad:I

.field public static ae:I

.field public static af:I

.field public static ag:I

.field public static ah:I

.field private static ai:Ljava/lang/String;

.field public static b:I

.field public static c:I

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

    const-string v0, "drawable"

    sput-object v0, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_agreement_topbar"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->a:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_back_topbar_btn"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->b:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_back_topbar_btn_nor"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->c:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_back_topbar_btn_press"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->d:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_bottom"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->e:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_login"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->f:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_login_nor"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->g:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_login_press"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->h:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_pressed"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->i:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_reg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->j:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_reg_nor"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->k:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_reg_press"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->l:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_btn_unpressed"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->m:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_checkbox"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->n:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_checkbox_click"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->o:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_drawable_embtn"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->p:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_drawable_inputbg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->q:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_fc"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->r:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_float_menu_horizontal_divider"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->s:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_float_menu_vertical_divider"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->t:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_frame"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->u:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_back"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->v:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_back_nor"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->w:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_back_press"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->x:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_close"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->y:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_close_nor"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->z:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_close_press"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->A:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_email"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->B:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_error"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->C:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_info"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->D:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_password"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->E:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_icon_user"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->F:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_input"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->G:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_input_click"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->H:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_input_focus"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->I:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_inputbg_normal"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->J:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_inputbg_normal_high"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->K:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_loading"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->L:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_mask"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->M:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_pic_del"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->N:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_pic_tipsbg_thin"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->O:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_pic_warn"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->P:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bili_small_logo"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->Q:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "sharejoy_logo"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->R:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_toast_back"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->S:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_corners_shape_activity"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->T:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_corners_shape_dialog"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->U:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_corners_shape_image"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->V:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ic_launcher"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->W:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_img_change"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->X:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_delete"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->Y:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_default_head"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->Z:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cio_card_io_logo"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->aa:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cio_ic_amex"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->ab:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cio_ic_discover"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->ac:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cio_ic_jcb"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->ad:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cio_ic_mastercard"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->ae:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cio_ic_paypal_monogram"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->af:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cio_ic_visa"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->ag:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cio_paypal_logo"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$c;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$c;->ah:I

    return-void
.end method
