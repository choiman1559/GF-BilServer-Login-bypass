.class public final Lcom/paypal/android/sdk/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/h;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->a:Lcom/paypal/android/sdk/fs;

    const-string v2, "Agree and Pay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->b:Lcom/paypal/android/sdk/fs;

    const-string v2, "& other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->c:Lcom/paypal/android/sdk/fs;

    const-string v2, "Authenticating"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->d:Lcom/paypal/android/sdk/fs;

    const-string v2, "Back"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->e:Lcom/paypal/android/sdk/fs;

    const-string v2, "Backup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->f:Lcom/paypal/android/sdk/fs;

    const-string v2, "Cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->g:Lcom/paypal/android/sdk/fs;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->h:Lcom/paypal/android/sdk/fs;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->i:Lcom/paypal/android/sdk/fs;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->j:Lcom/paypal/android/sdk/fs;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->k:Lcom/paypal/android/sdk/fs;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->l:Lcom/paypal/android/sdk/fs;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->m:Lcom/paypal/android/sdk/fs;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->n:Lcom/paypal/android/sdk/fs;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->o:Lcom/paypal/android/sdk/fs;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->p:Lcom/paypal/android/sdk/fs;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->q:Lcom/paypal/android/sdk/fs;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->r:Lcom/paypal/android/sdk/fs;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->s:Lcom/paypal/android/sdk/fs;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->t:Lcom/paypal/android/sdk/fs;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->u:Lcom/paypal/android/sdk/fs;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->v:Lcom/paypal/android/sdk/fs;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->w:Lcom/paypal/android/sdk/fs;

    const-string v2, "Change Funding Source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->x:Lcom/paypal/android/sdk/fs;

    const-string v2, "Current"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->y:Lcom/paypal/android/sdk/fs;

    const-string v2, "Checking this device\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->z:Lcom/paypal/android/sdk/fs;

    const-string v2, "Clear card details"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->A:Lcom/paypal/android/sdk/fs;

    const-string v2, "Confirm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->B:Lcom/paypal/android/sdk/fs;

    const-string v2, "Are you sure you want to clear your card details?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->C:Lcom/paypal/android/sdk/fs;

    const-string v2, "Charge Card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->D:Lcom/paypal/android/sdk/fs;

    const-string v2, "Are you sure you want to log out of PayPal?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->E:Lcom/paypal/android/sdk/fs;

    const-string v2, "Pay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->F:Lcom/paypal/android/sdk/fs;

    const-string v2, "Agree"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->G:Lcom/paypal/android/sdk/fs;

    const-string v2, "Account Creation Date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->H:Lcom/paypal/android/sdk/fs;

    const-string v2, "Account Status"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->I:Lcom/paypal/android/sdk/fs;

    const-string v2, "Account Type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->J:Lcom/paypal/android/sdk/fs;

    const-string v2, "Address Line 1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->K:Lcom/paypal/android/sdk/fs;

    const-string v2, "Age Range"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->L:Lcom/paypal/android/sdk/fs;

    const-string v2, "Date of Birth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->M:Lcom/paypal/android/sdk/fs;

    const-string v2, "Email Address"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->N:Lcom/paypal/android/sdk/fs;

    const-string v2, "Full Name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->O:Lcom/paypal/android/sdk/fs;

    const-string v2, "Gender"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->P:Lcom/paypal/android/sdk/fs;

    const-string v2, "Language"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->Q:Lcom/paypal/android/sdk/fs;

    const-string v2, "Locale"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->R:Lcom/paypal/android/sdk/fs;

    const-string v2, "Phone Number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->S:Lcom/paypal/android/sdk/fs;

    const-string v2, "Time Zone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->T:Lcom/paypal/android/sdk/fs;

    const-string v2, "Share the following: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->U:Lcom/paypal/android/sdk/fs;

    const-string v2, "Use Seamless Checkout."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->V:Lcom/paypal/android/sdk/fs;

    const-string v2, "%s asks that you:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->W:Lcom/paypal/android/sdk/fs;

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->X:Lcom/paypal/android/sdk/fs;

    const-string v2, "Enable the display of your funding options to allow you to make a choice."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->Y:Lcom/paypal/android/sdk/fs;

    const-string v2, "<a href=\'%1$s\'>Authorise charges</a> for future %2$s purchases paid for with PayPal. You instruct PayPal to pay all amounts requested by %3$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->Z:Lcom/paypal/android/sdk/fs;

    const-string v2, "Allow them to add and manage their loyalty card in your PayPal wallet."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aa:Lcom/paypal/android/sdk/fs;

    const-string v2, "Agree to the %1$s <a href=\'%2$s\'>privacy policy</a> and <a href=\'%3$s\'>user agreement</a>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ab:Lcom/paypal/android/sdk/fs;

    const-string v2, "Permit them to <a href=\'%1$s\'>request money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ac:Lcom/paypal/android/sdk/fs;

    const-string v2, "Permit them to <a href=\'%1$s\'>send money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ad:Lcom/paypal/android/sdk/fs;

    const-string v2, "Consent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ae:Lcom/paypal/android/sdk/fs;

    const-string v2, "Email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->af:Lcom/paypal/android/sdk/fs;

    const-string v2, "Mock Data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ag:Lcom/paypal/android/sdk/fs;

    const-string v2, "Sandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ah:Lcom/paypal/android/sdk/fs;

    const-string v2, "Expires"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ai:Lcom/paypal/android/sdk/fs;

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aj:Lcom/paypal/android/sdk/fs;

    const-string v2, "Forgotten your password?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ak:Lcom/paypal/android/sdk/fs;

    const-string v2, "From"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->al:Lcom/paypal/android/sdk/fs;

    const-string v2, "How would you like to fund future payments to %1$s?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->am:Lcom/paypal/android/sdk/fs;

    const-string v2, "<h1><strong>Future Payment Agreement</strong></h1><p>Your default funding source will be used to pay for future PayPal payments from this merchant.</p><p>To cancel this agreement, log in to your PayPal account, go to <strong>Profile</strong> &gt; <strong>My Settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p><p>The Recurring Payment section of the <a href=\'%s\'>PayPal User Agreement</a> shall apply.</p><p>To make sure payments work with your PayPal account, this app may simulate a small test transaction, but no money will be transferred for this.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->an:Lcom/paypal/android/sdk/fs;

    const-string v2, "Internal Error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ao:Lcom/paypal/android/sdk/fs;

    const-string v2, "<p>By clicking the button below, I hereby agree to the terms of the <a href=\'%1$s\'>PayPal User Agreement</a> and declare that I am in compliance with Japanese laws and regulations, including sanctions against payments to North Korea and Iran pursuant to the <a href=\'%2$s\'>Foreign Exchange and Foreign Trade Act</a> to complete the transaction.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ap:Lcom/paypal/android/sdk/fs;

    const-string v2, "Log In"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aq:Lcom/paypal/android/sdk/fs;

    const-string v2, "Log In with PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ar:Lcom/paypal/android/sdk/fs;

    const-string v2, "Log Out"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->as:Lcom/paypal/android/sdk/fs;

    const-string v2, "Log out"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->at:Lcom/paypal/android/sdk/fs;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->au:Lcom/paypal/android/sdk/fs;

    const-string v2, "Password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->av:Lcom/paypal/android/sdk/fs;

    const-string v2, "Pay After Delivery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aw:Lcom/paypal/android/sdk/fs;

    const-string v2, "Pay with"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ax:Lcom/paypal/android/sdk/fs;

    const-string v2, "Pay with Card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ay:Lcom/paypal/android/sdk/fs;

    const-string v2, "PayPal Balance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->az:Lcom/paypal/android/sdk/fs;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aA:Lcom/paypal/android/sdk/fs;

    const-string v2, "Phone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aB:Lcom/paypal/android/sdk/fs;

    const-string v2, "PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aC:Lcom/paypal/android/sdk/fs;

    const-string v2, "Preferred Funding Source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aD:Lcom/paypal/android/sdk/fs;

    const-string v2, "PayPal protects your <a href=\'%s\'>privacy</a> and financial information."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aE:Lcom/paypal/android/sdk/fs;

    const-string v2, "Processing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aF:Lcom/paypal/android/sdk/fs;

    const-string v2, "Remember card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aG:Lcom/paypal/android/sdk/fs;

    const-string v2, "Request Money"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aH:Lcom/paypal/android/sdk/fs;

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Log In with PayPal</strong> options under <strong>Profile</strong> settings and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aI:Lcom/paypal/android/sdk/fs;

    const-string v2, "Savings"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aJ:Lcom/paypal/android/sdk/fs;

    const-string v2, "Send Money"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aK:Lcom/paypal/android/sdk/fs;

    const-string v2, "There was a problem communicating with the PayPal servers. Please try again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aL:Lcom/paypal/android/sdk/fs;

    const-string v2, "Please log in to PayPal again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aM:Lcom/paypal/android/sdk/fs;

    const-string v2, "Session Expired"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aN:Lcom/paypal/android/sdk/fs;

    const-string v2, "Delivery Address"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aO:Lcom/paypal/android/sdk/fs;

    const-string v2, "New to PayPal? Sign Up"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aP:Lcom/paypal/android/sdk/fs;

    const-string v2, "Stay logged in"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aQ:Lcom/paypal/android/sdk/fs;

    const-string v2, "System error (%s). Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aR:Lcom/paypal/android/sdk/fs;

    const-string v2, "Try Again"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aS:Lcom/paypal/android/sdk/fs;

    const-string v2, "Unable to log in because two-factor authentication has been enabled for your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aT:Lcom/paypal/android/sdk/fs;

    const-string v2, "Verification Code"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aU:Lcom/paypal/android/sdk/fs;

    const-string v2, "Send a text message to your phone. The 6-digit code you receive will be valid for 5 minutes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aV:Lcom/paypal/android/sdk/fs;

    const-string v2, "Sending Text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aW:Lcom/paypal/android/sdk/fs;

    const-string v2, "Enter the 6-digit verification code"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aX:Lcom/paypal/android/sdk/fs;

    const-string v2, "Your mobile number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aY:Lcom/paypal/android/sdk/fs;

    const-string v2, "Send Text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aZ:Lcom/paypal/android/sdk/fs;

    const-string v2, "Send Text Again"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ba:Lcom/paypal/android/sdk/fs;

    const-string v2, "Unable to log in because two-factor authentication has been enabled for your account. Please visit the PayPal website to activate your security key."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bb:Lcom/paypal/android/sdk/fs;

    const-string v2, "Payments from this device are not allowed."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bc:Lcom/paypal/android/sdk/fs;

    const-string v2, "Unauthorised Device"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bd:Lcom/paypal/android/sdk/fs;

    const-string v2, "Payments to this merchant are not allowed (invalid clientId)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->be:Lcom/paypal/android/sdk/fs;

    const-string v2, "Invalid merchant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bf:Lcom/paypal/android/sdk/fs;

    const-string v2, "There was a problem processing your payment. Please try again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bg:Lcom/paypal/android/sdk/fs;

    const-string v2, "Unrecognised Source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bh:Lcom/paypal/android/sdk/fs;

    const-string v2, "We\u2019re Sorry"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bi:Lcom/paypal/android/sdk/fs;

    const-string v2, "Your Order"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bj:Lcom/paypal/android/sdk/fs;

    const-string v2, "This device cannot communicate with PayPal because this version of Android is too old. Please upgrade Android or try a newer device."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bk:Lcom/paypal/android/sdk/fs;

    const-string v2, "Clear Card?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bl:Lcom/paypal/android/sdk/fs;

    const-string v2, "Consent Failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bm:Lcom/paypal/android/sdk/fs;

    const-string v2, "Connection Failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bn:Lcom/paypal/android/sdk/fs;

    const-string v2, "Login Failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bo:Lcom/paypal/android/sdk/fs;

    const-string v2, "Log in with password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bp:Lcom/paypal/android/sdk/fs;

    const-string v2, "Log in with PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bq:Lcom/paypal/android/sdk/fs;

    const-string v2, "One moment\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->br:Lcom/paypal/android/sdk/fs;

    const-string v2, "Payment Failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bs:Lcom/paypal/android/sdk/fs;

    const-string v2, "Scan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bt:Lcom/paypal/android/sdk/fs;

    const-string v2, "Incorrect Security code. Please try again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bu:Lcom/paypal/android/sdk/fs;

    const-string v2, "Via"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bv:Lcom/paypal/android/sdk/fs;

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Share information about the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Share the information about the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Share information about the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Share information about the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Share information about the <a href=\'%1$s\'>payment methods</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Share information with them about the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Share the information about the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Share information about the <a href=\'%1$s\'>payment methods</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Share the information about the <a href=\'%1$s\'>funding sources</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Share information about the <a href=\'%1$s\'>payment methods</a> linked to your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Share the <a href=\'%1$s\'>funding sources</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>Authorise charges</a> for future %2$s purchases paid for with PayPal. You instruct PayPal to pay all amounts requested by %3$s.</p><p>Please see the <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>PayPal Recurring Payments and Billing Agreement</a> for more information.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>Authorise charges</a> for future %2$s purchases paid for with PayPal. You instruct PayPal to pay all amounts requested by %3$s.</p><p>Please see the <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>PayPal Recurring Payments and Billing Agreement</a> for more information.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>Authorise charges</a> for future purchases paid for with PayPal. You authorise and instruct PayPal to pay all amounts."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>Authorise charges</a> for future purchases paid for with PayPal. You authorise and instruct PayPal to pay all amounts."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>Authorise charges</a> for future purchases paid for with PayPal. You authorise and instruct PayPal to pay all amounts."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Pre-approve future payments made from your PayPal account without logging in to PayPal each time. <a href=\'%1$s\'>See additional terms</a>, including funding sources and how to cancel future payments."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>request money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>request money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>request money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>request money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>request money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>request money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>request money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>send money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>send money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>send money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>send money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>send money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>send money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Permit %2$s to <a href=\'%1$s\'>send money</a> on your behalf until you withdraw consent."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares the information about which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares the information about which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares the information about which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>Funding Sources</strong></h1><p>PayPal only shares which of your funding sources are available for use.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Future Payment Agreement</strong></h1><p>To make sure your PayPal account can be charged in future, this app may simulate a small test transaction but no money will be transferred.</p><p>Your default funding source (your PayPal balance, linked bank account, debit or credit card, in that order) will be used to pay for PayPal purchases. Please note, if your default funding source doesn\u2019t have enough funds to cover the purchase, your bank or card provider may charge you a fee.</p><p>To cancel this agreement, log in to your PayPal account and go to <strong>Profile</strong> then click <strong>My Settings</strong> and <strong>Change</strong> beside \u201cLog in with PayPal.\u201d</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Future Payment Agreement</strong></h1><p>To make sure your PayPal account can be charged in the future, this app may simulate a small test transaction but no money will be transferred.</p><p>Your PayPal balance or primary debit or credit card will be used to pay for PayPal purchases.</p><p>To cancel this agreement, log in to your PayPal account and go to <strong>Profile</strong> &gt; <strong>My Settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Future Payment Agreement</strong></h1><p>To make sure your PayPal Account can be charged in the future, this app may simulate a small test transaction but no payment will be transferred.</p><p>Your default funding source will be used to pay for PayPal purchases.</p><p>To cancel this agreement, log in to your PayPal Account, go to <strong>Profile</strong> &gt; <strong>Settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Future Payment Agreement</strong></h1><p>Your default funding source will be used to pay for future PayPal payments from this merchant.</p><p>To cancel this agreement, log in to your PayPal account, go to <strong>Profile</strong> &gt; <strong>My Settings</strong> &gt; <strong>Log in with PayPal</strong> and remove this merchant from the list.</p><p>The Recurring Payment section of the <a href=\'%s\'>PayPal User Agreement</a> shall apply.</p><p>To make sure payments work with your PayPal account, this app may simulate a small test transaction, but no money will be transferred for this.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Future Payment Authorisation</strong></h1><p>To make sure your PayPal account can be charged in the future, this app may simulate a small test transaction but no payment will be transferred.</p><p>Your default funding source will be used to pay for PayPal purchases.</p><p>To cancel this authorisation, log in to your PayPal account, go to <strong>Profile</strong> &gt; <strong>My account settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p><p>Please see the \u201cPre-approved Payments\u201d section of the <a href=\'%s\'>PayPal User Agreement</a> for more information.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Future Payment Authorisation</strong></h1><p>To make sure your PayPal account can be charged in the future, this app may simulate a small test transaction but no payment will be transferred.</p><p>Your default funding source will be used to pay for PayPal purchases.</p><p>To cancel this authorisation, log in to your PayPal account, go to <strong>Profile</strong> &gt; <strong>My account settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p><p>Please see the \u201cPre-approved Payments\u201d section of the <a href=\'%s\'>PayPal User Agreement</a> for more information.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Future Payment Agreement</strong></h1><p>To make sure your PayPal account can be charged in the future, this app may simulate a small test transaction but no money will be transferred.</p><p>Your PayPal balance or primary debit or credit card will be used to pay for PayPal purchases.</p><p>To cancel this agreement, log in to your PayPal account and go to <strong>Profile</strong> &gt; <strong>My Settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Future Payment Authorisation</strong></h1><p>To make sure your PayPal account can be charged in the future, this app may simulate a small test transaction but no payment will be transferred.</p><p>Your default funding source will be used to pay for PayPal purchases.</p><p>To cancel this authorisation, log in to your PayPal account, go to <strong>Profile</strong> &gt; <strong>My account settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p><p>Please see the \u201cPre-approved Payments\u201d section of the <a href=\'%s\'>PayPal User Agreement</a> for more information.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Future Payment Authorisation</strong></h1><p>To make sure your PayPal account can be charged in the future, this app may simulate a small test transaction but no payment will be transferred.</p><p>Your default funding source will be used to pay for PayPal purchases.</p><p>To cancel this authorisation, log in to your PayPal account, go to <strong>Profile</strong> &gt; <strong>My account settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p><p>Please see the \u201cPre-approved Payments\u201d section of the <a href=\'%s\'>PayPal User Agreement</a> for more information.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Future Payment Authorisation</strong></h1><p>To make sure your PayPal account can be charged in the future, this app may simulate a small test transaction but no payment will be transferred.</p><p>Your default funding source will be used to pay for PayPal purchases.</p><p>To cancel this authorisation, log in to your PayPal account, go to <strong>Profile</strong> &gt; <strong>My account settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p><p>Please see the \u201cPre-approved Payments\u201d section of the <a href=\'%s\'>PayPal User Agreement</a> for more information.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Future Payment Agreement</strong></h1><p>PayPal will first use your PayPal balance to pay for your purchase. If that doesn\u2019t cover your total, your bank account, PayPal Credit, debit card, credit card, and/or eCheque will be used in that order.</p><p>To cancel this agreement, go to www.paypal.co.uk <strong>Profile</strong> &gt; <strong>My Settings</strong> &gt; <strong>Log In with PayPal</strong> and remove this merchant from the list.</p><p>A small payment authorisation may be required to make sure your PayPal account can be charged in the future. The authorisation will be voided and you won\u2019t be charged.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Log In with PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Log In with PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the partner.</p><p>To withdraw consent, log in to your PayPal account and click on the gear icon. Go to <strong>Security</strong>, select <strong>Log In with PayPal</strong> and remove this partner.</p><p>PayPal is not responsible for any actions or errors on the part of the partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Log in with PayPal</strong> options under <strong>Profile</strong> settings and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in to your PayPal account then go to <strong>Log In with PayPal</strong> options under your <strong>Profile</strong> settings and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the partner.</p><p>To withdraw consent, log in to your PayPal account and click on the gear icon. Go to <strong>Security</strong>, select <strong>Log In with PayPal</strong> and remove this partner.</p><p>PayPal is not responsible for any actions or errors on the part of the partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the partner.</p><p>To withdraw consent, log in to your PayPal account and click on the gear icon. Go to <strong>Security</strong>, select <strong>Log In with PayPal</strong> and remove this partner.</p><p>PayPal is not responsible for any actions or errors on the part of the partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in to your PayPal account then go to <strong>Log In with PayPal</strong> options under <strong>Profile</strong> settings and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in to your PayPal account, click on the gear icon at the top right corner, choose <strong>Security</strong>, select <strong>Log In with PayPal</strong> and remove the merchant. If you\u2019re still using the classic website, go to <strong>My Profile</strong>, choose <strong>My Account Settings</strong>, select <strong>Log In with PayPal</strong> and remove the merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the partner.</p><p>To withdraw consent, log in to your PayPal account, then under <strong>Profile</strong> settings go to <strong>Log in with PayPal</strong> and remove this partner.</p><p>PayPal is not responsible for any actions or errors on the part of the partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.it then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in to your PayPal account then go to <strong>Log In with PayPal</strong> options under your <strong>Profile</strong> settings and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in to your PayPal account then go to <strong>Log In with PayPal</strong> options under <strong>Profile</strong> settings and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in to your PayPal account then go to <strong>Log In with PayPal</strong> options under your <strong>Profile</strong> settings and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the partner.</p><p>To withdraw consent, log in at paypal.ru, click on the gear icon at the top right corner, choose <strong>Security</strong> tab and in the <strong>Log In with PayPal</strong> option remove this partner.</p><p>PayPal is not responsible for any actions or errors on the part of the partner.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in to your PayPal account then go to <strong>Log In with PayPal</strong> options under <strong>Profile</strong> settings and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com.tr click on the gear icon at the top right corner, choose <strong>Security</strong> tab and in the <strong>Log In with PayPal</strong> option remove this partner.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Log In with PayPal</strong> options under <strong>Profile</strong> settings and remove this merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Any relevant transaction details will be shared with the merchant.</p><p>To withdraw consent, log in at paypal.com then go to <strong>Profile</strong>, <strong>Security</strong>, find the <strong>Log In with PayPal</strong> and remove this merchant.</p><p>PayPal is not responsible for any actions or errors on the part of the merchant.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "Cart item amounts total does not match sale amount."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "This authorisation has already been completed."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "Authorisation is in a state that cannot be voided."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "Authorisation has expired."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "The requested authorisation ID does not exist."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "Authorisation has been voided."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "Can only reauthorise the original authorisation, not a reauthorisation."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "Reauthorisation is not allowed within the honour period."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "The amount exceeds the allowable limit."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "Cannot access saved card details."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "The card details are invalid. Please correct and submit again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "Card declined."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "Currency of capture must be the same as currency of authorisation."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "This currency is not currently supported by PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "Card has expired"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "The information for this card is no longer on file.\nPlease submit again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "Feature is unsupported for this vendor."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "This transaction has already been partially refunded."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "Immediate pay is not supported for the Intent passed."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "Your selected funding source was not accepted. Please choose a different source."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "Buyer cannot pay \u2013 insufficient funds."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "That account number does not exist."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "Transaction refused because of an invalid argument"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Invalid town/city/postcode combination."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "This transaction cannot be processed due to an invalid facilitator configuration."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "System error (invalid Payer ID). Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "Vendor account does not have a confirmed email address."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "This vendor cannot receive payments at this time."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "Vendor account does not have a confirmed email address."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "This vendor cannot receive payments at this time."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Your account is locked or closed."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "Your account has been limited."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "You cannot pay for this transaction with PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "Billing address is required for non-PayPal credit card transactions."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "Cannot access saved card details."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "Payment approval has expired."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "The payment has expired."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "Payer has not approved payment."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "PayPal request ID is invalid. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "This request is invalid due to the current state of the payment."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "No permission for the requested operation."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "The requested refund exceeds the amount of the original transaction."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "This transaction is too old to refund."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "No more reauthorisations for this authorisation are allowed."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "This transaction has already been refunded."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "The amount exceeds the allowable limit."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "The transaction was refused."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "The transaction was refused."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "Merchant profile preference is set to automatically refuse certain transactions."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "Your country is unsupported."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "The payment information is invalid. Please correct and submit again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "Order has already been voided or completed, or has expired."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "Maximum number of allowed authorisations for the order has been reached."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "Order has been voided."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "Order is in a state which prevents voiding."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "The merchant does not accept payments of this type."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "Currency not supported for card type."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Card type not supported."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Error encountered while adding delivery address to PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Duplicate transaction."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "The delivery address provided is not valid."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "There was a problem setting up this payment. Please visit the PayPal website to check your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "There was a problem setting up this payment - your card has expired. Please visit the PayPal website to check your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "There was a problem setting up this payment - instant payment required, such as a credit card. Please visit the PayPal website to check your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "There was a problem setting up this payment - card must be confirmed. Please visit the PayPal website to check your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "There was a problem setting up this payment - this app requires that your account include a phone number. Please visit the PayPal website to check your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "There was a problem setting up this payment - account needs a valid funding source, such as a bank account or payment card. Please visit the PayPal website to check your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "There was a problem setting up this payment - your balance is negative. Please visit the PayPal website to check your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "There was a problem setting up this payment - your sending limit has been reached. Please visit the PayPal website to check your account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Declined due to risk."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Client not authorised."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Client not authorised."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Incorrect username/password. Please try again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "Your PayPal account has been temporarily locked. Please try again later, or go to www.paypal.com to immediately unlock your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "Too many failed login attempts. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "An error has occurred."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "Request not authorised."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "Request not authorised."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "An error has occurred."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "Request not authorised."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "System error. Please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "Your login cannot be completed at this time. Please try again later, or go to www.paypal.com to address any security concerns with your PayPal account."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    const-string v1, "account_locked_generate_challenge_limit_exceeded"

    const-string v2, "Too many login attempts. Please try again later or contact PayPal for help."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "en_GB"

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    check-cast p1, Lcom/paypal/android/sdk/fs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/paypal/android/sdk/n;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2d
    return-object v0

    :cond_2e
    sget-object v0, Lcom/paypal/android/sdk/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2d
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
