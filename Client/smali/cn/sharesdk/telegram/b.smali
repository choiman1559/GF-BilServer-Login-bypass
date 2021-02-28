.class public Lcn/sharesdk/telegram/b;
.super Ljava/lang/Object;
.source "TelegramHelper.java"


# static fields
.field private static a:Lcn/sharesdk/telegram/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/sharesdk/telegram/b;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcn/sharesdk/telegram/b;->a:Lcn/sharesdk/telegram/b;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcn/sharesdk/telegram/b;

    invoke-direct {v0}, Lcn/sharesdk/telegram/b;-><init>()V

    sput-object v0, Lcn/sharesdk/telegram/b;->a:Lcn/sharesdk/telegram/b;

    .line 32
    :cond_b
    sget-object v0, Lcn/sharesdk/telegram/b;->a:Lcn/sharesdk/telegram/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "org.telegram.messenger"

    .line 41
    const-string v1, "org.telegram.ui.LaunchActivity"

    .line 42
    new-instance v2, Lcn/sharesdk/framework/utils/e;

    invoke-direct {v2}, Lcn/sharesdk/framework/utils/e;-><init>()V

    .line 43
    invoke-virtual {v2, v0, v1}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, p1, p2}, Lcn/sharesdk/framework/utils/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 45
    return-void
.end method
