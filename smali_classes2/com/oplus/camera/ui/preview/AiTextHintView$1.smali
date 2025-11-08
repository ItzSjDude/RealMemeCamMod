.class Lcom/oplus/camera/ui/preview/AiTextHintView$1;
.super Ljava/lang/Object;
.source "AiTextHintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/AiTextHintView;->a(IIIIILcom/oplus/camera/ui/CameraUIListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/AiTextHintView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/AiTextHintView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView$1;->a:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView$1;->a:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->a(Lcom/oplus/camera/ui/preview/AiTextHintView;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/AiTextHintView$1;->a:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/AiTextHintView;->a(Lcom/oplus/camera/ui/preview/AiTextHintView;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/AiTextHintView$1;->a:Lcom/oplus/camera/ui/preview/AiTextHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/AiTextHintView;->b(Lcom/oplus/camera/ui/preview/AiTextHintView;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/CameraUIListener;->a(I)V

    :cond_0
    return-void
.end method
