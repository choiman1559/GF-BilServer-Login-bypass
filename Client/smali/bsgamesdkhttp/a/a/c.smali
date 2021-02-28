.class public final Lbsgamesdkhttp/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsgamesdkhttp/a/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Lbsgamesdkhttp/w;

.field public final b:Lbsgamesdkhttp/y;


# direct methods
.method constructor <init>(Lbsgamesdkhttp/w;Lbsgamesdkhttp/y;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsgamesdkhttp/a/a/c;->a:Lbsgamesdkhttp/w;

    iput-object p2, p0, Lbsgamesdkhttp/a/a/c;->b:Lbsgamesdkhttp/y;

    return-void
.end method

.method public static a(Lbsgamesdkhttp/y;Lbsgamesdkhttp/w;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lbsgamesdkhttp/y;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    :cond_8
    :goto_8
    return v0

    :sswitch_9
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lbsgamesdkhttp/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lbsgamesdkhttp/y;->i()Lbsgamesdkhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    invoke-virtual {p0}, Lbsgamesdkhttp/y;->i()Lbsgamesdkhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/d;->e()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lbsgamesdkhttp/y;->i()Lbsgamesdkhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/d;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_30
    :sswitch_30
    invoke-virtual {p0}, Lbsgamesdkhttp/y;->i()Lbsgamesdkhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/d;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lbsgamesdkhttp/w;->f()Lbsgamesdkhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lbsgamesdkhttp/d;->b()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_data_46
    .sparse-switch
        0xc8 -> :sswitch_30
        0xcb -> :sswitch_30
        0xcc -> :sswitch_30
        0x12c -> :sswitch_30
        0x12d -> :sswitch_30
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_30
        0x194 -> :sswitch_30
        0x195 -> :sswitch_30
        0x19a -> :sswitch_30
        0x19e -> :sswitch_30
        0x1f5 -> :sswitch_30
    .end sparse-switch
.end method
