.class final Landroidx/core/h/v$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/h/q;


# direct methods
.method constructor <init>(Landroidx/core/h/q;)V
    .locals 0

    .line 2480
    iput-object p1, p0, Landroidx/core/h/v$1;->a:Landroidx/core/h/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 2484
    invoke-static {p2}, Landroidx/core/h/ad;->a(Landroid/view/WindowInsets;)Landroidx/core/h/ad;

    move-result-object p2

    .line 2485
    iget-object p0, p0, Landroidx/core/h/v$1;->a:Landroidx/core/h/q;

    invoke-interface {p0, p1, p2}, Landroidx/core/h/q;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/h/ad;)Landroidx/core/h/ad;

    move-result-object p0

    .line 2486
    invoke-virtual {p0}, Landroidx/core/h/ad;->h()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
