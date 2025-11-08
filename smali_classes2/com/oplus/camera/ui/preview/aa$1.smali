.class Lcom/oplus/camera/ui/preview/aa$1;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/aa;->a(Lcom/oplus/camera/gl/h;IIIILcom/oplus/camera/gl/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/aa;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/aa;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/aa$1;->a:Lcom/oplus/camera/ui/preview/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/aa$1;->a:Lcom/oplus/camera/ui/preview/aa;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/aa;->a(Lcom/oplus/camera/ui/preview/aa;)Lcom/oplus/camera/ui/preview/h$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/aa$1;->a:Lcom/oplus/camera/ui/preview/aa;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/aa;->a(Lcom/oplus/camera/ui/preview/aa;)Lcom/oplus/camera/ui/preview/h$d;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/h$d;->b()V

    :cond_0
    return-void
.end method
