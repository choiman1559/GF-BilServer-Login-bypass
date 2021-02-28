.class public Lcom/bsgamesdk/android/presenter/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/bsgamesdk/android/presenter/h;

.field private b:Lcom/bsgamesdk/android/presenter/f;


# direct methods
.method public constructor <init>(Lcom/bsgamesdk/android/presenter/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bsgamesdk/android/presenter/g;->a:Lcom/bsgamesdk/android/presenter/h;

    new-instance v0, Lcom/bsgamesdk/android/presenter/f;

    invoke-direct {v0}, Lcom/bsgamesdk/android/presenter/f;-><init>()V

    iput-object v0, p0, Lcom/bsgamesdk/android/presenter/g;->b:Lcom/bsgamesdk/android/presenter/f;

    return-void
.end method

.method static synthetic a(Lcom/bsgamesdk/android/presenter/g;)Lcom/bsgamesdk/android/presenter/h;
    .registers 2

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/g;->a:Lcom/bsgamesdk/android/presenter/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bsgamesdk/android/presenter/g;->a:Lcom/bsgamesdk/android/presenter/h;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    iget-object v0, p0, Lcom/bsgamesdk/android/presenter/g;->b:Lcom/bsgamesdk/android/presenter/f;

    new-instance v8, Lcom/bsgamesdk/android/presenter/g$1;

    invoke-direct {v8, p0}, Lcom/bsgamesdk/android/presenter/g$1;-><init>(Lcom/bsgamesdk/android/presenter/g;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/bsgamesdk/android/presenter/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/presenter/a;)V

    return-void
.end method
