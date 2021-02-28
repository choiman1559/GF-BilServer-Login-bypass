.class public final Lcom/paypal/android/sdk/r;
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

    sput-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->a:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05e1\u05db\u05dd \u05d5\u05e9\u05dc\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->b:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d5\u05d0\u05d7\u05e8\u05d9\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->c:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d0\u05d9\u05de\u05d5\u05ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->d:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d7\u05d6\u05e8\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->e:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d2\u05d9\u05d1\u05d5\u05d9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->f:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->g:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d0\u05de\u05e8\u05d9\u05e7\u05df \u05d0\u05e7\u05e1\u05e4\u05e8\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->h:Lcom/paypal/android/sdk/fs;

    const-string v2, "Carta Aura\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->i:Lcom/paypal/android/sdk/fs;

    const-string v2, "Carte Aurore\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->j:Lcom/paypal/android/sdk/fs;

    const-string v2, "Carta Prepagata PayPal\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->k:Lcom/paypal/android/sdk/fs;

    const-string v2, "Carte Bancaire\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->l:Lcom/paypal/android/sdk/fs;

    const-string v2, "Cofinoga\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->m:Lcom/paypal/android/sdk/fs;

    const-string v2, "Delta\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->n:Lcom/paypal/android/sdk/fs;

    const-string v2, "Discover\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->o:Lcom/paypal/android/sdk/fs;

    const-string v2, "Electron\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->p:Lcom/paypal/android/sdk/fs;

    const-string v2, "JCB\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->q:Lcom/paypal/android/sdk/fs;

    const-string v2, "Maestro\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->r:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05d0\u05e1\u05d8\u05e8\u05e7\u05d0\u05e8\u05d3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->s:Lcom/paypal/android/sdk/fs;

    const-string v2, "Postepay\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->t:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u200e4 \u00e9toiles\u200e\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->u:Lcom/paypal/android/sdk/fs;

    const-string v2, "Tarjeta Aurora\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->v:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d5\u05d9\u05d6\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->w:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05e0\u05d4 \u05e9\u05d9\u05d8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->x:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e2\u05d5\u05f4\u05e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->y:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d1\u05d5\u05d3\u05e7 \u05de\u05db\u05e9\u05d9\u05e8 \u05d6\u05d4\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->z:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e0\u05e7\u05d4 \u05e4\u05e8\u05d8\u05d9 \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->A:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d0\u05e9\u05e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->B:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d0\u05dd \u05d0\u05ea\u05d4 \u05d1\u05d8\u05d5\u05d7 \u05e9\u05d0\u05ea\u05d4 \u05e8\u05d5\u05e6\u05d4 \u05dc\u05d4\u05e1\u05d9\u05e8 \u05d0\u05ea \u05e4\u05e8\u05d8\u05d9 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05e9\u05dc\u05da?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->C:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d7\u05d9\u05d9\u05d1 \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->D:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d0\u05dd \u05d0\u05ea\u05d4 \u05d1\u05d8\u05d5\u05d7 \u05e9\u05d0\u05ea\u05d4 \u05e8\u05d5\u05e6\u05d4 \u05dc\u05e6\u05d0\u05ea \u05de-PayPal\u200f?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->E:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dc\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->F:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05e1\u05db\u05d9\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->G:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05ea\u05d0\u05e8\u05d9\u05da \u05e4\u05ea\u05d9\u05d7\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->H:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05e6\u05d1 \u05d7\u05e9\u05d1\u05d5\u05df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->I:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e1\u05d5\u05d2 \u05d7\u05e9\u05d1\u05d5\u05df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->J:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05db\u05ea\u05d5\u05d1\u05ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->K:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d8\u05d5\u05d5\u05d7 \u05d2\u05d9\u05dc\u05d9\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->L:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d9\u05d3\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->M:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05db\u05ea\u05d5\u05d1\u05ea \u05d0\u05d9\u05de\u05d9\u05d9\u05dc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->N:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dd \u05de\u05dc\u05d0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->O:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05d9\u05df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->P:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05e4\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->Q:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d0\u05d6\u05d5\u05e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->R:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d8\u05dc\u05e4\u05d5\u05df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->S:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d0\u05d6\u05d5\u05e8 \u05d6\u05de\u05df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->T:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea \u05d4\u05e4\u05e8\u05d8\u05d9\u05dd \u05d4\u05d1\u05d0\u05d9\u05dd: \u200e%s\u200f."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->U:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05e9\u05ea\u05de\u05e9 \u05d1-Express Checkout\u200f."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->V:Lcom/paypal/android/sdk/fs;

    const-string v2, "%s \u05de\u05d1\u05e7\u05e9 \u05db\u05d9:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->W:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05e9\u05d9\u05d8\u05d5\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d5\u05ea \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->X:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05e4\u05e2\u05dc \u05ea\u05e6\u05d5\u05d2\u05d4 \u05e9\u05dc \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d5\u05ea \u05e9\u05dc\u05da \u05e9\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc\u05da \u05dc\u05d1\u05d7\u05d5\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->Y:Lcom/paypal/android/sdk/fs;

    const-string v2, "<a href=\'%1$s\'>\u05d0\u05e9\u05e8 \u05d7\u05d9\u05d5\u05d1\u05d9\u05dd</a> \u05e2\u05d1\u05d5\u05e8 \u05e7\u05e0\u05d9\u05d5\u05ea \u05e2\u05ea\u05d9\u05d3\u05d9\u05d5\u05ea \u05d0\u05e6\u05dc \u200e%2$s \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f. \u05d4\u05d5\u05e8\u05d9\u05ea \u05dc-PayPal \u05dc\u05e9\u05dc\u05dd \u05d0\u05ea \u05db\u05dc \u05d4\u05e1\u05db\u05d5\u05de\u05d9\u05dd \u05e9-\u200e%3$s \u05de\u05d1\u05e7\u05e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->Z:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc\u05d5 \u05dc\u05d4\u05d5\u05e1\u05d9\u05e3 \u05d5\u05dc\u05e0\u05d4\u05dc \u05d0\u05ea \u05db\u05e8\u05d8\u05d9\u05e1 \u05d4\u05de\u05d5\u05e2\u05d3\u05d5\u05df \u05e9\u05dc\u05d5 \u05d1\u2018\u05d0\u05e8\u05e0\u05e7\u2018 \u05e9\u05d1\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aa:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05ea\u05e1\u05db\u05d9\u05dd \u05dc<a href=\'%2$s\'>\u05de\u05d3\u05d9\u05e0\u05d9\u05d5\u05ea \u05d4\u05e4\u05e8\u05d8\u05d9\u05d5\u05ea</a> \u05d5<a href=\'%3$s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9</a> \u05e9\u05dc %1$s\u200f."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ab:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc\u05d5 <a href=\'%1$s\'>\u05dc\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ac:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc\u05d5 <a href=\'%1$s\'>\u05dc\u05e9\u05dc\u05d5\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ad:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05e1\u05db\u05de\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ae:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d0\u05d9\u05de\u05d9\u05d9\u05dc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->af:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e4\u05e8\u05d8\u05d9\u05dd \u05de\u05d3\u05d5\u05de\u05d9\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ag:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u200fSandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ah:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05ea\u05d0\u05e8\u05d9\u05da \u05ea\u05e4\u05d5\u05d2\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ai:Lcom/paypal/android/sdk/fs;

    const-string v2, "<h1><strong>\u05d3\u05e8\u05db\u05d9 \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05e9\u05d9\u05d8\u05d5\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d5\u05ea \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aj:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05db\u05d7\u05ea \u05d0\u05ea \u05d4\u05e1\u05d9\u05e1\u05de\u05d4?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ak:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de-"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->al:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05db\u05d9\u05e6\u05d3 \u05ea\u05e8\u05e6\u05d4 \u05dc\u05e9\u05dc\u05dd \u05e2\u05d1\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9\u05d9\u05dd \u05dc-%1$s\u200f?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->am:Lcom/paypal/android/sdk/fs;

    const-string v2, "<h1><strong>\u05d4\u05e1\u05db\u05dd \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05ea\u05e9\u05de\u05e9 \u05e2\u05d1\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9\u05d9\u05dd \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal \u05d0\u05e6\u05dc \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d4\u05e1\u05db\u05dd \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p><p>\u05d4\u05de\u05e7\u05d8\u05e2 \u2018\u05d4\u05d5\u05e8\u05d0\u05ea \u05e7\u05d1\u05e2\u2018 \u05e9\u05dc <a href=\'%s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9 \u05e9\u05dc PayPal</a> \u05d9\u05d7\u05d5\u05dc.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05d4\u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e9\u05dc\u05da \u05d9\u05e2\u05d1\u05d3\u05d5 \u05e2\u05dd \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05db\u05e1\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->an:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05d4 \u05e4\u05e0\u05d9\u05de\u05d9\u05ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ao:Lcom/paypal/android/sdk/fs;

    const-string v2, "<p>\u05e2\u05dc-\u05d9\u05d3\u05d9 \u05dc\u05d7\u05d9\u05e6\u05d4 \u05e2\u05dc \u05d4\u05dc\u05d7\u05e6\u05df \u05dc\u05de\u05d8\u05d4, \u05d0\u05e0\u05d9 \u05de\u05e1\u05db\u05d9\u05dd \u05d1\u05d6\u05d0\u05ea \u05dc\u05ea\u05e0\u05d0\u05d9 <a href=\'%1$s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9 \u05e9\u05dc PayPal</a> \u05d5\u05de\u05e6\u05d4\u05d9\u05e8 \u05e9\u05d0\u05e0\u05d9 \u05e4\u05d5\u05e2\u05dc \u05d1\u05d4\u05ea\u05d0\u05dd \u05dc\u05d7\u05d5\u05e7\u05d9\u05dd \u05d5\u05dc\u05ea\u05e7\u05e0\u05d5\u05ea \u05d1\u05d9\u05e4\u05df, \u05db\u05d5\u05dc\u05dc \u05e1\u05e0\u05e7\u05e6\u05d9\u05d5\u05ea \u05e0\u05d2\u05d3 \u05ea\u05e9\u05dc\u05d5\u05dd \u05dc\u05e6\u05e4\u05d5\u05df \u05e7\u05d5\u05e8\u05d9\u05d0\u05d4 \u05d5\u05d0\u05d9\u05e8\u05df, \u05d1\u05d4\u05ea\u05d0\u05dd \u05dc-<a href=\'%2$s\'>Foreign Exchange and Foreign Trade Act</a>, \u05dc\u05d4\u05e9\u05dc\u05de\u05ea \u05d4\u05e2\u05e1\u05e7\u05d4.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ap:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05db\u05e0\u05d9\u05e1\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aq:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ar:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d9\u05e6\u05d9\u05d0\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->as:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d9\u05e6\u05d9\u05d0\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->at:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d0\u05d9\u05e9\u05d5\u05e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->au:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e1\u05d9\u05e1\u05de\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->av:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dc\u05dd \u05dc\u05d0\u05d7\u05e8 \u05d4\u05de\u05e1\u05d9\u05e8\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aw:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dc\u05dd \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ax:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dc\u05dd \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ay:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d9\u05ea\u05e8\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->az:Lcom/paypal/android/sdk/fs;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aA:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d8\u05dc\u05e4\u05d5\u05df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aB:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e7\u05d5\u05d3 \u05e1\u05d5\u05d3\u05d9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aC:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05d9\u05d8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05de\u05d5\u05e2\u05d3\u05e4\u05ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aD:Lcom/paypal/android/sdk/fs;

    const-string v2, "PayPal \u05de\u05d2\u05d9\u05e0\u05d4 \u05e2\u05dc \u05d4<a href=\'%s\'>\u05e4\u05e8\u05d8\u05d9\u05d5\u05ea</a> \u05d5\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05e4\u05d9\u05e0\u05e0\u05e1\u05d9 \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aE:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e2\u05d9\u05d1\u05d5\u05d3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aF:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d6\u05db\u05d5\u05e8 \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aG:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aH:Lcom/paypal/android/sdk/fs;

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d4\u05e9\u05d5\u05ea\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aI:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d7\u05d9\u05e1\u05db\u05d5\u05df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aJ:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dc\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aK:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d9\u05d9\u05ea\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d9\u05e6\u05d9\u05e8\u05ea \u05e7\u05e9\u05e8 \u05e2\u05dd \u05d4\u05e9\u05e8\u05ea\u05d9\u05dd \u05e9\u05dc PayPal\u200f. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aL:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d9\u05db\u05e0\u05e1 \u05e9\u05d5\u05d1 \u05dc-PayPal\u200f."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aM:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e4\u05d2 \u05ea\u05d5\u05e7\u05e3 \u05d4\u05d4\u05e4\u05e2\u05dc\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aN:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05db\u05ea\u05d5\u05d1\u05ea \u05dc\u05de\u05e9\u05dc\u05d5\u05d7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aO:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d7\u05d3\u05e9 \u05d1-PayPal\u200f? \u05d4\u05d9\u05e8\u05e9\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aP:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d9\u05e9\u05d0\u05e8 \u05de\u05d7\u05d5\u05d1\u05e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aQ:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea (%s\u200f). \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aR:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aS:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df, \u05de\u05e9\u05d5\u05dd \u05e9\u05d0\u05d9\u05de\u05d5\u05ea \u05d1\u05e9\u05e0\u05d9 \u05e9\u05dc\u05d1\u05d9\u05dd \u05d4\u05d5\u05e4\u05e2\u05dc \u05e2\u05d1\u05d5\u05e8 \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aT:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e7\u05d5\u05d3 \u05d0\u05d1\u05d8\u05d7\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aU:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dc\u05d7 \u05d4\u05d5\u05d3\u05e2\u05ea \u05d8\u05e7\u05e1\u05d8 \u05dc\u05d8\u05dc\u05e4\u05d5\u05df \u05e9\u05dc\u05da. \u05d4\u05e7\u05d5\u05d3 \u05d1\u05df \u05e9\u05e9 \u05d4\u05e1\u05e4\u05e8\u05d5\u05ea \u05e9\u05ea\u05e7\u05d1\u05dc \u05d9\u05d9\u05e9\u05d0\u05e8 \u05d1\u05ea\u05d5\u05e7\u05e3 \u05dc\u05de\u05e9\u05da 5 \u05d3\u05e7\u05d5\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aV:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05d5\u05dc\u05d7 \u05d8\u05e7\u05e1\u05d8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aW:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d6\u05df \u05d0\u05ea \u05e7\u05d5\u05d3 \u05d4\u05d0\u05d1\u05d8\u05d7\u05d4 \u05d1\u05df \u05e9\u05e9 \u05d4\u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aX:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05e1\u05e4\u05e8 \u05d4\u05d8\u05dc\u05e4\u05d5\u05df \u05d4\u05e0\u05d9\u05d9\u05d3 \u05e9\u05dc\u05da"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aY:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dc\u05d7 \u05d8\u05e7\u05e1\u05d8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->aZ:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05dc\u05d7 \u05d8\u05e7\u05e1\u05d8 \u05e9\u05d5\u05d1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->ba:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df, \u05de\u05e9\u05d5\u05dd \u05e9\u05d0\u05d9\u05de\u05d5\u05ea \u05d1\u05e9\u05e0\u05d9 \u05e9\u05dc\u05d1\u05d9\u05dd \u05d4\u05d5\u05e4\u05e2\u05dc \u05e2\u05d1\u05d5\u05e8 \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d4\u05e4\u05e2\u05d9\u05dc \u05d0\u05ea \u05de\u05e4\u05ea\u05d7 \u05d4\u05d0\u05d1\u05d8\u05d7\u05d4 \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bb:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05e9\u05dc\u05dd \u05de\u05de\u05db\u05e9\u05d9\u05e8 \u05d6\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bc:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05db\u05e9\u05d9\u05e8 \u05d1\u05dc\u05ea\u05d9-\u05de\u05d5\u05e8\u05e9\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bd:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05e9\u05dc\u05dd \u05dc\u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 (\u05de\u05d6\u05d4\u05d4 \u05dc\u05e7\u05d5\u05d7 \u05d1\u05dc\u05ea\u05d9-\u05d7\u05d5\u05e7\u05d9)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->be:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d1\u05dc\u05ea\u05d9-\u05d7\u05d5\u05e7\u05d9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bf:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05e2\u05d9\u05d1\u05d5\u05d3 \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bg:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05e7\u05d5\u05e8 \u05d1\u05dc\u05ea\u05d9 \u05de\u05d6\u05d5\u05d4\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bh:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05e6\u05d8\u05e2\u05e8\u05d9\u05dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bi:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d4\u05d6\u05de\u05e0\u05d4 \u05e9\u05dc\u05da"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bj:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05de\u05db\u05e9\u05d9\u05e8 \u05d6\u05d4 \u05dc\u05d0 \u05d9\u05db\u05d5\u05dc \u05dc\u05d9\u05e6\u05d5\u05e8 \u05e7\u05e9\u05e8 \u05e2\u05dd PayPal \u05de\u05e9\u05d5\u05dd \u05e9\u05d2\u05d9\u05e8\u05e1\u05d4 \u05d6\u05d5 \u05e9\u05dc \u05d0\u05e0\u05d3\u05e8\u05d5\u05d0\u05d9\u05d3 \u05d9\u05e9\u05e0\u05d4 \u05de\u05d3\u05d9. \u05e9\u05d3\u05e8\u05d2 \u05d0\u05ea \u05d2\u05d9\u05e8\u05e1\u05ea \u05d4\u05d0\u05e0\u05d3\u05e8\u05d5\u05d0\u05d9\u05d3 \u05d0\u05d5 \u05e0\u05e1\u05d4 \u05de\u05db\u05e9\u05d9\u05e8 \u05d7\u05d3\u05e9 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bk:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05dc\u05d4\u05e1\u05d9\u05e8 \u05d0\u05ea \u05d4\u05db\u05e8\u05d8\u05d9\u05e1?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bl:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d4\u05e1\u05db\u05de\u05d4 \u05e0\u05db\u05e9\u05dc\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bm:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d7\u05d9\u05d1\u05d5\u05e8 \u05e0\u05db\u05e9\u05dc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bn:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05db\u05e0\u05d9\u05e1\u05d4 \u05e0\u05db\u05e9\u05dc\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bo:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d9\u05db\u05e0\u05e1 \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea \u05e1\u05d9\u05e1\u05de\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bp:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05d9\u05db\u05e0\u05e1 \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea \u05e7\u05d5\u05d3 \u05e1\u05d5\u05d3\u05d9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bq:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05de\u05ea\u05df \u05e8\u05d2\u05e2 \u05d0\u05d7\u05d3\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->br:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e0\u05db\u05e9\u05dc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bs:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e1\u05e8\u05d9\u05e7\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bt:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e7\u05d5\u05d3 \u05d0\u05d1\u05d8\u05d7\u05d4 \u05e9\u05d2\u05d5\u05d9. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bu:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fs;->bv:Lcom/paypal/android/sdk/fs;

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "\u05e9\u05ea\u05e3 \u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea \u05d4\u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "\u05e9\u05ea\u05e3 \u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "\u05e9\u05ea\u05e3 \u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "\u05e9\u05ea\u05e3 \u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05e9\u05d9\u05d8\u05d5\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d5\u05ea \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05d9\u05ea\u05dd \u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea \u05d4\u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "\u05e9\u05ea\u05e3 \u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05e9\u05d9\u05d8\u05d5\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d5\u05ea \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea \u05d4\u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d9\u05dd \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "\u05e9\u05ea\u05e3 \u05de\u05d9\u05d3\u05e2 \u05e2\u05dc <a href=\'%1$s\'>\u05e9\u05d9\u05d8\u05d5\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d4\u05de\u05e7\u05d5\u05e9\u05e8\u05d5\u05ea \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "\u05e9\u05ea\u05e3 \u05d0\u05ea <a href=\'%1$s\'>\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd</a> \u05de\u05d8\u05e2\u05de\u05da \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>\u05d0\u05e9\u05e8 \u05d7\u05d9\u05d5\u05d1\u05d9\u05dd</a> \u05e2\u05d1\u05d5\u05e8 \u05e7\u05e0\u05d9\u05d5\u05ea \u05e2\u05ea\u05d9\u05d3\u05d9\u05d5\u05ea \u05d0\u05e6\u05dc \u200e%2$s \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f. \u05d4\u05d5\u05e8\u05d9\u05ea \u05dc-PayPal \u05dc\u05e9\u05dc\u05dd \u05d0\u05ea \u05db\u05dc \u05d4\u05e1\u05db\u05d5\u05de\u05d9\u05dd \u05e9-\u200e%3$s \u05de\u05d1\u05e7\u05e9.</p><p>\u05dc\u05e4\u05e8\u05d8\u05d9\u05dd \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd, \u05e2\u05d9\u05d9\u05df \u05d1<a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05d5\u05e8\u05d0\u05d5\u05ea \u05d4\u05e7\u05d1\u05e2 \u05d5\u05d4\u05d7\u05d9\u05d5\u05d1 \u05e9\u05dc PayPal\u200f</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>\u05d0\u05e9\u05e8 \u05d7\u05d9\u05d5\u05d1\u05d9\u05dd</a> \u05e2\u05d1\u05d5\u05e8 \u05e7\u05e0\u05d9\u05d5\u05ea \u05e2\u05ea\u05d9\u05d3\u05d9\u05d5\u05ea \u05d0\u05e6\u05dc \u200e%2$s \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f. \u05d4\u05d5\u05e8\u05d9\u05ea \u05dc-PayPal \u05dc\u05e9\u05dc\u05dd \u05d0\u05ea \u05db\u05dc \u05d4\u05e1\u05db\u05d5\u05de\u05d9\u05dd \u05e9-\u200e%3$s \u05de\u05d1\u05e7\u05e9.</p><p>\u05dc\u05e4\u05e8\u05d8\u05d9\u05dd \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd, \u05e2\u05d9\u05d9\u05df \u05d1<a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05d5\u05e8\u05d0\u05d5\u05ea \u05d4\u05e7\u05d1\u05e2 \u05d5\u05d4\u05d7\u05d9\u05d5\u05d1 \u05e9\u05dc PayPal\u200f</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>\u05d0\u05e9\u05e8 \u05d7\u05d9\u05d5\u05d1\u05d9\u05dd</a> \u05e2\u05d1\u05d5\u05e8 \u05e7\u05e0\u05d9\u05d5\u05ea \u05e2\u05ea\u05d9\u05d3\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f. \u05d0\u05ea\u05d4 \u05de\u05e2\u05e0\u05d9\u05e7 \u05dc-PayPal \u05d0\u05d9\u05e9\u05d5\u05e8 \u05dc\u05e9\u05dc\u05dd \u05d0\u05ea \u05db\u05dc \u05d4\u05e1\u05db\u05d5\u05de\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>\u05d0\u05e9\u05e8 \u05d7\u05d9\u05d5\u05d1\u05d9\u05dd</a> \u05e2\u05d1\u05d5\u05e8 \u05e7\u05e0\u05d9\u05d5\u05ea \u05e2\u05ea\u05d9\u05d3\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f. \u05d0\u05ea\u05d4 \u05de\u05e2\u05e0\u05d9\u05e7 \u05dc-PayPal \u05d0\u05d9\u05e9\u05d5\u05e8 \u05dc\u05e9\u05dc\u05dd \u05d0\u05ea \u05db\u05dc \u05d4\u05e1\u05db\u05d5\u05de\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>\u05d0\u05e9\u05e8 \u05d7\u05d9\u05d5\u05d1\u05d9\u05dd</a> \u05e2\u05d1\u05d5\u05e8 \u05e7\u05e0\u05d9\u05d5\u05ea \u05e2\u05ea\u05d9\u05d3\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f. \u05d0\u05ea\u05d4 \u05de\u05e2\u05e0\u05d9\u05e7 \u05dc-PayPal \u05d0\u05d9\u05e9\u05d5\u05e8 \u05dc\u05e9\u05dc\u05dd \u05d0\u05ea \u05db\u05dc \u05d4\u05e1\u05db\u05d5\u05de\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "\u05d0\u05e9\u05e8 \u05de\u05e8\u05d0\u05e9 \u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9\u05d9\u05dd \u05de\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05dc\u05d9 \u05dc\u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc PayPal \u05d1\u05db\u05dc \u05e4\u05e2\u05dd. <a href=\'%1$s\'>\u05e8\u05d0\u05d4 \u05ea\u05e0\u05d0\u05d9\u05dd \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd</a>, \u05db\u05d5\u05dc\u05dc \u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d5\u05db\u05d9\u05e6\u05d3 \u05dc\u05d1\u05d8\u05dc \u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05d1\u05e7\u05e9 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05e9\u05dc\u05d5\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05e9\u05dc\u05d5\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05e9\u05dc\u05d5\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05e9\u05dc\u05d5\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05e9\u05dc\u05d5\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05e9\u05dc\u05d5\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "\u05ea\u05d0\u05e4\u05e9\u05e8 \u05dc-\u200e%2$s\u200e <a href=\'%1$s\'>\u05dc\u05e9\u05dc\u05d5\u05d7 \u05ea\u05e9\u05dc\u05d5\u05dd</a> \u05d1\u05e9\u05de\u05da, \u05e2\u05d3 \u05e9\u05ea\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>\u05e9\u05d9\u05d8\u05d5\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd</strong></h1><p>\u05d4\u05de\u05d9\u05d3\u05e2 \u05d4\u05d9\u05d7\u05d9\u05d3 \u05e9-PayPal \u05de\u05e9\u05ea\u05e4\u05ea \u05d4\u05d5\u05d0 \u05d0\u05d9\u05dc\u05d5 \u05de\u05d4\u05de\u05e7\u05d5\u05e8\u05d5\u05ea \u05d4\u05db\u05e1\u05e4\u05d9\u05d9\u05dd \u05e9\u05dc\u05da \u05d6\u05de\u05d9\u05e0\u05d9\u05dd \u05dc\u05e9\u05d9\u05de\u05d5\u05e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>\u05d4\u05e1\u05db\u05dd \u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9\u05d9\u05dd</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05db\u05e1\u05e3.</p><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da (\u05d9\u05ea\u05e8\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05d7\u05e9\u05d1\u05d5\u05df \u05d1\u05e0\u05e7 \u05de\u05e7\u05d5\u05e9\u05e8 \u05d0\u05d5 \u05db\u05e8\u05d8\u05d9\u05e1 \u05d0\u05e9\u05e8\u05d0\u05d9, \u05d1\u05e1\u05d3\u05e8 \u05d4\u05d6\u05d4) \u05ea\u05e9\u05de\u05e9 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f. \u05e9\u05d9\u05dd \u05dc\u05d1, \u05d0\u05dd \u05d1\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05dc\u05d0 \u05d9\u05d4\u05d9\u05d4 \u05de\u05e1\u05e4\u05d9\u05e7 \u05db\u05e1\u05e3 \u05dc\u05db\u05d9\u05e1\u05d5\u05d9 \u05d4\u05e7\u05e0\u05d9\u05d9\u05d4, \u05d4\u05d1\u05e0\u05e7 \u05e9\u05d1\u05d5 \u05de\u05ea\u05e0\u05d4\u05dc \u05d7\u05e9\u05d1\u05d5\u05e0\u05da \u05d0\u05d5 \u05e1\u05e4\u05e7 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05e9\u05dc\u05da \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05d5\u05ea\u05da \u05d1\u05e2\u05de\u05dc\u05d4.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d4\u05e1\u05db\u05dd \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d5\u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, \u05dc\u05d0\u05d7\u05e8 \u05de\u05db\u05df \u05dc\u05d7\u05e5 \u05e2\u05dc <strong>\u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05e9\u05dc\u05d9</strong> \u05d5\u05e2\u05dc <strong>\u05e9\u05d9\u05e0\u05d5\u05d9</strong> \u05dc\u05e6\u05d3 \u2019\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal\u200f\u2018.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>\u05d4\u05e1\u05db\u05dd \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05db\u05e1\u05e3.</p><p>\u05d9\u05ea\u05e8\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d0\u05d5 \u05db\u05e8\u05d8\u05d9\u05e1 \u05d4\u05d0\u05e9\u05e8\u05d0\u05d9 \u05d4\u05e8\u05d0\u05e9\u05d9 \u05e9\u05dc\u05da \u05d9\u05e9\u05de\u05e9\u05d5 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d4\u05e1\u05db\u05dd \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>\u05d4\u05e1\u05db\u05dd \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd.</p><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05ea\u05e9\u05de\u05e9 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d4\u05e1\u05db\u05dd \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>\u05d4\u05e1\u05db\u05dd \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05ea\u05e9\u05de\u05e9 \u05e2\u05d1\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9\u05d9\u05dd \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal \u05d0\u05e6\u05dc \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d4\u05e1\u05db\u05dd \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p><p>\u05d4\u05de\u05e7\u05d8\u05e2 \u2018\u05d4\u05d5\u05e8\u05d0\u05ea \u05e7\u05d1\u05e2\u2018 \u05e9\u05dc <a href=\'%s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9 \u05e9\u05dc PayPal</a> \u05d9\u05d7\u05d5\u05dc.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05d4\u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e9\u05dc\u05da \u05d9\u05e2\u05d1\u05d3\u05d5 \u05e2\u05dd \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05db\u05e1\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>\u05d0\u05d9\u05e9\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd.</p><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05ea\u05e9\u05de\u05e9 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05d9\u05e9\u05d5\u05e8 \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p><p>\u05dc\u05e4\u05e8\u05d8\u05d9\u05dd \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd, \u05e2\u05d9\u05d9\u05df \u05d1\u05de\u05e7\u05d8\u05e2 \u2019\u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e9\u05d0\u05d5\u05e9\u05e8\u05d5 \u05de\u05e8\u05d0\u05e9\u2018 \u05d1<a href=\'%s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9 \u05e9\u05dc PayPal\u200f</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>\u05d0\u05d9\u05e9\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd.</p><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05ea\u05e9\u05de\u05e9 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05d9\u05e9\u05d5\u05e8 \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p><p>\u05dc\u05e4\u05e8\u05d8\u05d9\u05dd \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd, \u05e2\u05d9\u05d9\u05df \u05d1\u05de\u05e7\u05d8\u05e2 \u2019\u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e9\u05d0\u05d5\u05e9\u05e8\u05d5 \u05de\u05e8\u05d0\u05e9\u2018 \u05d1<a href=\'%s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9 \u05e9\u05dc PayPal\u200f</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>\u05d4\u05e1\u05db\u05dd \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05db\u05e1\u05e3.</p><p>\u05d9\u05ea\u05e8\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d0\u05d5 \u05db\u05e8\u05d8\u05d9\u05e1 \u05d4\u05d0\u05e9\u05e8\u05d0\u05d9 \u05d4\u05e8\u05d0\u05e9\u05d9 \u05e9\u05dc\u05da \u05d9\u05e9\u05de\u05e9\u05d5 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d4\u05e1\u05db\u05dd \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>\u05d0\u05d9\u05e9\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd.</p><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05ea\u05e9\u05de\u05e9 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05d9\u05e9\u05d5\u05e8 \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p><p>\u05dc\u05e4\u05e8\u05d8\u05d9\u05dd \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd, \u05e2\u05d9\u05d9\u05df \u05d1\u05de\u05e7\u05d8\u05e2 \u2019\u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e9\u05d0\u05d5\u05e9\u05e8\u05d5 \u05de\u05e8\u05d0\u05e9\u2018 \u05d1<a href=\'%s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9 \u05e9\u05dc PayPal\u200f</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>\u05d0\u05d9\u05e9\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd.</p><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05ea\u05e9\u05de\u05e9 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05d9\u05e9\u05d5\u05e8 \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p><p>\u05dc\u05e4\u05e8\u05d8\u05d9\u05dd \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd, \u05e2\u05d9\u05d9\u05df \u05d1\u05de\u05e7\u05d8\u05e2 \u2019\u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e9\u05d0\u05d5\u05e9\u05e8\u05d5 \u05de\u05e8\u05d0\u05e9\u2018 \u05d1<a href=\'%s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9 \u05e9\u05dc PayPal\u200f</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>\u05d0\u05d9\u05e9\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>\u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3, \u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05e2\u05e9\u05d5\u05d9 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d3\u05de\u05d9\u05d4 \u05e9\u05dc \u05e2\u05e1\u05e7\u05d4 \u05e7\u05d8\u05e0\u05d4 \u05dc\u05e6\u05d5\u05e8\u05da \u05d1\u05d3\u05d9\u05e7\u05d4, \u05d0\u05da \u05d1\u05e4\u05d5\u05e2\u05dc \u05dc\u05d0 \u05d9\u05d5\u05e2\u05d1\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd.</p><p>\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05dc\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05dc\u05da \u05ea\u05e9\u05de\u05e9 \u05dc\u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05d9\u05e9\u05d5\u05e8 \u05d6\u05d4, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p><p>\u05dc\u05e4\u05e8\u05d8\u05d9\u05dd \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd, \u05e2\u05d9\u05d9\u05df \u05d1\u05de\u05e7\u05d8\u05e2 \u2019\u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05e9\u05d0\u05d5\u05e9\u05e8\u05d5 \u05de\u05e8\u05d0\u05e9\u2018 \u05d1<a href=\'%s\'>\u05d4\u05e1\u05db\u05dd \u05d4\u05de\u05e9\u05ea\u05de\u05e9 \u05e9\u05dc PayPal\u200f</a>.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>\u05d4\u05e1\u05db\u05dd \u05ea\u05e9\u05dc\u05d5\u05dd \u05e2\u05ea\u05d9\u05d3\u05d9</strong></h1><p>PayPal \u05ea\u05e9\u05ea\u05de\u05e9 \u05ea\u05d7\u05d9\u05dc\u05d4 \u05d1\u05d9\u05ea\u05e8\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05db\u05d3\u05d9 \u05dc\u05e9\u05dc\u05dd \u05e2\u05d1\u05d5\u05e8 \u05d4\u05e7\u05e0\u05d9\u05d9\u05d4 \u05e9\u05dc\u05da. \u05d1\u05de\u05e7\u05e8\u05d4 \u05e9\u05d4\u05d9\u05ea\u05e8\u05d4 \u05d0\u05d9\u05e0\u05d4 \u05de\u05db\u05e1\u05d4 \u05d0\u05ea \u05d4\u05e1\u05db\u05d5\u05dd \u05d4\u05de\u05dc\u05d0, \u05d9\u05e2\u05e9\u05d4 \u05e9\u05d9\u05de\u05d5\u05e9 \u05d1\u05d7\u05e9\u05d1\u05d5\u05df \u05d4\u05d1\u05e0\u05e7, PayPal Credit, \u05db\u05e8\u05d8\u05d9\u05e1 \u05d4\u05d0\u05e9\u05e8\u05d0\u05d9 \u05d5/\u05d0\u05d5 \u05d4\u05de\u05d7\u05d0\u05d4 \u05d0\u05dc\u05e7\u05d8\u05e8\u05d5\u05e0\u05d9\u05ea \u05e9\u05dc\u05da, \u05d1\u05e1\u05d3\u05e8 \u05d4\u05d6\u05d4.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d4\u05e1\u05db\u05dd \u05d6\u05d4, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc www.paypal.co.il <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> &gt; <strong>\u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05e9\u05dc\u05d9</strong> &gt; <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05dc\u05d0\u05d7\u05e8 \u05de\u05db\u05df \u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4 \u05de\u05d4\u05e8\u05e9\u05d9\u05de\u05d4.</p><p>\u05d9\u05d9\u05ea\u05db\u05df \u05e9\u05d9\u05d9\u05d3\u05e8\u05e9 \u05d0\u05d9\u05e9\u05d5\u05e8 \u05ea\u05e9\u05dc\u05d5\u05dd \u05e7\u05d8\u05df \u05db\u05d3\u05d9 \u05dc\u05d5\u05d5\u05d3\u05d0 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d7\u05d9\u05d9\u05d1 \u05d0\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05e2\u05ea\u05d9\u05d3. \u05d4\u05d0\u05d9\u05e9\u05d5\u05e8 \u05d9\u05d1\u05d5\u05d8\u05dc \u05d5\u05d0\u05ea\u05d4 \u05dc\u05d0 \u05ea\u05d7\u05d5\u05d9\u05d1.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d4\u05e9\u05d5\u05ea\u05e3.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d5\u05dc\u05d7\u05e5 \u05e2\u05dc \u05e1\u05de\u05dc \u05d2\u05dc\u05d2\u05dc \u05d4\u05e9\u05d9\u05e0\u05d9\u05d9\u05dd. \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05d1\u05d7\u05e8 <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05e9\u05d5\u05ea\u05e3 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d4\u05e9\u05d5\u05ea\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d4\u05e9\u05d5\u05ea\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05e9\u05dc\u05da \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d4\u05e9\u05d5\u05ea\u05e3.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d5\u05dc\u05d7\u05e5 \u05e2\u05dc \u05e1\u05de\u05dc \u05d2\u05dc\u05d2\u05dc \u05d4\u05e9\u05d9\u05e0\u05d9\u05d9\u05dd. \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05d1\u05d7\u05e8 <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05e9\u05d5\u05ea\u05e3 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d4\u05e9\u05d5\u05ea\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d4\u05e9\u05d5\u05ea\u05e3.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d5\u05dc\u05d7\u05e5 \u05e2\u05dc \u05e1\u05de\u05dc \u05d2\u05dc\u05d2\u05dc \u05d4\u05e9\u05d9\u05e0\u05d9\u05d9\u05dd. \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05d1\u05d7\u05e8 <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05e9\u05d5\u05ea\u05e3 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d4\u05e9\u05d5\u05ea\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05dc\u05d7\u05e5 \u05e2\u05dc \u05e1\u05de\u05dc \u05d2\u05dc\u05d2\u05dc \u05d4\u05e9\u05d9\u05e0\u05d9\u05d9\u05dd \u05d1\u05e4\u05d9\u05e0\u05d4 \u05d4\u05d9\u05de\u05e0\u05d9\u05ea \u05d4\u05e2\u05dc\u05d9\u05d5\u05e0\u05d4, \u05d1\u05d7\u05e8 <strong>\u05de\u05e8\u05db\u05d6 \u05d4\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05d1\u05d7\u05e8 <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d0\u05ea \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7. \u05d0\u05dd \u05d0\u05ea\u05d4 \u05e2\u05d3\u05d9\u05d9\u05df \u05de\u05e9\u05ea\u05de\u05e9 \u05d1\u05d0\u05ea\u05e8 \u05d4\u05e7\u05dc\u05d0\u05e1\u05d9, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05d4\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc \u05e9\u05dc\u05d9</strong>, \u05d1\u05d7\u05e8 <strong>\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05d9</strong>, \u05d1\u05d7\u05e8 <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d0\u05ea \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d4\u05e9\u05d5\u05ea\u05e3.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d5\u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05e9\u05d5\u05ea\u05e3 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d4\u05e9\u05d5\u05ea\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.it, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05e9\u05dc\u05da \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05e9\u05dc\u05da \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d4\u05e9\u05d5\u05ea\u05e3.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.ru, \u05dc\u05d7\u05e5 \u05e2\u05dc \u05e1\u05de\u05dc \u05d2\u05dc\u05d2\u05dc \u05d4\u05e9\u05d9\u05e0\u05d9\u05d9\u05dd \u05d1\u05e4\u05d9\u05e0\u05d4 \u05d4\u05d9\u05de\u05e0\u05d9\u05ea \u05d4\u05e2\u05dc\u05d9\u05d5\u05e0\u05d4, \u05d1\u05d7\u05e8 \u05d1\u05dc\u05e9\u05d5\u05e0\u05d9\u05ea <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong> \u05d5\u05d4\u05e1\u05e8 \u05e9\u05d5\u05ea\u05e3 \u05d6\u05d4 \u05ea\u05d7\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal\u200f</strong>.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d4\u05e9\u05d5\u05ea\u05e3.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com.tr, \u05dc\u05d7\u05e5 \u05e2\u05dc \u05e1\u05de\u05dc \u05d2\u05dc\u05d2\u05dc \u05d4\u05e9\u05d9\u05e0\u05d9\u05d9\u05dd \u05d1\u05e4\u05d9\u05e0\u05d4 \u05d4\u05d9\u05de\u05e0\u05d9\u05ea \u05d4\u05e2\u05dc\u05d9\u05d5\u05e0\u05d4, \u05d1\u05d7\u05e8 \u05d1\u05dc\u05e9\u05d5\u05e0\u05d9\u05ea <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong> \u05d5\u05d4\u05e1\u05e8 \u05e9\u05d5\u05ea\u05e3 \u05d6\u05d4 \u05ea\u05d7\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal\u200f</strong>.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc \u05d0\u05e4\u05e9\u05e8\u05d5\u05d9\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05ea\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d4<strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>\u200e%s\u200e\u200f</strong></h1><p>\u05db\u05dc \u05e4\u05e8\u05d8\u05d9 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05e8\u05dc\u05d5\u05d5\u05e0\u05d8\u05d9\u05d9\u05dd \u05d9\u05e9\u05d5\u05ea\u05e4\u05d5 \u05e2\u05dd \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p><p>\u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05d4\u05e1\u05db\u05de\u05ea\u05da, \u05d4\u05d9\u05db\u05e0\u05e1 \u05d0\u05dc paypal.com, \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc <strong>\u05e4\u05e8\u05d5\u05e4\u05d9\u05dc</strong>, <strong>\u05d0\u05d1\u05d8\u05d7\u05d4</strong>, \u05de\u05e6\u05d0 \u05d0\u05ea \u05d4\u05d0\u05e4\u05e9\u05e8\u05d5\u05ea <strong>\u05d4\u05d9\u05db\u05e0\u05e1 \u05e2\u05dd PayPal</strong> \u05d5\u05d4\u05e1\u05e8 \u05d1\u05e2\u05dc \u05e2\u05e1\u05e7 \u05d6\u05d4.</p><p>PayPal \u05d0\u05d9\u05e0\u05d4 \u05d0\u05d7\u05e8\u05d0\u05d9\u05ea \u05dc\u05e4\u05e2\u05d5\u05dc\u05d5\u05ea \u05d0\u05d5 \u05e9\u05d2\u05d9\u05d0\u05d5\u05ea \u05db\u05dc\u05e9\u05d4\u05df \u05de\u05e6\u05d3\u05d5 \u05e9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "\u05d4\u05e1\u05db\u05d5\u05dd \u05d4\u05db\u05d5\u05dc\u05dc \u05e9\u05dc \u05d4\u05e4\u05e8\u05d9\u05d8\u05d9\u05dd \u05d1\u05e2\u05d2\u05dc\u05ea \u05d4\u05e7\u05e0\u05d9\u05d5\u05ea \u05d0\u05d9\u05e0\u05d5 \u05ea\u05d5\u05d0\u05dd \u05d0\u05ea \u05e1\u05db\u05d5\u05dd \u05d4\u05de\u05db\u05d9\u05e8\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "\u05d0\u05d9\u05e9\u05d5\u05e8 \u05d6\u05d4 \u05db\u05d1\u05e8 \u05d4\u05d5\u05e9\u05dc\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05ea\u05d5\u05e7\u05e3 \u05d4\u05d0\u05d9\u05e9\u05d5\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "\u05e4\u05d2 \u05ea\u05d5\u05e7\u05e3 \u05d4\u05d0\u05d9\u05e9\u05d5\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "\u05de\u05d6\u05d4\u05d4 \u05d4\u05d0\u05d9\u05e9\u05d5\u05e8 \u05d4\u05de\u05d1\u05d5\u05e7\u05e9 \u05dc\u05d0 \u05e7\u05d9\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "\u05d4\u05d0\u05d9\u05e9\u05d5\u05e8 \u05d1\u05d5\u05d8\u05dc."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "\u05e0\u05d9\u05ea\u05df \u05dc\u05d0\u05e9\u05e8 \u05de\u05d7\u05d3\u05e9 \u05e8\u05e7 \u05d0\u05ea \u05d4\u05d0\u05d9\u05e9\u05d5\u05e8 \u05d4\u05de\u05e7\u05d5\u05e8\u05d9, \u05dc\u05d0 \u05d0\u05d9\u05e9\u05d5\u05e8 \u05de\u05d7\u05d3\u05e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05d1\u05e6\u05e2 \u05d0\u05d9\u05e9\u05d5\u05e8 \u05de\u05d7\u05d3\u05e9 \u05d1\u05de\u05e1\u05d2\u05e8\u05ea \u05ea\u05e7\u05d5\u05e4\u05ea \u05d4\u05db\u05d9\u05d1\u05d5\u05d3."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "\u05d4\u05e1\u05db\u05d5\u05dd \u05d7\u05d5\u05e8\u05d2 \u05de\u05d4\u05de\u05d2\u05d1\u05dc\u05d4 \u05d4\u05de\u05d5\u05ea\u05e8\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05d2\u05e9\u05ea \u05dc\u05e4\u05e8\u05d8\u05d9 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05d4\u05e9\u05de\u05d5\u05e8\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "\u05e4\u05e8\u05d8\u05d9 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05dc\u05d0 \u05ea\u05e7\u05e4\u05d9\u05dd. \u05ea\u05e7\u05df \u05d5\u05e9\u05dc\u05d7 \u05e9\u05d5\u05d1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "\u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05e0\u05d3\u05d7\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "\u05e2\u05dc \u05de\u05d8\u05d1\u05e2 \u05d4\u05d0\u05d9\u05e1\u05d5\u05e3 \u05dc\u05d4\u05d9\u05d5\u05ea \u05d6\u05d4\u05d4 \u05dc\u05de\u05d8\u05d1\u05e2 \u05d4\u05d0\u05d9\u05e9\u05d5\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "PayPal \u05d0\u05d9\u05e0\u05d4 \u05ea\u05d5\u05de\u05db\u05ea \u05d1\u05de\u05d8\u05d1\u05e2 \u05d6\u05d4 \u05db\u05e2\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "\u05e4\u05d2 \u05ea\u05d5\u05e7\u05e3 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "\u05d4\u05e4\u05e8\u05d8\u05d9\u05dd \u05e9\u05dc \u05db\u05e8\u05d8\u05d9\u05e1 \u05d6\u05d4 \u05db\u05d1\u05e8 \u05d0\u05d9\u05e0\u05dd \u05e0\u05de\u05e6\u05d0\u05d9\u05dd \u05d1\u05e8\u05e9\u05d5\u05de\u05d5\u05ea.\n\u05e9\u05dc\u05d7 \u05e9\u05d5\u05d1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "\u05d4\u05ea\u05db\u05d5\u05e0\u05d4 \u05d0\u05d9\u05e0\u05d4 \u05e0\u05ea\u05de\u05db\u05ea \u05e2\u05d1\u05d5\u05e8 \u05e1\u05e4\u05e7 \u05d6\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "\u05db\u05d1\u05e8 \u05d1\u05d5\u05e6\u05e2 \u05d4\u05d7\u05d6\u05e8 \u05d7\u05dc\u05e7\u05d9 \u05e2\u05d1\u05d5\u05e8 \u05e2\u05e1\u05e7\u05d4 \u05d6\u05d5."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "\u05ea\u05e9\u05dc\u05d5\u05dd \u05de\u05d9\u05d9\u05d3\u05d9 \u05d0\u05d9\u05e0\u05d5 \u05e0\u05ea\u05de\u05da \u05e2\u05d1\u05d5\u05e8 \u05d4\u05de\u05d8\u05e8\u05d4 (Intent) \u05d4\u05de\u05d1\u05d5\u05e7\u05e9\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "\u05e9\u05d9\u05d8\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05e9\u05d1\u05d7\u05e8\u05ea \u05dc\u05d0 \u05d4\u05ea\u05e7\u05d1\u05dc\u05d4. \u05d1\u05d7\u05e8 \u05e9\u05d9\u05d8\u05d4 \u05d0\u05d7\u05e8\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "\u05d4\u05e7\u05d5\u05e0\u05d4 \u05dc\u05d0 \u05d9\u05db\u05d5\u05dc \u05dc\u05e9\u05dc\u05dd - \u05de\u05d7\u05e1\u05d5\u05e8 \u05d1\u05db\u05e1\u05e3."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "\u05de\u05e1\u05e4\u05e8 \u05d7\u05e9\u05d1\u05d5\u05df \u05d6\u05d4 \u05dc\u05d0 \u05e7\u05d9\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "\u05d4\u05e2\u05e1\u05e7\u05d4 \u05e0\u05d3\u05d7\u05ea\u05d4 \u05e2\u05e7\u05d1 \u05e1\u05d9\u05d1\u05d5\u05ea \u05d8\u05db\u05e0\u05d9\u05d5\u05ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "\u05e9\u05d9\u05dc\u05d5\u05d1 \u05dc\u05d0 \u05d7\u05d5\u05e7\u05d9 \u05e9\u05dc \u05e2\u05d9\u05e8/\u05de\u05d3\u05d9\u05e0\u05d4/\u05de\u05d9\u05e7\u05d5\u05d3."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05e2\u05d1\u05d3 \u05d0\u05ea \u05d4\u05e2\u05e1\u05e7\u05d4 \u05e2\u05e7\u05d1 \u05d4\u05d2\u05d3\u05e8\u05ea \u05d2\u05d5\u05e8\u05dd \u05de\u05ea\u05d5\u05d5\u05da \u05d1\u05dc\u05ea\u05d9-\u05ea\u05e7\u05e4\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea (\u05de\u05d6\u05d4\u05d4 \u05de\u05e9\u05dc\u05dd \u05dc\u05d0 \u05d7\u05d5\u05e7\u05d9). \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "\u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4\u05e1\u05e4\u05e7 \u05d0\u05d9\u05df \u05db\u05ea\u05d5\u05d1\u05ea \u05d0\u05d9\u05de\u05d9\u05d9\u05dc \u05de\u05d0\u05d5\u05e9\u05e8\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "\u05e1\u05e4\u05e7 \u05d6\u05d4 \u05d0\u05d9\u05e0\u05d5 \u05d9\u05db\u05d5\u05dc \u05dc\u05e7\u05d1\u05dc \u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05db\u05e2\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "\u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4\u05e1\u05e4\u05e7 \u05d0\u05d9\u05df \u05db\u05ea\u05d5\u05d1\u05ea \u05d0\u05d9\u05de\u05d9\u05d9\u05dc \u05de\u05d0\u05d5\u05e9\u05e8\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "\u05e1\u05e4\u05e7 \u05d6\u05d4 \u05d0\u05d9\u05e0\u05d5 \u05d9\u05db\u05d5\u05dc \u05dc\u05e7\u05d1\u05dc \u05ea\u05e9\u05dc\u05d5\u05de\u05d9\u05dd \u05db\u05e2\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "\u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da \u05e0\u05e2\u05d5\u05dc \u05d0\u05d5 \u05e1\u05d2\u05d5\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "\u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da \u05de\u05d5\u05d2\u05d1\u05dc."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "\u05d0\u05d9\u05e0\u05da \u05d9\u05db\u05d5\u05dc \u05dc\u05e9\u05dc\u05dd \u05e2\u05d1\u05d5\u05e8 \u05e2\u05e1\u05e7\u05d4 \u05d6\u05d5 \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "\u05e0\u05d3\u05e8\u05e9\u05ea \u05db\u05ea\u05d5\u05d1\u05ea \u05dc\u05d7\u05d9\u05d5\u05d1 \u05e2\u05d1\u05d5\u05e8 \u05e2\u05e1\u05e7\u05d0\u05d5\u05ea \u05d1\u05db\u05e8\u05d8\u05d9\u05e1 \u05d0\u05e9\u05e8\u05d0\u05d9 \u05e9\u05d0\u05d9\u05e0\u05df \u05de\u05e9\u05d5\u05dc\u05de\u05d5\u05ea \u05d1\u05d0\u05de\u05e6\u05e2\u05d5\u05ea PayPal\u200f."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05d2\u05e9\u05ea \u05dc\u05e4\u05e8\u05d8\u05d9 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05d4\u05e9\u05de\u05d5\u05e8\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "\u05e4\u05d2 \u05d4\u05ea\u05d5\u05e7\u05e3 \u05e9\u05dc \u05d0\u05d9\u05e9\u05d5\u05e8 \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "\u05e4\u05d2 \u05ea\u05d5\u05e7\u05e3 \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "\u05d4\u05de\u05e9\u05dc\u05dd \u05dc\u05d0 \u05d0\u05d9\u05e9\u05e8 \u05d0\u05ea \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "\u05de\u05d6\u05d4\u05d4 \u05d4\u05e2\u05e1\u05e7\u05d4 \u05e9\u05dc PayPal \u05dc\u05d0 \u05d7\u05d5\u05e7\u05d9. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "\u05d1\u05e7\u05e9\u05d4 \u05d6\u05d5 \u05d0\u05d9\u05e0\u05d4 \u05d7\u05d5\u05e7\u05d9\u05ea \u05e2\u05e7\u05d1 \u05de\u05e6\u05d1\u05d5 \u05d4\u05e0\u05d5\u05db\u05d7\u05d9 \u05e9\u05dc \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "\u05d0\u05d9\u05df \u05d4\u05e8\u05e9\u05d0\u05d4 \u05dc\u05e4\u05e2\u05d5\u05dc\u05d4 \u05d4\u05de\u05d1\u05d5\u05e7\u05e9\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "\u05d4\u05d4\u05d7\u05d6\u05e8 \u05d4\u05de\u05d1\u05d5\u05e7\u05e9 \u05d7\u05d5\u05e8\u05d2 \u05de\u05e1\u05db\u05d5\u05dd \u05d4\u05e2\u05e1\u05e7\u05d4 \u05d4\u05de\u05e7\u05d5\u05e8\u05d9\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "\u05e2\u05e1\u05e7\u05d4 \u05d6\u05d5 \u05d9\u05e9\u05e0\u05d4 \u05de\u05db\u05d3\u05d9 \u05e9\u05e0\u05d9\u05ea\u05df \u05d9\u05d4\u05d9\u05d4 \u05dc\u05d1\u05e6\u05e2 \u05d4\u05d7\u05d6\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05d1\u05e6\u05e2 \u05d0\u05d9\u05e9\u05d5\u05e8\u05d9\u05dd \u05de\u05d7\u05d3\u05e9 \u05e0\u05d5\u05e1\u05e4\u05d9\u05dd \u05dc\u05d0\u05d9\u05e9\u05d5\u05e8 \u05d6\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "\u05db\u05d1\u05e8 \u05d1\u05d5\u05e6\u05e2 \u05d4\u05d7\u05d6\u05e8 \u05e2\u05d1\u05d5\u05e8 \u05e2\u05e1\u05e7\u05d4 \u05d6\u05d5."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "\u05d4\u05e1\u05db\u05d5\u05dd \u05d7\u05d5\u05e8\u05d2 \u05de\u05d4\u05de\u05d2\u05d1\u05dc\u05d4 \u05d4\u05de\u05d5\u05ea\u05e8\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "\u05d4\u05e2\u05e1\u05e7\u05d4 \u05e0\u05d3\u05d7\u05ea\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "\u05d4\u05e2\u05e1\u05e7\u05d4 \u05e0\u05d3\u05d7\u05ea\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "\u05d4\u05d2\u05d3\u05e8\u05ea \u05e4\u05e8\u05d5\u05e4\u05d9\u05dc \u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7 \u05de\u05d5\u05d2\u05d3\u05e8\u05ea \u05dc\u05d3\u05d7\u05d9\u05d9\u05d4 \u05d0\u05d5\u05d8\u05d5\u05de\u05d8\u05d9\u05ea \u05e9\u05dc \u05e2\u05e1\u05e7\u05d0\u05d5\u05ea \u05de\u05e1\u05d5\u05d9\u05d9\u05de\u05d5\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "\u05d4\u05d0\u05e8\u05e5 \u05d0\u05d9\u05e0\u05d4 \u05e0\u05ea\u05de\u05db\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "\u05e4\u05e8\u05d8\u05d9 \u05d4\u05ea\u05e9\u05dc\u05d5\u05dd \u05d0\u05d9\u05e0\u05dd \u05d7\u05d5\u05e7\u05d9\u05d9\u05dd. \u05ea\u05e7\u05df \u05d5\u05e9\u05dc\u05d7 \u05e9\u05d5\u05d1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "\u05d4\u05d4\u05d6\u05de\u05e0\u05d4 \u05db\u05d1\u05e8 \u05d1\u05d5\u05d8\u05dc\u05d4, \u05d4\u05d5\u05e9\u05dc\u05de\u05d4 \u05d0\u05d5 \u05e9\u05ea\u05d5\u05e7\u05e4\u05d4 \u05e4\u05d2."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "\u05d4\u05d4\u05d6\u05de\u05e0\u05d4 \u05d4\u05d2\u05d9\u05e2\u05d4 \u05dc\u05de\u05e1\u05e4\u05e8 \u05d4\u05de\u05e8\u05d1\u05d9 \u05d4\u05de\u05d5\u05ea\u05e8 \u05e9\u05dc \u05d0\u05d9\u05e9\u05d5\u05e8\u05d9\u05dd."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "\u05d4\u05d4\u05d6\u05de\u05e0\u05d4 \u05d1\u05d5\u05d8\u05dc\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "\u05de\u05e6\u05d1 \u05d4\u05d4\u05d6\u05de\u05e0\u05d4 \u05de\u05d5\u05e0\u05e2 \u05d0\u05ea \u05d1\u05d9\u05d8\u05d5\u05dc\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "\u05d1\u05e2\u05dc \u05d4\u05e2\u05e1\u05e7 \u05d0\u05d9\u05e0\u05d5 \u05de\u05e7\u05d1\u05dc \u05ea\u05e9\u05dc\u05d5\u05dd \u05de\u05e1\u05d5\u05d2 \u05d6\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "\u05d4\u05de\u05d8\u05d1\u05e2 \u05dc\u05d0 \u05e0\u05ea\u05de\u05da \u05e2\u05d1\u05d5\u05e8 \u05e1\u05d5\u05d2 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "\u05e1\u05d5\u05d2 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05dc\u05d0 \u05e0\u05ea\u05de\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05e9\u05d2\u05d9\u05d0\u05d4 \u05d1\u05e2\u05ea \u05d4\u05d5\u05e1\u05e4\u05ea \u05db\u05ea\u05d5\u05d1\u05ea \u05dc\u05de\u05e9\u05dc\u05d5\u05d7 \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal\u200f."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "\u05e2\u05e1\u05e7\u05d4 \u05db\u05e4\u05d5\u05dc\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "\u05d4\u05db\u05ea\u05d5\u05d1\u05ea \u05dc\u05de\u05e9\u05dc\u05d5\u05d7 \u05e9\u05d4\u05d5\u05d6\u05e0\u05d4 \u05d0\u05d9\u05e0\u05d4 \u05d7\u05d5\u05e7\u05d9\u05ea."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d4\u05d2\u05d3\u05e8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d6\u05d4. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d1\u05d3\u05d5\u05e7 \u05d0\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d4\u05d2\u05d3\u05e8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d6\u05d4 - \u05e4\u05d2 \u05ea\u05d5\u05e7\u05e3 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05e9\u05dc\u05da. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d1\u05d3\u05d5\u05e7 \u05d0\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d4\u05d2\u05d3\u05e8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d6\u05d4 - \u05e0\u05d3\u05e8\u05e9 \u05d0\u05de\u05e6\u05e2\u05d9 \u05ea\u05e9\u05dc\u05d5\u05dd \u05de\u05d9\u05d9\u05d3\u05d9, \u05db\u05d2\u05d5\u05df \u05db\u05e8\u05d8\u05d9\u05e1 \u05d0\u05e9\u05e8\u05d0\u05d9. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d1\u05d3\u05d5\u05e7 \u05d0\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d4\u05d2\u05d3\u05e8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d6\u05d4 - \u05d9\u05e9 \u05dc\u05d0\u05e9\u05e8 \u05d0\u05ea \u05d4\u05db\u05e8\u05d8\u05d9\u05e1. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d1\u05d3\u05d5\u05e7 \u05d0\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d4\u05d2\u05d3\u05e8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d6\u05d4 - \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4 \u05d6\u05d5 \u05de\u05d7\u05d9\u05d9\u05d1\u05ea \u05e9\u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da \u05d9\u05db\u05d9\u05dc \u05de\u05e1\u05e4\u05e8 \u05d8\u05dc\u05e4\u05d5\u05df. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d1\u05d3\u05d5\u05e7 \u05d0\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d4\u05d2\u05d3\u05e8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d6\u05d4 - \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e6\u05e8\u05d9\u05da \u05dc\u05d4\u05db\u05d9\u05dc \u05de\u05e7\u05d5\u05e8 \u05db\u05e1\u05e4\u05d9 \u05d7\u05d5\u05e7\u05d9, \u05db\u05d2\u05d5\u05df \u05d7\u05e9\u05d1\u05d5\u05df \u05d1\u05e0\u05e7 \u05d0\u05d5 \u05db\u05e8\u05d8\u05d9\u05e1 \u05ea\u05e9\u05dc\u05d5\u05dd. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d1\u05d3\u05d5\u05e7 \u05d0\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d4\u05d2\u05d3\u05e8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d6\u05d4 - \u05d4\u05d9\u05ea\u05e8\u05d4 \u05e9\u05dc\u05da \u05e9\u05dc\u05d9\u05dc\u05d9\u05ea. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d1\u05d3\u05d5\u05e7 \u05d0\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05d1\u05e2\u05d9\u05d4 \u05d1\u05d4\u05d2\u05d3\u05e8\u05ea \u05ea\u05e9\u05dc\u05d5\u05dd \u05d6\u05d4 - \u05d4\u05d2\u05e2\u05ea \u05dc\u05de\u05d2\u05d1\u05dc\u05ea \u05d4\u05e9\u05dc\u05d9\u05d7\u05d4 \u05e9\u05dc\u05da. \u05d1\u05e7\u05e8 \u05d1\u05d0\u05ea\u05e8 PayPal \u05db\u05d3\u05d9 \u05dc\u05d1\u05d3\u05d5\u05e7 \u05d0\u05ea \u05d4\u05d7\u05e9\u05d1\u05d5\u05df \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "\u05e0\u05d3\u05d7\u05d4 \u05e2\u05e7\u05d1 \u05e1\u05d9\u05db\u05d5\u05df."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "\u05dc\u05e7\u05d5\u05d7 \u05dc\u05d0 \u05d0\u05d5\u05e9\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "\u05dc\u05e7\u05d5\u05d7 \u05dc\u05d0 \u05d0\u05d5\u05e9\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "\u05e9\u05dd \u05de\u05e9\u05ea\u05de\u05e9/\u05e1\u05d9\u05e1\u05de\u05d4 \u05e9\u05d2\u05d5\u05d9\u05d9\u05dd. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "\u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05e0\u05e0\u05e2\u05dc \u05d1\u05d0\u05d5\u05e4\u05df \u05d6\u05de\u05e0\u05d9. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8, \u05d0\u05d5 \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc www.paypal.co.il \u05db\u05d3\u05d9 \u05dc\u05d1\u05d8\u05dc \u05d0\u05ea \u05e0\u05e2\u05d9\u05dc\u05ea \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da \u05d1\u05d0\u05d5\u05e4\u05df \u05de\u05d9\u05d9\u05d3\u05d9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "\u05d7\u05e8\u05d2\u05ea \u05de\u05de\u05e1\u05e4\u05e8 \u05e0\u05d9\u05e1\u05d9\u05d5\u05e0\u05d5\u05ea \u05d4\u05db\u05e0\u05d9\u05e1\u05d4 \u05d4\u05de\u05e8\u05d1\u05d9. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05e9\u05d2\u05d9\u05d0\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "\u05d4\u05d1\u05e7\u05e9\u05d4 \u05dc\u05d0 \u05d0\u05d5\u05e9\u05e8\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "\u05d4\u05d1\u05e7\u05e9\u05d4 \u05dc\u05d0 \u05d0\u05d5\u05e9\u05e8\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05e9\u05d2\u05d9\u05d0\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "\u05d4\u05d1\u05e7\u05e9\u05d4 \u05dc\u05d0 \u05d0\u05d5\u05e9\u05e8\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "\u05e9\u05d2\u05d9\u05d0\u05ea \u05de\u05e2\u05e8\u05db\u05ea. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "\u05dc\u05d0 \u05e0\u05d9\u05ea\u05df \u05dc\u05d4\u05e9\u05dc\u05d9\u05dd \u05d0\u05ea \u05db\u05e0\u05d9\u05e1\u05ea\u05da \u05dc\u05d7\u05e9\u05d1\u05d5\u05df \u05d1\u05e9\u05dc\u05d1 \u05d6\u05d4. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8, \u05d0\u05d5 \u05e2\u05d1\u05d5\u05e8 \u05d0\u05dc www.paypal.co.il \u05db\u05d3\u05d9 \u05dc\u05e4\u05ea\u05d5\u05e8 \u05d1\u05e2\u05d9\u05d5\u05ea \u05d0\u05d1\u05d8\u05d7\u05d4 \u05d0\u05e4\u05e9\u05e8\u05d9\u05d5\u05ea \u05e2\u05dd \u05d7\u05e9\u05d1\u05d5\u05df \u05d4-PayPal \u05e9\u05dc\u05da."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    const-string v1, "account_locked_generate_challenge_limit_exceeded"

    const-string v2, "\u05e0\u05e1\u05d9\u05d5\u05e0\u05d5\u05ea \u05db\u05e0\u05d9\u05e1\u05d4 \u05e8\u05d1\u05d9\u05dd \u05de\u05d3\u05d9. \u05e0\u05e1\u05d4 \u05e9\u05d5\u05d1 \u05de\u05d0\u05d5\u05d7\u05e8 \u05d9\u05d5\u05ea\u05e8, \u05d0\u05d5 \u05e6\u05d5\u05e8 \u05e7\u05e9\u05e8 \u05e2\u05dd PayPal \u05dc\u05e7\u05d1\u05dc\u05ea \u05e2\u05d6\u05e8\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "he"

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

    sget-object v1, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/paypal/android/sdk/r;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2d
    return-object v0

    :cond_2e
    sget-object v0, Lcom/paypal/android/sdk/r;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2d
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/r;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
