.class public final Lcom/bsgamesdk/android/utils/f$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
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

.field private static Z:Ljava/lang/String;

.field public static a:I

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

    const-string v0, "string"

    sput-object v0, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_PermissionDesCription"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->a:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_settings"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->b:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_auth_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->c:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "pay_confirm_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->d:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "pay_redo"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->e:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "app_name"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->f:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_agree"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->g:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_agreement"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->h:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_app_name"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->i:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_cancel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->j:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_delbtn"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->k:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_email"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->l:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_email_hit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->m:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_fast_reg"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->n:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_forgetpwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->o:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_loadingTips"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->p:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->q:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->r:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_logo"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->s:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_network_error"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->t:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_new_password_hit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->u:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_password_hit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->v:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_password_login_hit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->w:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_pay_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->x:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_reg_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->y:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->z:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_rememberpwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->A:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_retry"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->B:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_service"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->C:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_privacy"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->D:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_submit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->E:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_sure"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->F:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_user_change_password"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->G:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_user_modify_account"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->H:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_user_modify_account_hit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->I:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_user_register"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->J:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_username"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->K:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_username_hit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->L:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_username_login_hit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->M:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_warnpic"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->N:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_closetitle"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->O:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hello_world"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->P:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_reg_and_login"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->Q:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_captcha_hit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->R:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_before"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->S:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_content"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->T:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_switch"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->U:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_enter"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->V:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_enter"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->W:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_welcome_change"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->X:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_welcome_wel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$f;->Z:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$f;->Y:I

    return-void
.end method
