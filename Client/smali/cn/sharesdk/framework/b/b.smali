.class public final enum Lcn/sharesdk/framework/b/b;
.super Ljava/lang/Enum;
.source "PicUploadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/sharesdk/framework/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/b/b;

.field public static final enum b:Lcn/sharesdk/framework/b/b;

.field private static final synthetic c:[Lcn/sharesdk/framework/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcn/sharesdk/framework/b/b;

    const-string v1, "FINISH_SHARE"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/b/b;->a:Lcn/sharesdk/framework/b/b;

    .line 9
    new-instance v0, Lcn/sharesdk/framework/b/b;

    const-string v1, "BEFORE_SHARE"

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/framework/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/sharesdk/framework/b/b;

    sget-object v1, Lcn/sharesdk/framework/b/b;->a:Lcn/sharesdk/framework/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcn/sharesdk/framework/b/b;->b:Lcn/sharesdk/framework/b/b;

    aput-object v1, v0, v3

    sput-object v0, Lcn/sharesdk/framework/b/b;->c:[Lcn/sharesdk/framework/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/b/b;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcn/sharesdk/framework/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/b/b;

    return-object v0
.end method

.method public static values()[Lcn/sharesdk/framework/b/b;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcn/sharesdk/framework/b/b;->c:[Lcn/sharesdk/framework/b/b;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/b/b;

    return-object v0
.end method
