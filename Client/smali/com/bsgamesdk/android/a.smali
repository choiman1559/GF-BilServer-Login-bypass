.class public Lcom/bsgamesdk/android/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u672a\u8fde\u63a5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6ce8\u9500\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u672a\u767b\u5f55\u6216\u8005\u767b\u5f55\u5df2\u8fc7\u671f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0x1771

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u53d6\u6d88\u6ce8\u518c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0x1772

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u53d6\u6d88\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0x1b5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u67e5\u5355\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0x1b5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "uid\u4e0d\u7edf\u4e00,\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0x1f41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u524d\u8bf7\u5148\u8c03\u7528nofiyZone\u65b9\u6cd5\u901a\u77e5\u533a\u670d\uff0c\u5e76\u786e\u4fdd\u4e0e\u652f\u4ed8\u53c2\u6570\u76f8\u7b26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const v1, 0x16379

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5173\u95ed\u767b\u5165"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    const/16 v1, 0x7d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u8fd8\u672a\u8d2d\u4e70\u6b64\u6e38\u620f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bsgamesdk/android/a;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
