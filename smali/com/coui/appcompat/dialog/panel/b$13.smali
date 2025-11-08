.class Lcom/coui/appcompat/dialog/panel/b$13;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$13;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 519
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_0

    return v0

    .line 521
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_1

    .line 522
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$13;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/f;->e()V

    .line 524
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$13;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->k(Lcom/coui/appcompat/dialog/panel/b;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;IZLandroid/animation/Animator$AnimatorListener;)V

    return v1
.end method
