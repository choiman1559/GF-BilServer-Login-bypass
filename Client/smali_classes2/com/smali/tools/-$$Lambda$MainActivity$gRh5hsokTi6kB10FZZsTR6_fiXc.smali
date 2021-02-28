.class public final synthetic Lcom/smali/tools/-$$Lambda$MainActivity$gRh5hsokTi6kB10FZZsTR6_fiXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/sunborn/gameplatform/core/listener/SunbronUserCenterListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/smali/tools/-$$Lambda$MainActivity$gRh5hsokTi6kB10FZZsTR6_fiXc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/smali/tools/-$$Lambda$MainActivity$gRh5hsokTi6kB10FZZsTR6_fiXc;

    invoke-direct {v0}, Lcom/smali/tools/-$$Lambda$MainActivity$gRh5hsokTi6kB10FZZsTR6_fiXc;-><init>()V

    sput-object v0, Lcom/smali/tools/-$$Lambda$MainActivity$gRh5hsokTi6kB10FZZsTR6_fiXc;->INSTANCE:Lcom/smali/tools/-$$Lambda$MainActivity$gRh5hsokTi6kB10FZZsTR6_fiXc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doLogin(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Lcom/smali/tools/MainActivity;->lambda$null$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
