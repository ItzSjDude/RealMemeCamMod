.class Landroidx/appcompat/app/l$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/core/h/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/l;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroidx/appcompat/app/l$3;->a:Landroidx/appcompat/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 164
    iget-object p0, p0, Landroidx/appcompat/app/l$3;->a:Landroidx/appcompat/app/l;

    iget-object p0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 165
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
