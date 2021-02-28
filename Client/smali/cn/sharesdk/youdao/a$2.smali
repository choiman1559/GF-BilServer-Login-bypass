.class Lcn/sharesdk/youdao/a$2;
.super Ljava/lang/Object;
.source "YouDaoHelper.java"

# interfaces
.implements Lcom/mob/tools/network/RawNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/youdao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcn/sharesdk/youdao/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/youdao/a;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 561
    iput-object p1, p0, Lcn/sharesdk/youdao/a$2;->b:Lcn/sharesdk/youdao/a;

    iput-object p2, p0, Lcn/sharesdk/youdao/a$2;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcn/sharesdk/youdao/a$2;->a:Ljava/util/HashMap;

    const-string v1, "resp"

    iget-object v2, p0, Lcn/sharesdk/youdao/a$2;->b:Lcn/sharesdk/youdao/a;

    invoke-virtual {v2, p1}, Lcn/sharesdk/youdao/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    return-void
.end method
