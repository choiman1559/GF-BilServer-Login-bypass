.class Lcn/sharesdk/system/text/login/utils/c$a;
.super Ljava/lang/Object;
.source "SearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/system/text/login/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcn/sharesdk/system/text/login/utils/c$a;->a:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/utils/c$a;->b:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/utils/c$a;->c:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/system/text/login/utils/c$a;Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/system/text/login/utils/c$a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 59
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_f

    :cond_d
    move v0, v1

    .line 84
    :goto_e
    return v0

    .line 64
    :cond_f
    if-nez p2, :cond_15

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_15
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/c$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    .line 69
    goto :goto_e

    .line 72
    :cond_27
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 74
    goto :goto_e

    .line 78
    :cond_41
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/c$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    move v0, v1

    .line 80
    goto :goto_e

    .line 84
    :cond_5b
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v1, "text"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "pinyin"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "firstLatters"

    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/c$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
