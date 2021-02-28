.class public Lcom/alipay/sdk/util/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "content://com.alipay.android.app.settings.data.ServerProvider/current_server"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->isSandBox()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https://mobilegw.alipaydev.com/mgw.htm"

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    if-nez p0, :cond_e

    sget-object v0, Lcom/alipay/sdk/cons/a;->a:Ljava/lang/String;

    goto :goto_8

    :cond_e
    sget-object v0, Lcom/alipay/sdk/cons/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/alipay/sdk/cons/a;->a:Ljava/lang/String;

    goto :goto_8
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.alipay.android.app.settings.data.ServerProvider/current_server"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2d
    return-object v2
.end method
