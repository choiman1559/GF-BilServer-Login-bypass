.class public Lcn/sharesdk/facebookmessenger/a;
.super Ljava/lang/Object;
.source "FacebookMessengerHelper.java"


# static fields
.field private static a:Lcn/sharesdk/facebookmessenger/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/sharesdk/facebookmessenger/a;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcn/sharesdk/facebookmessenger/a;->a:Lcn/sharesdk/facebookmessenger/a;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcn/sharesdk/facebookmessenger/a;

    invoke-direct {v0}, Lcn/sharesdk/facebookmessenger/a;-><init>()V

    sput-object v0, Lcn/sharesdk/facebookmessenger/a;->a:Lcn/sharesdk/facebookmessenger/a;

    .line 26
    :cond_b
    sget-object v0, Lcn/sharesdk/facebookmessenger/a;->a:Lcn/sharesdk/facebookmessenger/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, ".bmp"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 49
    invoke-static {p1}, Lcom/mob/tools/utils/BitmapHelper;->getMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_75

    .line 53
    const/16 v1, 0x400

    new-array v3, v1, [B

    .line 54
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 57
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move v1, v2

    .line 59
    :goto_64
    const/4 v4, -0x1

    if-eq v1, v4, :cond_6f

    .line 60
    invoke-virtual {v6, v3, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 61
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_64

    .line 63
    :cond_6f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 64
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_75
    move-object p1, v0

    .line 68
    :cond_76
    return-object p1
.end method

.method public a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    iput-object p2, p0, Lcn/sharesdk/facebookmessenger/a;->b:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcn/sharesdk/facebookmessenger/a;->c:Lcn/sharesdk/framework/Platform;

    .line 32
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 21

    .prologue
    .line 37
    new-instance v0, Lcn/sharesdk/facebookmessenger/b;

    invoke-direct {v0}, Lcn/sharesdk/facebookmessenger/b;-><init>()V

    .line 38
    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/a;->c:Lcn/sharesdk/framework/Platform;

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/facebookmessenger/b;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p5}, Lcn/sharesdk/facebookmessenger/b;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 40
    invoke-virtual/range {v0 .. v9}, Lcn/sharesdk/facebookmessenger/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/facebookmessenger/b;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    return-void
.end method
