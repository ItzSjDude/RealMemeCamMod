.class public Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
.super Ljava/lang/Object;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellState"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field public e:F

.field public f:F

.field public g:Landroid/animation/ValueAnimator;

.field h:F

.field i:F

.field j:F

.field k:F

.field l:Z

.field m:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 280
    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->e:F

    .line 284
    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->f:F

    return-void
.end method


# virtual methods
.method public setCellDrawListener(Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->m:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    return-void
.end method

.method public setCellNumberAlpha(F)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->d:F

    .line 312
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->m:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    invoke-interface {p0}, Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;->a()V

    return-void
.end method

.method public setCellNumberTranslateX(I)V
    .locals 0

    int-to-float p1, p1

    .line 329
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->b:F

    .line 330
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->m:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    invoke-interface {p0}, Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;->a()V

    return-void
.end method

.method public setCellNumberTranslateY(I)V
    .locals 0

    int-to-float p1, p1

    .line 320
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->a:F

    .line 321
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->m:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    invoke-interface {p0}, Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;->a()V

    return-void
.end method
