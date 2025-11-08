.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$6;
.super Ljava/lang/Object;
.source "COUIBottomSheetBehavior.java"

# interfaces
.implements Landroidx/core/h/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/h/a/d$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;I)V
    .locals 0

    .line 1909
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$6;->b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/h/a/g$a;)Z
    .locals 0

    .line 1912
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$6;->b:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget p0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$6;->a:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->b(I)V

    const/4 p0, 0x1

    return p0
.end method
