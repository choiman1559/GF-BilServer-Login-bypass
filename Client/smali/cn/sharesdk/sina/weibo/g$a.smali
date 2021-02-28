.class public Lcn/sharesdk/sina/weibo/g$a;
.super Ljava/lang/Object;
.source "WeiboAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/sina/weibo/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "com.sina.weibo"

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/g$a;->a:Ljava/lang/String;

    .line 34
    const-string v0, "com.sina.weibo.SSOActivity"

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/g$a;->b:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .registers 2

    .prologue
    .line 54
    iput p1, p0, Lcn/sharesdk/sina/weibo/g$a;->c:I

    .line 55
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/g$a;I)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/g$a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/g$a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/g$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/g$a;->a:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcn/sharesdk/sina/weibo/g$a;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeiboInfo: PackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/g$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportApi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/sharesdk/sina/weibo/g$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
