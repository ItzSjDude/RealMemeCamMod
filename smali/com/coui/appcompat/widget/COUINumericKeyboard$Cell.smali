.class public Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
.super Ljava/lang/Object;
.source "COUINumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cell"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:F

.field e:I

.field f:I

.field final synthetic g:Lcom/coui/appcompat/widget/COUINumericKeyboard;


# virtual methods
.method public getColumn()I
    .locals 0

    .line 254
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->b:I

    return p0
.end method

.method public getRow()I
    .locals 0

    .line 246
    iget p0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->a:I

    return p0
.end method

.method public setCellNumberAlpha(F)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->d:F

    .line 263
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    return-void
.end method

.method public setCellNumberTranslateX(I)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->e:I

    .line 272
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    return-void
.end method

.method public setCellNumberTranslateY(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->f:I

    .line 281
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "row "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
