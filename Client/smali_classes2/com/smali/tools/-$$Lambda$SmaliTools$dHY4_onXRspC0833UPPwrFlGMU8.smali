.class public final synthetic Lcom/smali/tools/-$$Lambda$SmaliTools$dHY4_onXRspC0833UPPwrFlGMU8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/smali/tools/-$$Lambda$SmaliTools$dHY4_onXRspC0833UPPwrFlGMU8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/smali/tools/-$$Lambda$SmaliTools$dHY4_onXRspC0833UPPwrFlGMU8;

    invoke-direct {v0}, Lcom/smali/tools/-$$Lambda$SmaliTools$dHY4_onXRspC0833UPPwrFlGMU8;-><init>()V

    sput-object v0, Lcom/smali/tools/-$$Lambda$SmaliTools$dHY4_onXRspC0833UPPwrFlGMU8;->INSTANCE:Lcom/smali/tools/-$$Lambda$SmaliTools$dHY4_onXRspC0833UPPwrFlGMU8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/smali/tools/SmaliTools;->lambda$null$2(Landroid/content/DialogInterface;I)V

    return-void
.end method
