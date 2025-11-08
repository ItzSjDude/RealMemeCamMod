.class Lcom/oplus/camera/ui/preview/a/u$4;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/u;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/u;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/u;I)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u$4;->b:Lcom/oplus/camera/ui/preview/a/u;

    iput p2, p0, Lcom/oplus/camera/ui/preview/a/u$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$4;->b:Lcom/oplus/camera/ui/preview/a/u;

    iget p0, p0, Lcom/oplus/camera/ui/preview/a/u$4;->a:I

    invoke-static {v0, p0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;I)V

    return-void
.end method
