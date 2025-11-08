.class Lcom/oplus/camera/ui/preview/a/u$2;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/u;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/u;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/u;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u$2;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u$2;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;I)V

    return-void
.end method
