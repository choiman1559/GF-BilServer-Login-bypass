.class public final enum Lcom/paypal/android/sdk/ey;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic B:[Lcom/paypal/android/sdk/ey;

.field public static final enum a:Lcom/paypal/android/sdk/ey;

.field public static final enum b:Lcom/paypal/android/sdk/ey;

.field public static final enum c:Lcom/paypal/android/sdk/ey;

.field public static final enum d:Lcom/paypal/android/sdk/ey;

.field public static final enum e:Lcom/paypal/android/sdk/ey;

.field public static final enum f:Lcom/paypal/android/sdk/ey;

.field public static final enum g:Lcom/paypal/android/sdk/ey;

.field public static final enum h:Lcom/paypal/android/sdk/ey;

.field public static final enum i:Lcom/paypal/android/sdk/ey;

.field public static final enum j:Lcom/paypal/android/sdk/ey;

.field public static final enum k:Lcom/paypal/android/sdk/ey;

.field public static final enum l:Lcom/paypal/android/sdk/ey;

.field public static final enum m:Lcom/paypal/android/sdk/ey;

.field public static final enum n:Lcom/paypal/android/sdk/ey;

.field public static final enum o:Lcom/paypal/android/sdk/ey;

.field public static final enum p:Lcom/paypal/android/sdk/ey;

.field public static final enum q:Lcom/paypal/android/sdk/ey;

.field public static final enum r:Lcom/paypal/android/sdk/ey;

.field public static final enum s:Lcom/paypal/android/sdk/ey;

.field public static final enum t:Lcom/paypal/android/sdk/ey;

.field public static final enum u:Lcom/paypal/android/sdk/ey;

.field public static final enum v:Lcom/paypal/android/sdk/ey;

.field public static final enum w:Lcom/paypal/android/sdk/ey;


# instance fields
.field private A:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/ey;

    const-string v1, "PreConnect"

    const-string v3, "preconnect"

    const-string v4, ""

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/paypal/android/sdk/ey;->a:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "DeviceCheck"

    const-string v6, "devicecheck"

    const-string v7, ""

    move v5, v10

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->b:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "PaymentMethodWindow"

    const-string v6, "selectpaymentmethod"

    const-string v7, ""

    move v5, v11

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->c:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "PaymentMethodCancel"

    const-string v6, "selectpaymentmethod"

    const-string v7, "cancel"

    move v5, v12

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->d:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "SelectPayPalPayment"

    const-string v6, "selectpaymentmethod"

    const-string v7, "paypal"

    move v5, v13

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->e:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "SelectCreditCardPayment"

    const/4 v5, 0x5

    const-string v6, "selectpaymentmethod"

    const-string v7, "card"

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->f:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "ConfirmPaymentWindow"

    const/4 v5, 0x6

    const-string v6, "confirmpayment"

    const-string v7, ""

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->g:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "ConfirmPayment"

    const/4 v5, 0x7

    const-string v6, "confirmpayment"

    const-string v7, "confirm"

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->h:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "ConfirmPaymentCancel"

    const/16 v5, 0x8

    const-string v6, "confirmpayment"

    const-string v7, "cancel"

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->i:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "PaymentSuccessful"

    const/16 v5, 0x9

    const-string v6, "paymentsuccessful"

    const-string v7, ""

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->j:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "LoginWindow"

    const/16 v5, 0xa

    const-string v6, "login"

    const-string v7, "password"

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->k:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "LoginPassword"

    const/16 v5, 0xb

    const-string v6, "login"

    const-string v7, "password"

    move v8, v10

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->l:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "LoginPIN"

    const/16 v5, 0xc

    const-string v6, "login"

    const-string v7, "PIN"

    move v8, v10

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->m:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "SignUp"

    const/16 v5, 0xd

    const-string v6, "login"

    const-string v7, "password"

    move v8, v10

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->n:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "LoginForgotPassword"

    const/16 v5, 0xe

    const-string v6, "login"

    const-string v7, "password"

    move v8, v10

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->o:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "LoginCancel"

    const/16 v5, 0xf

    const-string v6, "login"

    const-string v7, "cancel"

    move v8, v10

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->p:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "ConsentWindow"

    const/16 v5, 0x10

    const-string v6, "authorizationconsent"

    const-string v7, ""

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->q:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "ConsentAgree"

    const/16 v5, 0x11

    const-string v6, "authorizationconsent"

    const-string v7, "agree"

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->r:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "ConsentCancel"

    const/16 v5, 0x12

    const-string v6, "authorizationconsent"

    const-string v7, "cancel"

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->s:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "ConsentMerchantUrl"

    const/16 v5, 0x13

    const-string v6, "authorizationconsent"

    const-string v7, "merchanturl"

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->t:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "ConsentPayPalPrivacyUrl"

    const/16 v5, 0x14

    const-string v6, "authorizationconsent"

    const-string v7, "privacy"

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->u:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "AuthorizationSuccessful"

    const/16 v5, 0x15

    const-string v6, "authorizationsuccessful"

    const-string v7, ""

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->v:Lcom/paypal/android/sdk/ey;

    new-instance v3, Lcom/paypal/android/sdk/ey;

    const-string v4, "LegalTextWindow"

    const/16 v5, 0x16

    const-string v6, "legaltext"

    const-string v7, ""

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/paypal/android/sdk/ey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/paypal/android/sdk/ey;->w:Lcom/paypal/android/sdk/ey;

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/paypal/android/sdk/ey;

    sget-object v1, Lcom/paypal/android/sdk/ey;->a:Lcom/paypal/android/sdk/ey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/ey;->b:Lcom/paypal/android/sdk/ey;

    aput-object v1, v0, v10

    sget-object v1, Lcom/paypal/android/sdk/ey;->c:Lcom/paypal/android/sdk/ey;

    aput-object v1, v0, v11

    sget-object v1, Lcom/paypal/android/sdk/ey;->d:Lcom/paypal/android/sdk/ey;

    aput-object v1, v0, v12

    sget-object v1, Lcom/paypal/android/sdk/ey;->e:Lcom/paypal/android/sdk/ey;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/paypal/android/sdk/ey;->f:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/paypal/android/sdk/ey;->g:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/paypal/android/sdk/ey;->h:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/paypal/android/sdk/ey;->i:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/paypal/android/sdk/ey;->j:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/paypal/android/sdk/ey;->k:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/paypal/android/sdk/ey;->l:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/paypal/android/sdk/ey;->m:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/paypal/android/sdk/ey;->n:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/paypal/android/sdk/ey;->o:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/paypal/android/sdk/ey;->p:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/paypal/android/sdk/ey;->q:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/paypal/android/sdk/ey;->r:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/paypal/android/sdk/ey;->s:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/paypal/android/sdk/ey;->t:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/paypal/android/sdk/ey;->u:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/paypal/android/sdk/ey;->v:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/paypal/android/sdk/ey;->w:Lcom/paypal/android/sdk/ey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/sdk/ey;->B:[Lcom/paypal/android/sdk/ey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/paypal/android/sdk/ey;->x:Ljava/lang/String;

    iput-object p4, p0, Lcom/paypal/android/sdk/ey;->y:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/paypal/android/sdk/ey;->z:Z

    iput-boolean p6, p0, Lcom/paypal/android/sdk/ey;->A:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/ey;
    .registers 2

    const-class v0, Lcom/paypal/android/sdk/ey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/ey;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/ey;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/ey;->B:[Lcom/paypal/android/sdk/ey;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/ey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/ey;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/paypal/android/sdk/ey;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/ey;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    iget-boolean v0, p0, Lcom/paypal/android/sdk/ey;->z:Z

    if-eqz v0, :cond_2f

    if-eqz p2, :cond_2c

    const-string v0, "returnuser"

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/ex;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    const-string v0, "newuser"

    goto :goto_8

    :cond_2f
    const-string v0, ""

    goto :goto_8
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/ey;->A:Z

    return v0
.end method