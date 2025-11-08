.class public final synthetic Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/menu/setting/j;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/menu/setting/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;->f$0:Lcom/oplus/camera/ui/menu/setting/j;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;->f$0:Lcom/oplus/camera/ui/menu/setting/j;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$j$gJqMt1VT08CVyMyJH7kPUoloYbg;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/j;->lambda$gJqMt1VT08CVyMyJH7kPUoloYbg(Lcom/oplus/camera/ui/menu/setting/j;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
