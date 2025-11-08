.class Lcom/coui/appcompat/widget/COUIEditText$2;
.super Ljava/lang/Object;
.source "COUIEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/COUIEditText;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIEditText;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText$2;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText$2;->a:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUIEditText;->a(Lcom/coui/appcompat/widget/COUIEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
