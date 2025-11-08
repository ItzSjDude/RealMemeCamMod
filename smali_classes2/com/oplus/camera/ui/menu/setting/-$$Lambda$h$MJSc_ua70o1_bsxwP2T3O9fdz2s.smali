.class public final synthetic Lcom/oplus/camera/ui/menu/setting/-$$Lambda$h$MJSc_ua70o1_bsxwP2T3O9fdz2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/menu/setting/h;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/menu/setting/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$h$MJSc_ua70o1_bsxwP2T3O9fdz2s;->f$0:Lcom/oplus/camera/ui/menu/setting/h;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$h$MJSc_ua70o1_bsxwP2T3O9fdz2s;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$h$MJSc_ua70o1_bsxwP2T3O9fdz2s;->f$0:Lcom/oplus/camera/ui/menu/setting/h;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$h$MJSc_ua70o1_bsxwP2T3O9fdz2s;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/h;->lambda$MJSc_ua70o1_bsxwP2T3O9fdz2s(Lcom/oplus/camera/ui/menu/setting/h;Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
