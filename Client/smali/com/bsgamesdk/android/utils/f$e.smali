.class public final Lcom/bsgamesdk/android/utils/f$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bsgamesdk/android/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field private static C:Ljava/lang/String;

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

    const-string v0, "layout"

    sput-object v0, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_agreement"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->a:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_loading"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->b:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_payment"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->c:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_layout_toast_custom"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->d:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->e:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_login_main"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->f:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->g:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_title"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->h:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_captcha"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->i:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_tourist"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->j:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_welcome"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->k:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_item_userauto"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->l:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_username_list"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->m:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_notice"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->n:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_uname_register"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->o:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_point"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->p:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_reset_pwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->q:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_wel"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->r:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_tourist_bind"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->s:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_exit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->t:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_register"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->u:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_get_captcha"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->v:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_register_submit"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->w:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_custom_pwd"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->x:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_custom_checkboxagree"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->y:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_pay_result"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->z:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_license"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->A:I

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bsgamesdk_activity_prepay"

    sget-object v2, Lcom/bsgamesdk/android/utils/f$e;->C:Ljava/lang/String;

    invoke-static {}, Lcom/bsgamesdk/android/utils/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bsgamesdk/android/utils/f$e;->B:I

    return-void
.end method
