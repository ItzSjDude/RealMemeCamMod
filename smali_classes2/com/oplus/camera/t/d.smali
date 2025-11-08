.class public Lcom/oplus/camera/t/d;
.super Landroid/widget/TextView;
.source "StreetHelperTextView.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/oplus/camera/t/d;->a:I

    .line 16
    iput-boolean p1, p0, Lcom/oplus/camera/t/d;->b:Z

    return-void
.end method


# virtual methods
.method public setVerticalDraw(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/oplus/camera/t/d;->b:Z

    return-void
.end method
