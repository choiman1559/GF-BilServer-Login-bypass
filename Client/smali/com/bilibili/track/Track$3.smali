.class Lcom/bilibili/track/Track$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bilibili/deviceutils/utils/OaidUtil$OAidCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/track/Track;->getOaid(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/track/Track;


# direct methods
.method constructor <init>(Lcom/bilibili/track/Track;)V
    .registers 2

    iput-object p1, p0, Lcom/bilibili/track/Track$3;->this$0:Lcom/bilibili/track/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    :try_start_6
    invoke-static {}, Lcom/bilibili/track/Track;->access$500()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/track/Track$3;->this$0:Lcom/bilibili/track/Track;

    invoke-static {}, Lcom/bilibili/track/Track;->access$600()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/track/Track;->object:Ljava/lang/Object;

    :cond_14
    invoke-static {}, Lcom/bilibili/track/Track;->access$500()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getOaidCallBack"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/bilibili/track/Track$3;->this$0:Lcom/bilibili/track/Track;

    iget-object v1, v1, Lcom/bilibili/track/Track;->object:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-void

    :catch_38
    move-exception v0

    goto :goto_37
.end method
