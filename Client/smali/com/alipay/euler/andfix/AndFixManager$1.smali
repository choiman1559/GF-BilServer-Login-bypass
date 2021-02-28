.class Lcom/alipay/euler/andfix/AndFixManager$1;
.super Ljava/lang/ClassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/euler/andfix/AndFixManager;

.field final synthetic val$dexFile:Ldalvik/system/DexFile;


# direct methods
.method constructor <init>(Lcom/alipay/euler/andfix/AndFixManager;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/euler/andfix/AndFixManager$1;->this$0:Lcom/alipay/euler/andfix/AndFixManager;

    iput-object p3, p0, Lcom/alipay/euler/andfix/AndFixManager$1;->val$dexFile:Ldalvik/system/DexFile;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager$1;->val$dexFile:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v1, "com.alipay.euler.andfix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_14
    return-object v0

    :cond_15
    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
