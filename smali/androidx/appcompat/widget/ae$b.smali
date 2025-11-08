.class Landroidx/appcompat/widget/ae$b;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ae;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ae;)V
    .locals 0

    .line 1344
    iput-object p1, p0, Landroidx/appcompat/widget/ae$b;->a:Landroidx/appcompat/widget/ae;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1349
    iget-object v0, p0, Landroidx/appcompat/widget/ae$b;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object p0, p0, Landroidx/appcompat/widget/ae$b;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ae;->a_()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1357
    iget-object p0, p0, Landroidx/appcompat/widget/ae$b;->a:Landroidx/appcompat/widget/ae;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ae;->b()V

    return-void
.end method
