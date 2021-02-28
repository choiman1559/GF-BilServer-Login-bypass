.class public final Lcom/alipay/sdk/util/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/pm/PackageInfo;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iput p2, p0, Lcom/alipay/sdk/util/n$a;->b:I

    iput-object p3, p0, Lcom/alipay/sdk/util/n$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p0, Lcom/alipay/sdk/util/n$a;->b:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Lcom/alipay/sdk/sys/a;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_b

    array-length v2, v3

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    :goto_c
    return v0

    :cond_d
    array-length v4, v3

    move v2, v1

    :goto_f
    if-ge v2, v4, :cond_3f

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {p1, v5}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;[B)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    iget-object v6, p0, Lcom/alipay/sdk/util/n$a;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3c

    const-string v2, "biz"

    const-string v3, "PublicKeyUnmatch"

    const-string v4, "Got %s, expected %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v1

    iget-object v1, p0, Lcom/alipay/sdk/util/n$a;->c:Ljava/lang/String;

    aput-object v1, v6, v0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_3f
    move v0, v1

    goto :goto_c
.end method
