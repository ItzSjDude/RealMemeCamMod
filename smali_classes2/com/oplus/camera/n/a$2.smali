.class Lcom/oplus/camera/n/a$2;
.super Ljava/lang/Object;
.source "PortraitCapMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/n/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/n/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/n/a;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/oplus/camera/n/a$2;->a:Lcom/oplus/camera/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const v0, 0x7f10047e

    if-ne v0, p1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/oplus/camera/n/a$2;->a:Lcom/oplus/camera/n/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;Z)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a/b;)V
    .locals 1

    .line 276
    iget p1, p1, Lcom/oplus/camera/ui/a/b;->a:I

    const v0, 0x7f10047e

    if-ne v0, p1, :cond_0

    .line 277
    iget-object p0, p0, Lcom/oplus/camera/n/a$2;->a:Lcom/oplus/camera/n/a;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;Z)Z

    :cond_0
    return-void
.end method
