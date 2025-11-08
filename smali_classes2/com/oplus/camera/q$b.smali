.class public Lcom/oplus/camera/q$b;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/q;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/q;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/oplus/camera/q$b;->a:Lcom/oplus/camera/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/q$b;->a:Lcom/oplus/camera/q;

    invoke-static {v0}, Lcom/oplus/camera/q;->a(Lcom/oplus/camera/q;)[Lcom/oplus/camera/q$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/q$b;->a:Lcom/oplus/camera/q;

    invoke-virtual {v0}, Lcom/oplus/camera/q;->c()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/q$b;->a:Lcom/oplus/camera/q;

    invoke-static {v0}, Lcom/oplus/camera/q;->e(Lcom/oplus/camera/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object p0, p0, Lcom/oplus/camera/q$b;->a:Lcom/oplus/camera/q;

    invoke-static {p0}, Lcom/oplus/camera/q;->f(Lcom/oplus/camera/q;)V

    :cond_0
    return-void
.end method
