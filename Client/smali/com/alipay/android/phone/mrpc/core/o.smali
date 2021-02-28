.class public final Lcom/alipay/android/phone/mrpc/core/o;
.super Lcom/alipay/android/phone/mrpc/core/t;


# instance fields
.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/t;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/o;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lorg/apache/http/Header;)V
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alipay/android/phone/mrpc/core/o;->g:Z

    return-void
.end method

.method public final a([B)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/o;->c:[B

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->c:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->g:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/alipay/android/phone/mrpc/core/o;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/o;->c:[B

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/alipay/android/phone/mrpc/core/o;->c:[B

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/o;->c:[B

    iget-object v3, p1, Lcom/alipay/android/phone/mrpc/core/o;->c:[B

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, p1, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->f:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :cond_1f
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    if-nez v0, :cond_28

    const/4 v0, 0x0

    :goto_26
    add-int/2addr v0, v1

    return v0

    :cond_28
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_26
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Url : %s,HttpHeader: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/o;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/o;->e:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
