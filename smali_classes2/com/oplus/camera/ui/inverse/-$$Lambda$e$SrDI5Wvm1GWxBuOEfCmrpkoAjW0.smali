.class public final synthetic Lcom/oplus/camera/ui/inverse/-$$Lambda$e$SrDI5Wvm1GWxBuOEfCmrpkoAjW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/e$c;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/inverse/e;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/inverse/e;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$SrDI5Wvm1GWxBuOEfCmrpkoAjW0;->f$0:Lcom/oplus/camera/ui/inverse/e;

    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$SrDI5Wvm1GWxBuOEfCmrpkoAjW0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$SrDI5Wvm1GWxBuOEfCmrpkoAjW0;->f$0:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$SrDI5Wvm1GWxBuOEfCmrpkoAjW0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ui/inverse/e;->lambda$startMaskScaleAnimation$7$e(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/InverseMaskView;)V

    return-void
.end method
