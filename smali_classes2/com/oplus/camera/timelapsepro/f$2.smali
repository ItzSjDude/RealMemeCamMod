.class Lcom/oplus/camera/timelapsepro/f$2;
.super Ljava/lang/Object;
.source "TimeLapseProGuideLayout.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/f;-><init>(Landroid/content/Context;Lcom/oplus/camera/timelapsepro/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/oplus/camera/timelapsepro/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/f;Landroid/view/View;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f$2;->b:Lcom/oplus/camera/timelapsepro/f;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/f$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 87
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/f$2;->b:Lcom/oplus/camera/timelapsepro/f;

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/f;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f$2;->a:Landroid/view/View;

    const p2, 0x7f090135

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p2, -0x1

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
