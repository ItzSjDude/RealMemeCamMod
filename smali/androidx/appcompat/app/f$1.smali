.class Landroidx/appcompat/app/f$1;
.super Ljava/lang/Object;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/core/h/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/appcompat/app/f$1;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/appcompat/app/f$1;->a:Landroidx/appcompat/app/f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
