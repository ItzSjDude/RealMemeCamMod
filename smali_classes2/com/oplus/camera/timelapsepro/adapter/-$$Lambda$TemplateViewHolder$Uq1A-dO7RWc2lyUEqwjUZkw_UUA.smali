.class public final synthetic Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$TemplateViewHolder$Uq1A-dO7RWc2lyUEqwjUZkw_UUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$TemplateViewHolder$Uq1A-dO7RWc2lyUEqwjUZkw_UUA;->f$0:Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$TemplateViewHolder$Uq1A-dO7RWc2lyUEqwjUZkw_UUA;->f$0:Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->lambda$setItemTouchListener$0$TemplateViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
