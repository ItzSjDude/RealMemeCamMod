.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroidx/core/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 3312
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/h/ad;)Landroidx/core/h/ad;
    .locals 0

    .line 3316
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWindowInsets(Landroidx/core/h/ad;)Landroidx/core/h/ad;

    move-result-object p0

    return-object p0
.end method
