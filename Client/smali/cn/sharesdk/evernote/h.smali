.class public Lcn/sharesdk/evernote/h;
.super Lcn/sharesdk/evernote/j;
.source "NotebookListParser.java"


# direct methods
.method public constructor <init>(Lcn/sharesdk/evernote/b;)V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcn/sharesdk/evernote/j;-><init>(Lcn/sharesdk/evernote/b;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v4, 0xc

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 14
    :goto_4
    iget-object v1, p0, Lcn/sharesdk/evernote/h;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v1}, Lcn/sharesdk/evernote/b;->d()[I

    move-result-object v1

    .line 15
    aget v2, v1, v0

    if-nez v2, :cond_10

    .line 61
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 19
    :cond_10
    aget v2, v1, v6

    packed-switch v2, :pswitch_data_da

    .line 57
    iget-object v2, p0, Lcn/sharesdk/evernote/h;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 21
    :pswitch_1d
    aget v2, v1, v0

    const/16 v3, 0xf

    if-ne v2, v3, :cond_49

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v2, p0, Lcn/sharesdk/evernote/h;->a:Lcn/sharesdk/evernote/b;

    invoke-virtual {v2}, Lcn/sharesdk/evernote/b;->g()[I

    move-result-object v2

    .line 25
    :goto_2e
    aget v3, v2, v6

    if-ge v0, v3, :cond_47

    .line 26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v4, Lcn/sharesdk/evernote/i;

    iget-object v5, p0, Lcn/sharesdk/evernote/h;->a:Lcn/sharesdk/evernote/b;

    invoke-direct {v4, v5}, Lcn/sharesdk/evernote/i;-><init>(Lcn/sharesdk/evernote/b;)V

    .line 28
    invoke-virtual {v4, v3}, Lcn/sharesdk/evernote/i;->a(Ljava/util/HashMap;)V

    .line 29
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_47
    move-object v0, v1

    .line 31
    goto :goto_f

    .line 33
    :cond_49
    iget-object v2, p0, Lcn/sharesdk/evernote/h;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto :goto_4

    .line 37
    :pswitch_51
    aget v2, v1, v0

    if-ne v2, v4, :cond_8c

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/h;->b(Ljava/util/HashMap;)V

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_8c
    iget-object v2, p0, Lcn/sharesdk/evernote/h;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 47
    :pswitch_95
    aget v2, v1, v0

    if-ne v2, v4, :cond_d0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-virtual {p0, v0}, Lcn/sharesdk/evernote/h;->c(Ljava/util/HashMap;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_d0
    iget-object v2, p0, Lcn/sharesdk/evernote/h;->a:Lcn/sharesdk/evernote/b;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Lcn/sharesdk/evernote/b;->a(I)V

    goto/16 :goto_4

    .line 19
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_51
        :pswitch_95
    .end packed-switch
.end method
