.class public final Lcom/alipay/sdk/sys/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/sys/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/alipay/sdk/sys/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/sys/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "i_uuid_b_c"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/a$a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/a$a;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "i_uuid_b_c"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v2, v0, Ljava/util/UUID;

    if-eqz v2, :cond_1a

    sget-object v1, Lcom/alipay/sdk/sys/a$a;->a:Ljava/util/HashMap;

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/sys/a;

    goto :goto_4

    :cond_1a
    move-object v0, v1

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/sdk/sys/a;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/alipay/sdk/sys/a$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/sys/a;

    goto :goto_7
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/alipay/sdk/sys/a$a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "i_uuid_b_c"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_4
.end method

.method public static a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/alipay/sdk/sys/a$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method
