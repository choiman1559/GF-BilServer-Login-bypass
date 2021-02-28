.class public Lcom/tencent/wetest/hook/Hooker;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "wetest"

    sput-object v0, Lcom/tencent/wetest/hook/Hooker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main()V
    .registers 2

    sget-object v0, Lcom/tencent/wetest/hook/Hooker;->TAG:Ljava/lang/String;

    const-string v1, "===>>enter injector!<<==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/wetest/Robot;->startAutomation()V

    sget-object v0, Lcom/tencent/wetest/hook/Hooker;->TAG:Ljava/lang/String;

    const-string v1, "===>>inject finish!<<==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
