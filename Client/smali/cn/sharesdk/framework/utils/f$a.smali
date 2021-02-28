.class final Lcn/sharesdk/framework/utils/f$a;
.super Ljava/lang/ThreadLocal;
.source "UnicodeEscaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[C>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/framework/utils/f$1;)V
    .registers 2

    .prologue
    .line 495
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[C
    .registers 2

    .prologue
    .line 498
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/f$a;->a()[C

    move-result-object v0

    return-object v0
.end method
