.class public Landroidx/appcompat/widget/n;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Landroidx/core/h/u;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroidx/appcompat/widget/e;

.field private final c:Landroidx/appcompat/widget/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 55
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/n;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    sget v0, Landroidx/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 71
    invoke-static {p1}, Landroidx/appcompat/widget/ao;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/widget/n;->a:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/ar;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ar;

    move-result-object p1

    .line 75
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ar;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/n;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/ar;->b()V

    .line 80
    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    .line 81
    iget-object p1, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    .line 83
    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/v;

    .line 84
    iget-object p1, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/v;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->a(Landroid/util/AttributeSet;I)V

    .line 85
    iget-object p0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/v;

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->b()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 168
    iget-object v0, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()V

    .line 171
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/v;

    if-eqz p0, :cond_1

    .line 172
    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 133
    iget-object p0, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 161
    iget-object p0, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 186
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/k;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object p0, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 96
    iget-object p0, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 118
    iget-object p0, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 146
    iget-object p0, p0, Landroidx/appcompat/widget/n;->b:Landroidx/appcompat/widget/e;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 178
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 179
    iget-object p0, p0, Landroidx/appcompat/widget/n;->c:Landroidx/appcompat/widget/v;

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
