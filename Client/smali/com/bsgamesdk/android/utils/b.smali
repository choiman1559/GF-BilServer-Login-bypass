.class public Lcom/bsgamesdk/android/utils/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bsgamesdk/android/model/d;",
            ">;"
        }
    .end annotation
.end field

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 22

    const/4 v1, 0x0

    sput v1, Lcom/bsgamesdk/android/utils/b;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    new-instance v1, Lcom/bsgamesdk/android/model/d;

    const/4 v2, 0x1

    const-string v3, "\u4e2d\u56fd\u5927\u9646"

    const/16 v4, 0x56

    invoke-direct {v1, v2, v3, v4}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v2, Lcom/bsgamesdk/android/model/d;

    const/4 v3, 0x5

    const-string v4, "\u9999\u6e2f\u7279\u522b\u884c\u653f\u533a"

    const/16 v5, 0x354

    invoke-direct {v2, v3, v4, v5}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v3, Lcom/bsgamesdk/android/model/d;

    const/4 v4, 0x2

    const-string v5, "\u6fb3\u95e8\u7279\u522b\u884c\u653f\u533a"

    const/16 v6, 0x355

    invoke-direct {v3, v4, v5, v6}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v4, Lcom/bsgamesdk/android/model/d;

    const/4 v5, 0x3

    const-string v6, "\u53f0\u6e7e\u5730\u533a"

    const/16 v7, 0x376

    invoke-direct {v4, v5, v6, v7}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v5, Lcom/bsgamesdk/android/model/d;

    const/4 v6, 0x4

    const-string v7, "\u7f8e\u56fd"

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v6, Lcom/bsgamesdk/android/model/d;

    const/4 v7, 0x6

    const-string v8, "\u6bd4\u5229\u65f6"

    const/16 v9, 0x20

    invoke-direct {v6, v7, v8, v9}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v7, Lcom/bsgamesdk/android/model/d;

    const/4 v8, 0x7

    const-string v9, "\u6fb3\u5927\u5229\u4e9a"

    const/16 v10, 0x3d

    invoke-direct {v7, v8, v9, v10}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v8, Lcom/bsgamesdk/android/model/d;

    const/16 v9, 0x8

    const-string v10, "\u6cd5\u56fd"

    const/16 v11, 0x21

    invoke-direct {v8, v9, v10, v11}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v9, Lcom/bsgamesdk/android/model/d;

    const/16 v10, 0x9

    const-string v11, "\u52a0\u62ff\u5927"

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v10, Lcom/bsgamesdk/android/model/d;

    const/16 v11, 0xa

    const-string v12, "\u65e5\u672c"

    const/16 v13, 0x51

    invoke-direct {v10, v11, v12, v13}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v11, Lcom/bsgamesdk/android/model/d;

    const/16 v12, 0xb

    const-string v13, "\u65b0\u52a0\u5761"

    const/16 v14, 0x41

    invoke-direct {v11, v12, v13, v14}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v12, Lcom/bsgamesdk/android/model/d;

    const/16 v13, 0xc

    const-string v14, "\u97e9\u56fd"

    const/16 v15, 0x52

    invoke-direct {v12, v13, v14, v15}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v13, Lcom/bsgamesdk/android/model/d;

    const/16 v14, 0xd

    const-string v15, "\u9a6c\u6765\u897f\u4e9a"

    const/16 v16, 0x3c

    invoke-direct/range {v13 .. v16}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v14, Lcom/bsgamesdk/android/model/d;

    const/16 v15, 0xe

    const-string v16, "\u82f1\u56fd"

    const/16 v17, 0x2c

    invoke-direct/range {v14 .. v17}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v15, Lcom/bsgamesdk/android/model/d;

    const/16 v16, 0xf

    const-string v17, "\u610f\u5927\u5229"

    const/16 v18, 0x27

    invoke-direct/range {v15 .. v18}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v16, Lcom/bsgamesdk/android/model/d;

    const/16 v17, 0x10

    const-string v18, "\u5fb7\u56fd"

    const/16 v19, 0x31

    invoke-direct/range {v16 .. v19}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v17, Lcom/bsgamesdk/android/model/d;

    const/16 v18, 0x12

    const-string v19, "\u4fc4\u7f57\u65af"

    const/16 v20, 0x7

    invoke-direct/range {v17 .. v20}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    new-instance v18, Lcom/bsgamesdk/android/model/d;

    const/16 v19, 0x13

    const-string v20, "\u65b0\u897f\u5170"

    const/16 v21, 0x40

    invoke-direct/range {v18 .. v21}, Lcom/bsgamesdk/android/model/d;-><init>(ILjava/lang/String;I)V

    sget-object v19, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bsgamesdk/android/utils/b;->a:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
