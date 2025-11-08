.class public Lcom/coui/responsiveui/config/UIColumns;
.super Ljava/lang/Object;
.source "UIColumns.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/coui/responsiveui/config/UIColumns;->a:I

    .line 26
    iput p2, p0, Lcom/coui/responsiveui/config/UIColumns;->b:I

    return-void
.end method


# virtual methods
.method public getColumnWidthDp()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/coui/responsiveui/config/UIColumns;->b:I

    return p0
.end method

.method public getColumnsCount()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/coui/responsiveui/config/UIColumns;->a:I

    return p0
.end method

.method public setColumnWidthDp(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/coui/responsiveui/config/UIColumns;->b:I

    return-void
.end method

.method public setColumnsCount(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/coui/responsiveui/config/UIColumns;->a:I

    return-void
.end method
