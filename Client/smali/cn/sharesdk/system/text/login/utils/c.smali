.class public Lcn/sharesdk/system/text/login/utils/c;
.super Ljava/lang/Object;
.source "SearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/system/text/login/utils/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/system/text/login/utils/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcn/sharesdk/system/text/login/utils/c;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/sharesdk/system/text/login/utils/c;->a:Ljava/util/HashMap;

    .line 15
    :cond_b
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/c;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    move-object v0, v1

    .line 39
    :goto_a
    return-object v0

    .line 34
    :cond_b
    iget-object v0, p0, Lcn/sharesdk/system/text/login/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/system/text/login/utils/c$a;

    .line 35
    iget-boolean v3, p0, Lcn/sharesdk/system/text/login/utils/c;->b:Z

    invoke-static {v0, p1, v3}, Lcn/sharesdk/system/text/login/utils/c$a;->a(Lcn/sharesdk/system/text/login/utils/c$a;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 36
    invoke-virtual {v0}, Lcn/sharesdk/system/text/login/utils/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2d
    move-object v0, v1

    .line 39
    goto :goto_a
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/system/text/login/utils/c;->c:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lcn/sharesdk/system/text/login/utils/c;->c:Ljava/util/ArrayList;

    new-instance v3, Lcn/sharesdk/system/text/login/utils/c$a;

    sget-object v4, Lcn/sharesdk/system/text/login/utils/c;->a:Ljava/util/HashMap;

    invoke-direct {v3, v0, v4}, Lcn/sharesdk/system/text/login/utils/c$a;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 26
    :cond_24
    return-void
.end method
