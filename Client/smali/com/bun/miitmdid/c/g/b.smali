.class public Lcom/bun/miitmdid/c/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/miitmdid/c/e/a;
.implements Lcom/bun/supplier/InnerIdSupplier;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private a:Lcom/bun/miitmdid/c/g/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private b:Lcom/bun/supplier/SupplierListener;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bun/supplier/SupplierListener;)V
    .registers 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bun/miitmdid/c/g/b;->b:Lcom/bun/supplier/SupplierListener;

    new-instance v0, Lcom/bun/miitmdid/c/g/a;

    invoke-direct {v0, p1, p0}, Lcom/bun/miitmdid/c/g/a;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V

    iput-object v0, p0, Lcom/bun/miitmdid/c/g/b;->a:Lcom/bun/miitmdid/c/g/a;

    return-void
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Z)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native b()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getAAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getUDID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getVAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native isSupported()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native shutDown()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
